package com.pats.qeubeenewsweb.entity.bo;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;

/**
 * @author : qintai.ma
 * @since : create in 2020/8/18 17:23
 * @version :1.0.0
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
@ApiModel("标签批量新增返回实体类")
public class LabelInsertBatchResponseBO implements Serializable {

    private static final long serialVersionUID = 1L;

    /**
     * id
     */
    @ApiModelProperty("标签id")
    private Integer id;

    /**
     * 新增标签名
     */
    @ApiModelProperty("新增标签名")
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
