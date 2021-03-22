package com.pats.qeubeenewsweb.entity.dto;

import java.util.List;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

/**
 * <p>Title: PageDTO</p>
 * <p>Description: 分页数据DTO类</p>
 * 
 * @author :wenjie.pei
 * @since  :2020.09.11
 * @version :1.0.0
 */
@ApiModel(value = "分页DTO类")
@Data
public class PageDTO<T> {

    /**
     * 记录
     */
    @ApiModelProperty(value = "记录")
    private List<T> records;

    /**
     * 记录总量
     */
    @ApiModelProperty(value = "总数据量")
    private Long total;

    /**
     * 每页数据量
     */
    @ApiModelProperty(value = "每夜数据量")
    private Long size;

    /**
     * 当前页码
     */ 
    @ApiModelProperty(value = "当前页码")
    private Long current;

    /**
     * 总页数
     */
    @ApiModelProperty(value = "总页数")
    private Long pages;
    
}
