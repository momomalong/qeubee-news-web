package com.pats.qeubeenewsweb.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import com.baomidou.mybatisplus.extension.activerecord.Model;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Builder;
import lombok.Data;
import lombok.EqualsAndHashCode;
import org.apache.ibatis.type.Alias;

import java.time.LocalDateTime;

/**
 * <p>
 * 首页热词
 * </p>
 *
 * @author qintai.ma
 * @since 2020-08-26
 */
@Alias(value = "HomeHotword")
@Data
@EqualsAndHashCode(callSuper = true)
@TableName(value = "qb_news_home_hotword", resultMap = "hotwordLabelMap")
@ApiModel(value = "HomeHotword对象", description = "首页热词")
@Builder
public class HomeHotword extends Model<HomeHotword> {

    private static final long serialVersionUID = 640630460410570594L;

    @ApiModelProperty(value = "Id")
    @TableId(value = "id", type = IdType.AUTO)
    private Integer id;

    @ApiModelProperty(value = "关联标签id")
    @TableField("label_id")
    private Integer labelId;

    @ApiModelProperty(value = "热词归类 news: 舆情  bulletin: 公告")
    @TableField("scope")
    private String scope;

    @ApiModelProperty(value = "0:系统创建（默认）  1：用户创建")
    @TableField("type")
    private Integer type;

    @ApiModelProperty(value = "热词归类 news: 舆情  bulletin: 公告")
    @TableField("order_num")
    private Integer orderNum;


    @TableField("create_time")
    private LocalDateTime createTime;
    @TableField("update_time")
    private LocalDateTime updateTime;

    /**
     * 标签名称
     */
    private String labelName;


}
