package com.pats.qeubeenewsweb.entity.dto.apidto;

import com.alibaba.fastjson.annotation.JSONField;
import lombok.Data;

/**
 * api请求返回机构评级实体
 * 获取发行人评分、发行人评分等级字段（score、scoreLevel）
 *
 * @author :mqt
 * @version :1.0.0
 * @since :2020.10.20
 */
@Data
public class QbwebLiqudityStatisticIssuerScoreDTO {

    /**
     * 机构code
     */
    @JSONField(name = "issuerCode")
    private String issuerCode;
    /**
     * 发行人评分
     */
    @JSONField(name = "score")
    private String score;
    /**
     * 评分等级
     */
    @JSONField(name = "scoreLevel")
    private String scoreLevel;
    /**
     * 1:信用债  2：CDN债
     */
    @JSONField(name = "issuerType")
    private String issuerType;
}
