package com.pats.qeubeenewsweb.entity.dto.label;

import java.io.Serializable;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

/**
 * <p>Title: LabelGroupDTO</p>
 * <p>Description: 标签组DTO</p>
 * 
 * @author :wenjie.pei
 * @since  :2020.10.23
 * @version :1.0.0
 */
@ApiModel("标签组检索结果DTO")
@Data
public class LabelGroupDTO implements Serializable {

    private static final long serialVersionUID = 7852943792074359857L;

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
     * 类别是否显示
     */
    @ApiModelProperty(value = "显示/不显示 的标签类别")
    private Integer classify;

    /**
     * 标签是否显示
     */
    @ApiModelProperty(value = "显示/不显示 的标签")
    private Integer labelClassify;

    /**
     * 标签组(格式：标签名称_id_是否显示)
     */
    @ApiModelProperty(value = "标签列表")
    private String tag;

}
