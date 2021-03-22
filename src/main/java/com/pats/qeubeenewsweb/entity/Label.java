package com.pats.qeubeenewsweb.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import com.baomidou.mybatisplus.extension.activerecord.Model;

import lombok.*;
import org.apache.ibatis.type.Alias;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

import java.time.LocalDateTime;

/**
 * <p>
 * 标签表
 * </p>
 *
 * @author qintai.ma
 * @since 2020-09-01
 */
@Alias(value = "Label")
@Data
@EqualsAndHashCode(callSuper = true)
@TableName("qb_news_label")
@ApiModel(value = "Label对象", description = "标签表")
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class Label extends Model<Label> {

    private static final long serialVersionUID = 1L;

    @ApiModelProperty(value = "标签id")
    @TableId(value = "id", type = IdType.AUTO)
    private Integer id;

    @ApiModelProperty(value = "标签名称")
    @TableField("name")
    private String name;

    @ApiModelProperty(value = "标签分类")
    @TableField("type_id")
    private Integer typeId;

    @ApiModelProperty(value = "标签所属新闻类别。 news: 舆情 bulletin：公告")
    @TableField("scope")
    private String scope;

    @ApiModelProperty(value = "标签类别归类 1: filter settings(筛选设置类标签) 2: 债市标签")
    @TableField("classify")
    private Integer classify;

    @ApiModelProperty(value = "新建时间")
    @TableField("create_time")
    private LocalDateTime createTime;

    @ApiModelProperty(value = "更新时间")
    @TableField("update_time")
    private LocalDateTime updateTime;


}
