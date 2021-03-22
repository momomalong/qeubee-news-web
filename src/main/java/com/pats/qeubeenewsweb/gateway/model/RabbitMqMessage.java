package com.pats.qeubeenewsweb.gateway.model;

import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Set;

/**
 * Created by yinghong.xu on 2019/4/26
 */
@Data
@NoArgsConstructor
public class RabbitMqMessage {

	private String type = "filter";

	private String token;

	private Set<String> filters;

	public RabbitMqMessage(String token, Set<String> filters) {
		this.token = token;
		this.filters = filters;
	}

}
