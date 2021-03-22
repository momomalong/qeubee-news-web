package com.pats.qeubeenewsweb.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import com.baomidou.mybatisplus.extension.activerecord.Model;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
import lombok.EqualsAndHashCode;

import java.time.LocalDateTime;

/**
 * <p>
 *
 * </p>
 *
 * @author qintai.ma
 * @since 2020-08-25
 */
@Data
@EqualsAndHashCode(callSuper = false)
@TableName("qb_news_bulletin")
@ApiModel(value = "QbNewsBulletin对象", description = "公告")
public class Bulletin extends Model<Bulletin> {

    private static final long serialVersionUID = 1L;

    @ApiModelProperty(value = "公告id")
    @TableId(value = "id", type = IdType.AUTO)
    private Integer id;

    @ApiModelProperty(value = "公告标题")
    @TableField("title")
    private String title;

    @ApiModelProperty(value = "摘要")
    @TableField("summary")
    private String summary;

    @ApiModelProperty(value = "内容")
    @TableField("content")
    private String content;

    @ApiModelProperty(value = "作者")
    @TableField("author")
    private String author;

    @ApiModelProperty(value = "资讯来源")
    @TableField("source")
    private String source;

    @ApiModelProperty(value = "资讯原文地址")
    @TableField("url")
    private String url;

    @ApiModelProperty(value = "关联债券")
    @TableField("refer_bond")
    private String referBond;

    @ApiModelProperty(value = "债券code")
    @TableField("bond_code")
    private String bondCode;

    @ApiModelProperty(value = "债券TYPE")
    @TableField("bond_type")
    private String bondType;

    @ApiModelProperty(value = "债券ID")
    @TableField("bond_id")
    private String bondId;

    @ApiModelProperty(value = "发行人id")
    @TableField("main_body")
    private String mainBody;

    @ApiModelProperty(value = "关联发行人id")
    @TableField("mention_com")
    private String mentionCom;

    @ApiModelProperty(value = "资讯附件地址")
    @TableField("attachment")
    private String attachment;

    @ApiModelProperty(value = "合规性 0: 不合规 1: 合规,  默认合规")
    @TableField("compliance")
    private Integer compliance;

    @ApiModelProperty(value = "新建时间")
    @TableField("create_time")
    private LocalDateTime createTime;

    @ApiModelProperty(value = "编辑时间")
    @TableField("update_time")
    private LocalDateTime updateTime;


}
