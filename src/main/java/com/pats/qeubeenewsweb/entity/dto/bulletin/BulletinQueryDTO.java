package com.pats.qeubeenewsweb.entity.dto.bulletin;

import java.util.List;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

/**
 * <p>Title: BulletinQueryDTO</p>
 * <p>Description: 公告查询参数DTO</p>
 * 
 * @author :wenjie.pei
 * @since  :2020.08.17
 * @version :1.0.0
 */
@ApiModel(value = "公告查询对象")
@Data
public class BulletinQueryDTO {
    
    /**
     * 公告id列表
     */
    @ApiModelProperty(value = "id列表")
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
     * 关注组公告id列表
     */
    @ApiModelProperty(value = "关注组 公告id列表")
    private List<Integer> concernGroup;

    /**
     * 方案组公告id列表
     */
    @ApiModelProperty(value = "方案组 公告id列表")
    private List<Integer> schemas;
    
    /**
     * 合规性 默认为true
     */
    @ApiModelProperty(value = "合规性：默认true", example = "1")
    private Integer compliance = 1;

}