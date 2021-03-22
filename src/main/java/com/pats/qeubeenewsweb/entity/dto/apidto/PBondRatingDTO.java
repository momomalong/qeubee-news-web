package com.pats.qeubeenewsweb.entity.dto.apidto;

import com.alibaba.fastjson.annotation.JSONField;
import lombok.Data;

/**
 * @author Hzy
 * @version 1.0
 * @since 2020/12/14
 */
@Data
public class PBondRatingDTO {

    @JSONField(name = "Bond_key")
    private String bondKey;

    /**
     * 评级日期
     */
    @JSONField(name = "Rating_Date")
    private String ratingDate;


    /**
     * 债项评级
     */
    @JSONField(name = "Bond_Rating")
    private String bondRating;
}
