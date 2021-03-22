package com.pats.qeubeenewsweb.gateway.model;

import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.ToString;

import java.util.HashSet;
import java.util.Set;

import com.pats.qeubeenewsweb.gateway.enums.SubscribeType;

/**
 * Created by yinghong.xu on 2019/4/26 gatewayToken 没有失效概念
 */
@EqualsAndHashCode(callSuper = true)
@Data
@ToString(callSuper = true)
public class SubscriptionCondition extends LoginInfo {

	private static final long serialVersionUID = 1L;
	/**
	 * 订阅类型
	 */
	private SubscribeType subscribeType;

	/**
	 * 发送网关的消息类型
	 */
	private String rabbitMsgType;

	/**
	 * 订阅过滤条件1
	 */
	public Set<String> firstFilterKeys = new HashSet<>();

	/**
	 * 订阅过滤条件2
	 */
	public Set<String> secondFilterKeys = new HashSet<>();

	// 不需要太复杂，目前没有异常订阅多种类型的需求
	// /**
	// * 订阅不同类型消息条件
	// * key =订阅发送网关消息类型 value=过滤条件
	// */
	// private Map<String, RedisFilter> filterMap;

}
