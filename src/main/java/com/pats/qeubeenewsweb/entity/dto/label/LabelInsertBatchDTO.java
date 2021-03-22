package com.pats.qeubeenewsweb.entity.dto.label;

import com.pats.qeubeenewsweb.entity.Label;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

/**
 * 标签批量新增实体类
 * @author :qintai.ma
 * @version :1.0.0
 * @since :2020.08.18
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
@ApiModel("标签批量新增实体类")
public class LabelInsertBatchDTO implements Serializable {

    private static final long serialVersionUID = 1L;

    /**
     * 标签类型id
     */
    @ApiModelProperty(value = "标签类型id", required = true)
    private Integer type;

    /**
     * 新建标签名称
     */
    @ApiModelProperty(value = "新建标签名称", required = true)
    private List<String> labels;

    /**
     * 标签所属范围
     * 可选项：news: 舆情 bulletin：公告 null: 全查
     */
    @ApiModelProperty(value = "标签所属范围  可选项：news: 舆情 bulletin：公告 null: 全查")
    private String scope;

    /**
     * 标签类别归类
     * 0: filter settings(筛选设置类标签) 1: 债市标签
     */
    @ApiModelProperty(value = "标签类别归类 0: filter settings(筛选设置类标签) 1: 债市标签 ", required = true)
    private Integer classify;

    /**
     * @return 转为对应domian实体类
     */
    public List<Label> ofQbNewsLabelEntityBuilder() {
        List<Label> list = new ArrayList<>();
        labels.forEach(e -> list.add(Label.builder()
            .name(e)
            .typeId(type)
            .scope(scope)
            .classify(classify)
            .createTime(LocalDateTime.now())
            .updateTime(LocalDateTime.now())
            .build())
        );
        return list;
    }

}
