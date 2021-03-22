package com.pats.qeubeenewsweb.entity.dto.publicopinion;

import com.pats.qeubeenewsweb.entity.PublicOpinion;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
import lombok.EqualsAndHashCode;

import java.util.List;
import java.util.Map;

/**
 * <p>Title: PublicOpinionDetailsDTO</p>
 * <p>Description: 舆情详情DTO</p>
 *
 * @author :wenjie.pei
 * @version :1.0.0
 * @since :2020.08.17
 */
@ApiModel(value = "舆情详情DTO")
@Data
@EqualsAndHashCode(callSuper = true)
public class PublicOpinionDetailsDTO extends PublicOpinionDTO {

    private static final long serialVersionUID = -8744917377999452130L;

    /**
     * 摘要
     */
    @ApiModelProperty(value = "摘要")
    private String summary;

    /**
     * 新闻内容
     */
    @ApiModelProperty(value = "新闻内容")
    private String content;

    /**
     * 发行人详细信息
     */
    @ApiModelProperty(value = "发行人详细信息")
    private String mainBodyDetail;

    /**
     * 关联发行人详细信息
     */
    @ApiModelProperty(value = "关联发行人详细信息")
    private List<Map<String, Object>> mentionComDetail;

    /**
     * 关联舆情
     */
    @ApiModelProperty(value = "关联舆情")
    private List<PublicOpinion> refPublicOpinion;

}