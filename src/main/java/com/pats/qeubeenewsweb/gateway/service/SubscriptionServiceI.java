package com.pats.qeubeenewsweb.gateway.service;

import com.pats.qeubeenewsweb.gateway.model.SubscriptionCondition;

/**
 * Created by yinghong.xu on 2019/4/26
 */
public interface SubscriptionServiceI {

	boolean subscribe(SubscriptionCondition subscriptionCondition);

}
