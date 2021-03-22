package com.pats.qeubeenewsweb.entity.dto.rankinglist;

import java.io.Serializable;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

/**
 * <p>title: RankingListNewsServDTO</p>
 * <p>Description: 舆情阅读排行传输数据DTO类</p>
 * 
 * @author :wenjie.pei
 * @since  :2020.09.01
 */
@ApiModel(value = "舆情排行DTO类")
@Data
public class RankingListNewsServDTO implements Serializable {

    private static final long serialVersionUID = -429977240151928490L;

    /**
     * 舆情排行id
     */
    @ApiModelProperty(value = "id")
    private Integer id;

    /**
     * 舆情id
     */
    @ApiModelProperty(value = "舆情id")
    private Integer publicOpinionId;

    /**
     * 舆情标题
     */
    @ApiModelProperty(value = "标题")
    private String title;

    /**
     * 排行
     */
    @ApiModelProperty(value = "sort")
    private Integer sort;

    /**
     * 阅读量
     */
    @ApiModelProperty(value = "阅读量")
    private Long readingAmount;

    /**
     * 时间维度
     */
    @ApiModelProperty(value = "时间维度")
    private String timeDimension;

    /**
     * 阅读排行数据类型(statistics: 自动排行, manual: 手动排行)
     */
    @ApiModelProperty(value = "排行数据类型(statistics: 自动, manual: 手动)", allowableValues = "statistics,manual")
    private String type;

    
}