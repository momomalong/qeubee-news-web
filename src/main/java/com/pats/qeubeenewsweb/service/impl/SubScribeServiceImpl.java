package com.pats.qeubeenewsweb.service.impl;

import com.google.common.collect.Sets;
import com.pats.qeubeenewsweb.consts.AppConst;
import com.pats.qeubeenewsweb.entity.dto.BaseSubConditionDTO;
import com.pats.qeubeenewsweb.enums.RabbitMqMsgType;
import com.pats.qeubeenewsweb.gateway.enums.SubscribeType;
import com.pats.qeubeenewsweb.gateway.model.SubscriptionCondition;
import com.pats.qeubeenewsweb.gateway.service.SubscriptionServiceI;
import com.pats.qeubeenewsweb.service.SubScribeService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.Assert;

/**
 * Created by jupeng.wang on @date 2020/9/1.
 */
@Service
public class SubScribeServiceImpl implements SubScribeService {
    @Autowired
    private SubscriptionServiceI subscriptionService;

    public boolean subScribeNews(BaseSubConditionDTO baseSubCondition, String userId) {
        SubscriptionCondition subCondition = baseSubCondition.build();
        subCondition.setRabbitMsgType(RabbitMqMsgType.SUB_NEWS.getFilter());
        RabbitMqMsgType mqMsgType = RabbitMqMsgType.getRabbitMqMsgType(baseSubCondition.getSubscribeType());
        Assert.notNull(mqMsgType, "订阅类型不正确");
        if (RabbitMqMsgType.SUB_NEWS == mqMsgType) {
            subCondition.setSubscribeType(SubscribeType.Subscribe);
            subCondition.setFirstFilterKeys(Sets.newHashSet(AppConst.SUB_ANY_KEY));
            subCondition.setSecondFilterKeys(Sets.newHashSet(AppConst.SUB_ANY_KEY));
        } else if (RabbitMqMsgType.UNSUB_NEWS == mqMsgType) {
            subCondition.setSubscribeType(SubscribeType.UnSubscribe);
        } else {
            throw new IllegalArgumentException(
                    "Not support SubscribeType " + baseSubCondition.getSubscribeType());
        }
        return subscriptionService.subscribe(subCondition);
    }
}
