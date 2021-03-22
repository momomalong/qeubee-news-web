package com.pats.qeubeenewsweb.entity.dto.label;

import java.io.Serializable;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

/**
 * <p>Title: LabelGroupQueryDTO</p>
 * <p>Description: 标签组查询DTO</p>
 * 
 * @author :wenjie.pei
 * @since  :2020.10.23
 * @version :1.0.0
 */
@ApiModel("标签组查询DTO类")
@Data
public class LabelGroupQueryDTO implements Serializable {

    private static final long serialVersionUID = -562484937255044751L;

    /**
     * 新闻类别
     */
    @ApiModelProperty(value = "新闻类别:news,bulletin")
    private String scope;

    /**
     * 标签类别id
     */
    @ApiModelProperty(value = "标签类别id")
    private Integer nameId;

    /**
     * 标签类别名称
     */
    @ApiModelProperty(value = "标签类别名称")
    private String name;

    /**
     * 标签名称
     */
    @ApiModelProperty(value = "标签名称")
    private String labelName;
    
    /**
     * 类别是否显示
     */
    @ApiModelProperty(value = "显示/不显示 的标签类别")
    private Integer classify;

    /**
     * 标签是否显示
     */
    @ApiModelProperty(value = "显示/不显示 的标签")
    private Integer labelClassify;
    
}
