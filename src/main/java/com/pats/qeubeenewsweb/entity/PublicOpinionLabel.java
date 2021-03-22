package com.pats.qeubeenewsweb.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import com.baomidou.mybatisplus.extension.activerecord.Model;
import com.pats.qeubeenewsweb.consts.DataBaseSourceConst;
import com.pats.qeubeenewsweb.consts.EntitySourceConst;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
import lombok.EqualsAndHashCode;
import org.apache.ibatis.type.Alias;

import java.time.LocalDateTime;

/**
 * <p>Title: PublicOpinionLabel</p>
 * <p>Description: 舆情标签对应表</p>
 *
 * @author :wenjie.pei
 * @version :1.0.0
 * @since :2020.08.20
 */
@Alias(value = EntitySourceConst.ENTITY_PUBLIC_OPINION_LABEL)
@Data
@EqualsAndHashCode(callSuper = true)
@TableName(value = DataBaseSourceConst.TBL_QB_NEWS_PUBLIC_OPINIO_LABEL)
public class PublicOpinionLabel extends Model<PublicOpinionLabel> {

    private static final long serialVersionUID = 2610898030951012117L;

    /**
     * id
     */
    @TableId(type = IdType.AUTO)
    private Integer id;

    /**
     * 关联舆情id
     */
    @TableField(value = DataBaseSourceConst.COL_PUBLIC_OPINION_LABEL_PUBLIC_OPINION_ID)
    private Integer publicOpinionId;

    /**
     * 标签id
     */
    @TableField(value = DataBaseSourceConst.COL_PUBLIC_OPINION_LABEL_LABEL_ID)
    private Integer labelId;

    @ApiModelProperty(value = "新建时间")
    @TableField("create_time")
    private LocalDateTime createTime;

    @ApiModelProperty(value = "更新时间")
    @TableField("update_time")
    private LocalDateTime updateTime;

}