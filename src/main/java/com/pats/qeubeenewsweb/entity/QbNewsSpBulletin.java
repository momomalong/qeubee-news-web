package com.pats.qeubeenewsweb.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;

import java.io.Serializable;
import java.time.LocalDateTime;

/**
 * <p>
 *
 * </p>
 *
 * @author mqt
 * @since 2020-09-19
 */
@Data
@EqualsAndHashCode(callSuper = false)
@ApiModel(value = "QbNewsSpBulletin对象", description = "")
@AllArgsConstructor
@NoArgsConstructor
@TableName("qb_news_sp_bulletin")
public class QbNewsSpBulletin implements Serializable {

    private static final long serialVersionUID = 1L;

    @ApiModelProperty(value = "主键id")
    @TableId(value = "id", type = IdType.AUTO)
    private Integer id;

    @ApiModelProperty(value = "标题")
    @TableField("title")
    private String title;

    @TableField("file_name")
    @ApiModelProperty(value = "文件名称")
    private String fileName;

    @TableField("path")
    @ApiModelProperty(value = "解析的HTML")
    private String path;

    @TableField("url")
    @ApiModelProperty(value = "原始下载链接")
    private String url;

    @TableField("bond")
    @ApiModelProperty(value = "公告涉及债券")
    private String bond;

    @TableField("news_id")
    @ApiModelProperty(value = "原文ID")
    private String newsId;

    @TableField("compliance")
    @ApiModelProperty(value = "合规性    0: 不合规 1: 合规     默认: 1: 合规")
    private Integer compliance;

    @TableField("create_time")
    @ApiModelProperty(value = "新增时间")
    private LocalDateTime createTime;

    @TableField("update_time")
    @ApiModelProperty(value = "修改时间")
    private LocalDateTime updateTime;

    @TableField("file_id")
    @ApiModelProperty(value = "文件id")
    private String fileId;

    @TableField("upload_file_id")
    @ApiModelProperty(value = "文件ID")
    private Integer uploadFileId;

    @TableField("source")
    @ApiModelProperty(value = "资源")
    private String source;

    @TableField("content")
    @ApiModelProperty(value = "内容")
    private String content;

    @TableField("institution_code")
    @ApiModelProperty(value = "机构code")
    private String institutionCode;

    @TableField("bulletin_id")
    @ApiModelProperty(value = "公告ID")
    private String bulletinId;

    @TableField("issuer_name")
    @ApiModelProperty(value = "发行人")
    private String issuerName;

    @TableField("cate_code2")
    @ApiModelProperty(value = "公告类型")
    private String cateCode2;
}
