package com.pats.qeubeenewsweb.entity.dto.apidto;

import com.alibaba.fastjson.annotation.JSONField;
import lombok.Data;

/**
 * <p>评分评级(单卷流动性)DTO</p>
 *
 * @author Hzy
 * @version 1.0.0
 * @since 2021/1/14
 */
@Data
public class SdbCdcBondValuationDTO {

    /**
     * 债券key
     */
    @JSONField(name = "bondKey")
    private String bondKey;

    /**
     * 债券市场
     */
    @JSONField(name = "listedMarket")
    private String listedMarket;

    /**
     * 单卷流动性指标
     */
    @JSONField(name = "bondScore")
    private String bondScore;

    /**
     * 单卷流动性评级
     */
    @JSONField(name = "bondScoreLevel")
    private String bondScoreLevel;
}
