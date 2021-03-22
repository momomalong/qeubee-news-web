package com.pats.qeubeenewsweb.entity;

import com.baomidou.mybatisplus.annotation.TableName;
import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableField;
import java.io.Serializable;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
import lombok.EqualsAndHashCode;

/**
 * <p>
 * 相关发行人绑定关系
 * </p>
 *
 * @author qintai.ma
 * @since 2020-08-26
 */
@Data
@EqualsAndHashCode(callSuper = false)
@TableName("qb_news_bulletin_com_ref")
@ApiModel(value="QbNewsBulletinComRef对象", description="相关发行人绑定关系")
public class BulletinComRef implements Serializable {

    private static final long serialVersionUID = 1L;

    @ApiModelProperty(value = "Id")
    @TableId(value = "id", type = IdType.AUTO)
    private Integer id;

    @ApiModelProperty(value = "公告id")
    @TableField("bulletin_id")
    private Integer bulletinId;

    @ApiModelProperty(value = "发行人id")
    @TableField("com_id")
    private String comId;

    @ApiModelProperty(value = "发行人名称")
    @TableField("name")
    private String name;

    @ApiModelProperty(value = "图标")
    @TableField("icons")
    private String icons;

    @ApiModelProperty(value = "评级")
    @TableField("levels")
    private String levels;

    @ApiModelProperty(value = "性质")
    @TableField("nature")
    private String nature;

    @ApiModelProperty(value = "流动性")
    @TableField("liquidity")
    private String liquidity;


}
