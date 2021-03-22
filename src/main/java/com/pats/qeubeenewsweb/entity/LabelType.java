package com.pats.qeubeenewsweb.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
import lombok.EqualsAndHashCode;

import java.io.Serializable;
import java.time.LocalDateTime;

/**
 * <p>
 * 新闻标签分类表
 * </p>
 *
 * @author qintai.ma
 * @since 2020-09-01
 */
@Data
@EqualsAndHashCode(callSuper = false)
@TableName("qb_news_label_type")
@ApiModel(value = "LabelType对象", description = "新闻标签分类表")
public class LabelType implements Serializable {

    private static final long serialVersionUID = 1L;

    @ApiModelProperty(value = "标签类型id")
    @TableId(value = "id", type = IdType.AUTO)
    private Integer id;

    @ApiModelProperty(value = "标签所属新闻类别。 news: 舆情 bulletin：公告")
    @TableField("scope")
    private String scope;

    @ApiModelProperty(value = "标签类别名称")
    @TableField("name")
    private String name;

    @ApiModelProperty(value = "标签类别归类 1: filter settings(筛选设置类标签) 2: 债市标签")
    @TableField("classify")
    private Integer classify;

    @ApiModelProperty(value = "新建时间")
    @TableField("create_time")
    private LocalDateTime createTime;

    @ApiModelProperty(value = "修改时间")
    @TableField("update_time")
    private LocalDateTime updateTime;

}
