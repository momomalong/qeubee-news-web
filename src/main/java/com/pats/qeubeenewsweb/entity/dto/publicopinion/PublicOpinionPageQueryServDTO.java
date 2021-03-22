package com.pats.qeubeenewsweb.entity.dto.publicopinion;

import com.pats.qeubeenews.common.dto.PageInfo;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.ToString;

import java.util.List;

/**
 * <p>Title: PublicOpinionPageQueryDTO</p>
 * <p>Description: 舆情分页查询DTO</p>
 *
 * @author :wenjie.pei
 * @version :1.0.0
 * @since :2020.08.17
 */
@ApiModel(value = "舆情分页查询对象")
@Data
@EqualsAndHashCode(callSuper = true)
@ToString(callSuper = true)
public class PublicOpinionPageQueryServDTO extends PageInfo {

    private static final long serialVersionUID = 7650935179128800816L;

    /**
     * 舆情id列表
     */
    @ApiModelProperty(value = "舆情id列表")
    private List<Integer> id;

    /**
     * 搜索关键字
     */
    @ApiModelProperty(value = "搜索关键字")
    private String keyword;

    /**
     * 开始日期
     */
    @ApiModelProperty(value = "开始日期", example = "2020-01-01")
    private String startDate;

    /**
     * 结束日期
     */
    @ApiModelProperty(value = "结束日期", example = "2020-02-02")
    private String endDate;

    /**
     * 标签id列表
     */
    @ApiModelProperty(value = "标签id列表")
    private List<Integer> label;

    /**
     * 关注组舆情id列表
     */
    @ApiModelProperty(value = "关注组 舆情id列表")
    private List<String> concernGroup;

    /**
     * 方案组舆情id列表
     */
    @ApiModelProperty(value = "方案组 舆情id列表")
    private List<String> schemas;

    /**
     * 合规性 默认为true
     */
    @ApiModelProperty(value = "合规性：默认true", example = "1")
    private Integer compliance = 1;

    /**
     * 新闻来源
     */
    @ApiModelProperty(value = "新闻来源")
    private String source;

    /**
     * 行业
     */
    @ApiModelProperty(value = "行业")
    List<String> industry;

    /**
     * 地区
     */
    @ApiModelProperty(value = "地区")
    List<String> issuerProvince;
}