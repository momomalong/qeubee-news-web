package com.pats.qeubeenewsweb.gateway.model;

import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.Data;
import lombok.ToString;

import java.io.Serializable;

/**
 * Created by yinghong.xu on 2019/4/26 调用登录模块成功后 Nodejs 会自动携带这些个参数
 */
@Data
@ToString
public class LoginInfo implements Serializable {
	private static final long serialVersionUID = 1L;
	@JsonProperty(value = "access_token")
	private String accessToken;

	@JsonProperty(value = "token_client_id")
	private String tokenClientId;

	@JsonProperty(value = "token_username")
	private String tokenUsername;

	private String session;

	private String userId;

	private String gatewayToken;

}
