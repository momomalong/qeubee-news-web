package com.pats.qeubeenewsweb.entity.dto.rankinglist;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

import java.io.Serializable;

/**
 * <p>Title: RankingListDTO</p>
 * <p>Description: 舆情排行返回类型</p>
 * 
 * @author :wenjie.pei
 * @since  :2020.08.17
 * @version :1.0.0
 */
@ApiModel(value = "舆情排行新闻")
@Data
public class RankingListNewsDTO implements Serializable {
    private static final long serialVersionUID = 1L;

    /**
     * id
     */
    @ApiModelProperty(value = "新闻id", example = "1")
    private Integer id;

    /**
     * 舆情id
     */
    @ApiModelProperty(value = "舆情id")
    private Integer publicOpinionId;

    /**
     * 标题
     */
    @ApiModelProperty(value = "新闻标题")
    private String title;

    /**
     * 排序
     */
    @ApiModelProperty(value = "排序")
    private Integer sort;

    /**
     * 阅读量
     */
    @ApiModelProperty(value = "阅读量")
    private Long readingAmount;

    /**
     * 时间维度
     */
    @ApiModelProperty(value = "时间维度", example = "day", allowableValues = "day,week,month")
    private String timeDimension;

    /**
     * 阅读排行数据类型(statistics: 自动排行, manual: 手动排行)
     */
    @ApiModelProperty(value = "排行数据类型(statistics: 自动排行, manual: 手动排行)", 
        example = "manual", 
        allowableValues = "statistics,manual")
    private String type;

}