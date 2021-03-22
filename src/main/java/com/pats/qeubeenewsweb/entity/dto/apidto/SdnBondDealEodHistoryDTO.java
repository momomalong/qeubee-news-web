package com.pats.qeubeenewsweb.entity.dto.apidto;

import com.alibaba.fastjson.annotation.JSONField;
import com.pats.qeubeenewsweb.consts.ApiDtoConsts;
import com.pats.qeubeenewsweb.utils.LocalDateTimeUtils;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.time.LocalDateTime;

/**
 * @author mqt
 * @version 1.0
 * @date 2021/1/25 17:36
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
public class SdnBondDealEodHistoryDTO {


    /**
     * BondKey
     */
    @JSONField(name = ApiDtoConsts.BOND_KEY1)
    private String bondKey;

    /**
     * 市场
     */
    @JSONField(name = ApiDtoConsts.LISTED_MARKET1)
    private String listedMarket;

    /**
     * 成交时间
     */
    @JSONField(name = ApiDtoConsts.MARKET_DATA_TIME, format = LocalDateTimeUtils.DATE_TIME2)
    private LocalDateTime marketDataTime;

    /**
     * 成交价
     */
    @JSONField(name = ApiDtoConsts.TRADE_PRICE)
    private String tradePrice;

    /**
     * 成交方式
     */
    @JSONField(name = ApiDtoConsts.TRADE_METHOD)
    private String tradeMethod;
}
