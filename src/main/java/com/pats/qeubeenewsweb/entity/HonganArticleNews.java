package com.pats.qeubeenewsweb.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableName;
import com.baomidou.mybatisplus.extension.activerecord.Model;
import com.baomidou.mybatisplus.annotation.TableId;
import java.time.LocalDateTime;
import java.io.Serializable;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
import lombok.EqualsAndHashCode;

/**
 * <p>
 * 
 * </p>
 *
 * @author mqt
 * @since 2020-12-03
 */
@Data
@EqualsAndHashCode(callSuper = true)
@ApiModel(value="HonganArticleNews对象", description="")
@TableName("hongan_article_news")
public class HonganArticleNews extends Model<HonganArticleNews> {

    private static final long serialVersionUID = 1L;

    @ApiModelProperty(value = "自增id")
    @TableId(value = "id", type = IdType.AUTO)
    private Integer id;

    @ApiModelProperty(value = "资讯原始ID")
    private String newsId;

    @ApiModelProperty(value = "内容标题")
    private String title;

    @ApiModelProperty(value = "资讯正文")
    private String content;

    @ApiModelProperty(value = "文章发布日期")
    private String date;

    @ApiModelProperty(value = "文章发布时间")
    private String time;

    @ApiModelProperty(value = "资讯来源栏目名称")
    private String source;

    @ApiModelProperty(value = "资讯正负面 (正面 : Positive 负面 : Negative 中性 : Neutral)")
    private String nature;

    @ApiModelProperty(value = "资讯摘要")
    private String summary;

    @ApiModelProperty(value = "资讯源原文地址")
    private String url;

    @ApiModelProperty(value = "状态:0 正常,1 撤回")
    private Integer status;

    @ApiModelProperty(value = "创建时间")
    private LocalDateTime createTime;

    @ApiModelProperty(value = "数据修改时间")
    private LocalDateTime modifiedTime;


    @Override
    protected Serializable pkVal() {
        return this.id;
    }

}
