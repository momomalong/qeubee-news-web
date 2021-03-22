package com.pats.qeubeenewsweb.entity.dto.apidto;

import com.alibaba.fastjson.annotation.JSONField;
import lombok.Data;

/**
 * api请求返回债券实体
 *
 * @author :mqt
 * @version :1.0.0
 * @since :2020.10.20
 */
@Data
public class Bond2DTO {

    /**
     * 主体评级
     */
    @JSONField(name = "Issuer_Rating_Current")
    private String issuerRatingCurrent;
    /**
     * 机构code
     */
    @JSONField(name = "Issuer_Code")
    private String issuerCode;
    /**
     * 债券业务唯一标识（但出现了多个的情况）
     */
    @JSONField(name = "Bond_Key")
    private String bondKey;
    /**
     * bondSubtype和entCor下划线拼接组成bond_type
     */
    @JSONField(name = "Bond_Subtype")
    private String bondSubtype;
    @JSONField(name = "Ent_Cor")
    private String entCor;

    @JSONField(name = "Bond_ID")
    private String bondId;

    /**
     * 债卷利率
     */
    @JSONField(name = "Coupon_Rate_Current")
    private String couponRateCurrent;
}
