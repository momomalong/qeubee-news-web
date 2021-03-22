package com.pats.qeubeenewsweb.entity.dto.publicopinion;

import java.util.List;

import com.pats.qeubeenews.common.dto.SysBaseDTO;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.ToString;

/**
 * <p>Title: PublicOpinionDTO</p>
 * <p>Description: 舆情新闻返回类型</p>
 * 
 * @author :wenjie.pei
 * @since  :2020.08.17
 * @version :1.0.0
 */
@ApiModel(value = "舆情新闻对象")
@Data
@EqualsAndHashCode(callSuper = true)
@ToString(callSuper = true)
public class PublicOpinionServDTO extends SysBaseDTO {

    private static final long serialVersionUID = -8555964164948150689L;

    /**
     * 舆情标题
     */
    @ApiModelProperty(value = "舆情标题")
    private String title;

    /**
     * 舆情涉及债券类型
     */
    @ApiModelProperty(value = "舆情涉及债券类型")
    private String bondType;

    /**
     * 风险类型
     */
    @ApiModelProperty(value = "风险等级")
    private String risk;

    /**
     * 新闻来源
     */
    @ApiModelProperty(value = "新闻来源")
    private String source;

    /**
     * 涉及主体
     */
    @ApiModelProperty(value = "涉及主体")
    private String mainBody;

    /**
     * 涉及债券
     */
    @ApiModelProperty(value = "涉及证券")
    private String refBond;

    /**
     * 提及企业
     */
    @ApiModelProperty(value = "提及企业")
    private String mentionCom;

    /**
     * 标签列表
     */
    @ApiModelProperty(value = "标签列表")
    private List<Integer> labels;

    /**
     * 作者
     */
    @ApiModelProperty(value = "作者")
    private String author;

    /**
     * 合规性
     */
    @ApiModelProperty(value = "合规性", example = "true")
    private Integer compliance;

}