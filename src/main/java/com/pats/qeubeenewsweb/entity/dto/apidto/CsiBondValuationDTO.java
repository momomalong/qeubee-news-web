package com.pats.qeubeenewsweb.entity.dto.apidto;

import com.alibaba.fastjson.annotation.JSONField;
import lombok.Data;

/**
 * <P>中正估值DTO</P>
 * @author Hzy
 * @since 2021/1/14
 * @version 1.0.0
 */
@Data
public class CsiBondValuationDTO {

    /**
     * 债卷键
     */
    @JSONField(name = "Bond_Key")
    private String  bondKey;

    /**
     * 中证估值
     */
    @JSONField(name = "Yield_To_Maturity")
    private String yieldToMaturity;
}
