package com.pats.qeubeenewsweb.entity.dto.apidto;

import com.alibaba.fastjson.annotation.JSONField;
import lombok.Data;

/**
 * <p>中债估值</p>
 *
 * @author Hzy
 * @version 1.0.0
 * @since 2021/1/14
 */
@Data
public class CdcBondValuationDTO {

    /**
     * 债卷键
     */
    @JSONField(name = "Bond_Key")
    private String bondKey;

    /**
     * 债券市场
     */
    @JSONField(name = "Listed_Market")
    private String listedMarket;

    /**
     * 估值
     */
    @JSONField(name = "Val_Yield")
    private String valYield;
}
