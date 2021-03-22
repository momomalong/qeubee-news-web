package com.pats.qeubeenewsweb.entity.dto;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

import javax.validation.constraints.NotBlank;

import com.pats.qeubeenewsweb.gateway.model.SubscriptionCondition;

import java.io.Serializable;

/**
 * @author pats
 */
@ApiModel(value = "订阅基本参数")
@Data
public class BaseSubConditionDTO implements Serializable {

    private static final long serialVersionUID = -8336045203798389093L;

    @ApiModelProperty(value = "用户Id", required = true)
    @NotBlank(message = "用户Id不可空")
    private String userId;

    @ApiModelProperty(value = "网关token", required = true)
    @NotBlank(message = "网关token不可空")
    private String gatewayToken;

    @ApiModelProperty(value = "订阅类型[SUB_NEWS, UNSUB_NEWS]")
    private String subscribeType;

    public SubscriptionCondition build() {
        SubscriptionCondition sub = new SubscriptionCondition();
        sub.setGatewayToken(gatewayToken);
        sub.setUserId(userId);
        return sub;
    }
}
