package com.pats.qeubeenewsweb.entity;

import com.baomidou.mybatisplus.annotation.TableName;
import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.extension.activerecord.Model;
import com.baomidou.mybatisplus.annotation.TableId;

import java.time.LocalDateTime;

import com.baomidou.mybatisplus.annotation.TableField;

import java.io.Serializable;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
import lombok.EqualsAndHashCode;

/**
 * <p>
 * 舆情句子情绪表
 * </p>
 *
 * @author Hzy
 * @since 2020-12-22
 */
@Data
@EqualsAndHashCode(callSuper = true)
@TableName("qb_news_po_sentence_mood")
@ApiModel(value = "QbNewsPoSentenceMood对象", description = "舆情句子情绪表")
public class QbNewsPoSentenceMood extends Model<QbNewsPoSentenceMood> {

    private static final long serialVersionUID = 1L;

    @ApiModelProperty(value = "主键id")
    @TableId(value = "id", type = IdType.AUTO)
    private Integer id;

    @ApiModelProperty(value = "舆情id")
    @TableField("public_opinion_id")
    private Integer publicOpinionId;

    @ApiModelProperty(value = "句子内容")
    @TableField("content")
    private String content;

    @ApiModelProperty(value = "情绪值")
    @TableField("mood")
    private Integer mood;

    @ApiModelProperty(value = "新建时间")
    @TableField("create_time")
    private LocalDateTime createTime;

    @ApiModelProperty(value = "更新时间")
    @TableField("update_time")
    private LocalDateTime updateTime;


    @Override
    protected Serializable pkVal() {
        return this.id;
    }

}
