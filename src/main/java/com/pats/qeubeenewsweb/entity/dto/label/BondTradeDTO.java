package com.pats.qeubeenewsweb.entity.dto.label;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * @author mqt
 * @version 1.0
 * @date 2021/1/26 11:24
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
@ApiModel("债券交易数据DTO")
public class BondTradeDTO {

    /**
     * 成交时间
     */
    @ApiModelProperty("成交时间")
    private String marketDataTime;

    /**
     * 成交价
     */
    @ApiModelProperty("成交价")
    private String tradePrice;

    /**
     * 成交方式 BondTradeMethodEnum
     */
    @ApiModelProperty("成交方式 BondTradeMethodEnum")
    private String tradeMethod;
}
