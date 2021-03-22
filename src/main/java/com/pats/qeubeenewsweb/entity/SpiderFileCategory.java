package com.pats.qeubeenewsweb.entity;

import com.baomidou.mybatisplus.annotation.TableName;
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
 * @author Hzy
 * @since 2021-01-08
 */
@Data
@EqualsAndHashCode(callSuper = false)
@TableName("spider_file_category")
@ApiModel(value="SpiderFileCategory对象", description="")
public class SpiderFileCategory extends Model<SpiderFileCategory> {

    private static final long serialVersionUID = 1L;

    @TableId("id")
    private String id;

    @TableField("pid")
    private String pid;

    @TableField("code")
    private String code;

    @TableField("name")
    private String name;

    @TableField("seq")
    private Integer seq;

    @TableField("create_time")
    private LocalDateTime createTime;

    @TableField("modify_time")
    private LocalDateTime modifyTime;

    @TableField("delflag")
    private String delflag;

    @ApiModelProperty(value = "分类规则")
    @TableField("rule")
    private String rule;

    @ApiModelProperty(value = "权重")
    @TableField("weight")
    private Integer weight;


    @Override
    protected Serializable pkVal() {
        return this.id;
    }

}
