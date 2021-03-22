package com.pats.qeubeenewsweb.gateway.service;
/**
 * Created by yinghong.xu on 2019/4/26
 */

import com.fasterxml.jackson.databind.ObjectMapper;
import com.google.common.collect.Sets;
import com.pats.qeubeenewsweb.exception.QbException;
import com.pats.qeubeenewsweb.gateway.enums.SubscribeType;
import com.pats.qeubeenewsweb.gateway.model.LoginInfo;
import com.pats.qeubeenewsweb.gateway.model.RabbitMqMessage;
import com.pats.qeubeenewsweb.gateway.model.RedisFilter;
import com.pats.qeubeenewsweb.gateway.model.SubscriptionCondition;
import lombok.extern.slf4j.Slf4j;
import org.apache.commons.lang.StringUtils;
import org.springframework.amqp.rabbit.core.RabbitTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.data.redis.core.StringRedisTemplate;
import org.springframework.stereotype.Service;
import org.springframework.util.Assert;
import org.springframework.util.CollectionUtils;

import javax.annotation.PostConstruct;
import javax.annotation.PreDestroy;
import java.util.HashSet;
import java.util.Set;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.TimeUnit;

@Slf4j
@Service
public class SubscriptionServiceImpl implements SubscriptionServiceI {

    private final ObjectMapper mapper = new ObjectMapper();

    private ExecutorService executorService;

    @Value("${spring.application.constants.names.gateway-exchange-name}")
    private String gateWayExchangeName;

    @Autowired
    private StringRedisTemplate stringRedisTemplate;

    @Autowired
    private RabbitTemplate rabbitTemplate;

    private static long redisTimeOut = 3000;

    @PostConstruct
    public void init() {
        createExecutorService();
    }

    @Override
    public boolean subscribe(SubscriptionCondition condition) {
        Assert.hasText(condition.getRabbitMsgType(),
            "Parameter 'rabbitMsgType' can not be null or empty");
        Assert.hasText(condition.getGatewayToken(),
            "Parameter 'gatewayToken' can not be null or empty");

        if (condition.getSubscribeType() == SubscribeType.Subscribe
            && CollectionUtils.isEmpty(condition.firstFilterKeys)
            && CollectionUtils.isEmpty(condition.secondFilterKeys)) {
            throw new IllegalArgumentException("订阅时两个过滤条件不可都为空");
        }
//		if (!checkAccessToken(condition)) {
//			log.info("User {} ({}) access_token is invalid,please re login first.",
//					condition.getUserId(), condition.getTokenUsername());
//			throw new RuntimeException();
//		}
        try {
            String filterKey = getFilterRedisKey(condition.getGatewayToken(),
                condition.getRabbitMsgType());

            RedisFilter redisFilter = new RedisFilter(condition.firstFilterKeys,
                condition.secondFilterKeys);
            RedisFilter oldFilter = getFilterFromRedis(filterKey);

            switch (condition.getSubscribeType()) {
                case Subscribe:
                    if (!redisFilter.compare(oldFilter)) {
                        stringRedisTemplate.opsForValue().set(filterKey,
                            mapper.writeValueAsString(redisFilter), redisTimeOut,
                            TimeUnit.SECONDS);
                        notifyGateWay(condition,
                            Sets.newHashSet(condition.getRabbitMsgType()));
                    } else {
                        log.info("Repeat subscription: user={}, rabitMsgType:{}",
                            condition.getUserId(), condition.getRabbitMsgType());
                    }
                    return true;
                case UnSubscribe:
                    if (!notInRedis(filterKey)) {
                        stringRedisTemplate.delete(filterKey);
                        notifyGateWay(condition,
                            Sets.newHashSet(condition.getRabbitMsgType()));
                    } else {
                        log.info("Repeat cancel subscription: user:{}, rabitMsgType:{}",
                            condition.getUserId(), condition.getRabbitMsgType());
                    }
                    return true;
                default:
                    log.error("Not support SubscribeType={}, user:{}, rabitMsgType:{}",
                        condition.getSubscribeType(), condition.getUserId(),
                        condition.getRabbitMsgType());
                    return false;
            }

        } catch (Exception e) {
            log.error(e.getLocalizedMessage(), e);
            throw new QbException(QbException.SERVER_ERROR_CODE, e.getLocalizedMessage());
        }
    }

    /**
     * 检查登录token有效性，没必要检查，因为Nodejs检测到token失效会自动重新生成的
     *
     * @param loginInfo
     * @return
     */
//	private boolean checkAccessToken(LoginInfo loginInfo) {
//		return true;
//	}
    public boolean notifyGateWay(LoginInfo loginInfo, Set<String> rabbitMsgTypes) {
        executorService.execute(() -> {
            try {
                byte[] msg = mapper.writeValueAsBytes(
                    new RabbitMqMessage(loginInfo.getGatewayToken(), rabbitMsgTypes));
                rabbitTemplate.convertAndSend(gateWayExchangeName, "", msg);
                log.info(
                    "User {}[{} , {}]sent out filter update notification for session : type=[{}]",
                    loginInfo.getTokenUsername(), loginInfo.getGatewayToken(),
                    loginInfo.getUserId(), StringUtils.join(rabbitMsgTypes, ","));
                log.debug("User {} notifyGateWay : type=[{}]", loginInfo,
                    StringUtils.join(rabbitMsgTypes, ","));
            } catch (Exception e) {
                log.error("User {} failed to send message to gateway.Message:{}",
                    StringUtils.join(rabbitMsgTypes, ","), e.getMessage());
            }
        });
        return true;
    }

    /**
     * 获取指定消息类型存储的key
     *
     * @param gwToken         token
     * @param rabbitMqMsgType type
     * @return key
     */
    private String getFilterRedisKey(String gwToken, String rabbitMqMsgType) {
        // return Constants.REDIS_DATA_PREFIX + rabbitMqMsgType + ":" + gwToken;
        return "cdh:webbond:filter:" + rabbitMqMsgType + ":" + gwToken;
    }

    private RedisFilter getFilterFromRedis(String filterKey) throws Exception {
        RedisFilter filter;
        String filterValue = stringRedisTemplate.opsForValue().get(filterKey);
        if (StringUtils.isBlank(filterValue)) {
            filter = new RedisFilter(new HashSet<>(), new HashSet<>());
        } else {
            filter = mapper.readValue(filterValue, RedisFilter.class);
        }
        return filter;
    }

    /**
     * 是否在缓存中
     *
     * @param filterKey key
     * @return
     */
    private boolean notInRedis(String filterKey) {
        return StringUtils.isBlank(stringRedisTemplate.opsForValue().get(filterKey));
    }

    private void createExecutorService() {
        int num = 5;
        executorService = Executors.newFixedThreadPool(num);
    }

    @PreDestroy
    public void shutdownThreadPool() {
        if (executorService != null) {
            executorService.shutdown();
            log.info("Destroy fixedThreadPool ... ");
        }
    }

}