package com.pats.qeubeenewsweb.schedule;

import com.pats.qeubeenewsweb.consts.RedisCacheNamesConst;
import com.pats.qeubeenewsweb.consts.TreadExecutorConfigConst;
import com.pats.qeubeenewsweb.service.IQbNewsLabelBondIssuerInfoService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.scheduling.annotation.Async;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

import javax.annotation.Resource;
import java.util.concurrent.TimeUnit;

/**
 * @author mqt
 * @version 1.0
 * @date 2021/1/29 16:18
 */
@Component
@Slf4j
public class ProcessDetailBondsSchedule {

    @Autowired
    private IQbNewsLabelBondIssuerInfoService bondIssuerInfoService;

    @Resource
    private RedisTemplate<String, Object> redisTemplate;

    /**
     * 缓存更新bond信息（缓存五点45更新，需要在其后）
     */
    @Async(TreadExecutorConfigConst.THREAD_POOL_NAME_SCHEDULE)
    @Scheduled(cron = "0 0 6 * * ?")
    public void processDetailBonds() {
        Boolean aBoolean = redisTemplate.opsForValue()
            .setIfAbsent(RedisCacheNamesConst.REFRESH_BOND_CACHE, 1, 1L, TimeUnit.HOURS);
        if (aBoolean == null || !aBoolean) {
            return;
        }
        log.info("start process Detail Bonds-----------------------------");
        bondIssuerInfoService.processDetailBonds();
        log.info("end process Detail Bonds-----------------------------");
    }
}
