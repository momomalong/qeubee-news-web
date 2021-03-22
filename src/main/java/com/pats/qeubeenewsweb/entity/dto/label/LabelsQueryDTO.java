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
@Data
@AllArgsConstructor
@NoArgsConstructor
@ApiModel("获取标签列表 参数实体类")
public class LabelsQueryDTO implements Serializable {

    private static final long serialVersionUID = 1L;
    @ApiModelProperty("标签所属范围 可选项：news: 舆情 bulletin：公告 null: 全查")
    private String scope;

    @ApiModelProperty("标签名, null时,不包含该过滤条件")
    private String name;

    @ApiModelProperty(value = "标签类别归类 0: filter settings(筛选设置类标签) 1: 债市标签", required = true)
    private Integer classify;
}
