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
 * 
 * </p>
 *
 * @author mqt
 * @since 2020-12-04
 */
@Data
@EqualsAndHashCode(callSuper = true)
@TableName("hongan_article_stock_relation")
@ApiModel(value="HonganArticleStockRelation对象", description="")
public class HonganArticleStockRelation extends Model<HonganArticleStockRelation> {

    private static final long serialVersionUID = 1L;

    @ApiModelProperty(value = "自增ID")
    @TableId(value = "id", type = IdType.AUTO)
    private Integer id;

    @ApiModelProperty(value = "文章ID")
    @TableField("news_id")
    private String newsId;

    @ApiModelProperty(value = "关联id")
    @TableField("related_id")
    private Integer relatedId;

    @ApiModelProperty(value = "关联名称")
    @TableField("related_name")
    private String relatedName;

    @ApiModelProperty(value = "类型")
    @TableField("type")
    private String type;

    @ApiModelProperty(value = "状态:0 正常,1 撤回")
    @TableField("status")
    private Integer status;

    @ApiModelProperty(value = "创建时间")
    @TableField("create_time")
    private LocalDateTime createTime;

    @ApiModelProperty(value = "数据修改时间")
    @TableField("modified_time")
    private LocalDateTime modifiedTime;


    @Override
    protected Serializable pkVal() {
        return this.id;
    }

}
