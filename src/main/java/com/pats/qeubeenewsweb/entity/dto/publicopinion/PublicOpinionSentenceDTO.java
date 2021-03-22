package com.pats.qeubeenewsweb.entity.dto.publicopinion;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

/**
 * <p>Title: PublicOpinionSentenceDTO</p>
 *
 * @author : Hzy
 * @since  : 2020.12.21
 * @version : 1.0.0
 */
@ApiModel(value = "舆情句子情绪DTO类")
@Data
public class PublicOpinionSentenceDTO {

    /**
     * 情绪句子
     */
    @ApiModelProperty(value = "情绪句子")
    private String sentence;

    /**
     * 情绪值
     */
    @ApiModelProperty(value = "情绪值", example = "50")
    private Integer score;

}
