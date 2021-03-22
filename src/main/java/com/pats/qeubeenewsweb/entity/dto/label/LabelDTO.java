package com.pats.qeubeenewsweb.entity.dto.label;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

import java.io.Serializable;

/**
 * <p>Title: LabelDTO</p>
 * 
 * @author :wenjie.pei
 * @since  :2020.08.17
 * @version :1.0.0
 */
@ApiModel(value = "标签DTO类")
@Data
public class LabelDTO implements Serializable {

    private static final long serialVersionUID = 1L;

    /**
     * 标签id
     */
    @ApiModelProperty(value = "标签id", example = "1")
    private Integer id;

    /**
     * 标签名称
     */
    @ApiModelProperty(value = "标签名称")
    private String name;
    
}