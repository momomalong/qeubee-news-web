package com.pats.qeubeenewsweb.entity.dto.label;

import com.pats.qeubeenewsweb.entity.Label;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;
import java.util.List;

/**
 * @author :Hzy
 * @version :1.0.0
 * @since :2020.08.18
 */
@ApiModel("标签和标签类型详情类")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class LabelAndLabelTypeDTO implements Serializable {

    private static final long serialVersionUID = 1L;

    /**
     * 标签类型id
     */
    @ApiModelProperty("标签类型id")
    private Integer id;

    /**
     * 标签类别
     */
    @ApiModelProperty("标签所属范围 可选项：news: 舆情 bulletin：公告 null:")
    private String scope;

    /**
     * 标签名称
     */
    @ApiModelProperty(value = "标签名称", required = true)
    private String name;

    /**
     * 标签类别归类
     * 0: filter settings(筛选设置类标签) 1: 债市标签
     */
    @ApiModelProperty(value = "标签类别归类 0: filter settings(筛选设置类标签) 1: 债市标签 ", required = true)
    private Integer classify;

    /**
     * 标签集
     */
    private List<Label> labels;
}
