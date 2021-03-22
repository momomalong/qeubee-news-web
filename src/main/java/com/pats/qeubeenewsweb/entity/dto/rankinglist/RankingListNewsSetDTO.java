package com.pats.qeubeenewsweb.entity.dto.rankinglist;

import java.util.List;

import com.pats.qeubeenews.common.dto.SysBaseDTO;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
import lombok.EqualsAndHashCode;

/**
 * <p>Title: RankingListNewsSetDTO</p>
 * <p>Description: 舆情排行编辑DTO</p>
 * 
 * @author :wenjie.pei
 * @since  :2020.08.17
 * @version :1.0.0
 */
@ApiModel(value = "舆情排行编辑DTO")
@Data
@EqualsAndHashCode(callSuper = true)
public class RankingListNewsSetDTO extends SysBaseDTO {

    private static final long serialVersionUID = -6658211785218049055L;

    /**
     * 待修改、删除 舆情id列表
     */
    @ApiModelProperty(value = "待编辑、删除 舆情id列表")
    private List<Integer> ids;

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