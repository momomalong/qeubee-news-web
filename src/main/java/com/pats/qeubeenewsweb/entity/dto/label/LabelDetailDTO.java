package com.pats.qeubeenewsweb.entity.dto.label;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;

/**
 * @author :qintai.ma
 * @version :1.0.0
 * @since :2020.08.18
 */
@ApiModel("标签详情类")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class LabelDetailDTO implements Serializable {

    private static final long serialVersionUID = 1L;
    /**
     * id
     */
    @ApiModelProperty("id")
    private Integer id;

    /**
     * 标签类别
     */
    @ApiModelProperty("标签类别")
    private Integer typeId;

    /**
     * 标签名称
     */
    @ApiModelProperty("标签名称")
    private String name;

    /**
     * 标签所属新闻范围
     */
    @ApiModelProperty("标签所属新闻范围")
    private String scope;

    /**
     * 标签类别归类
     */
    @ApiModelProperty("标签类别归类")
    private Integer classify;
}
