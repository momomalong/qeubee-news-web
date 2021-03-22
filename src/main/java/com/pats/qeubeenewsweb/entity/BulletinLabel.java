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
 * 公告标签、绑定关系
 * </p>
 *
 * @author qintai.ma
 * @since 2020-08-26
 */
@Data
@EqualsAndHashCode(callSuper = false)
@TableName("qb_news_bulletin_label")
@ApiModel(value = "QbNewsBulletinLabel对象", description = "公告标签、绑定关系")
public class BulletinLabel implements Serializable {

	private static final long serialVersionUID = 1L;

	@ApiModelProperty(value = "Id")
	@TableId(value = "id", type = IdType.AUTO)
	private Integer id;

	@ApiModelProperty(value = "公告id")
	@TableField("bulletin_id")
	private Integer bulletinId;

	@ApiModelProperty(value = "标签id")
	@TableField("label_id")
	private Integer labelId;

	@TableField(exist = false)
	private String labelName;

	@ApiModelProperty(value = "新建时间")
	@TableField("create_time")
	private LocalDateTime createTime;

	@ApiModelProperty(value = "更新时间")
	@TableField("update_time")
	private LocalDateTime updateTime;

}
