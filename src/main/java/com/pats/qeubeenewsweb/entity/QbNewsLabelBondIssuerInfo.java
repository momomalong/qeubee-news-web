package com.pats.qeubeenewsweb.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import com.baomidou.mybatisplus.extension.activerecord.Model;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.*;

import java.io.Serializable;
import java.time.LocalDateTime;

/**
 * <p>
 * 债券标签发行人信息表
 * </p>
 *
 * @author mqt
 * @since 2021-01-13
 */
@Data
@EqualsAndHashCode(callSuper = true)
@TableName("qb_news_label_bond_issuer_info")
@ApiModel(value = "QbNewsLabelBondIssuerInfo对象", description = "债券标签发行人信息表")
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class QbNewsLabelBondIssuerInfo extends Model<QbNewsLabelBondIssuerInfo> {

    private static final long serialVersionUID = 1L;

    @ApiModelProperty(value = "舆情id")
    @TableId(value = "id", type = IdType.AUTO)
    private Integer id;

    @ApiModelProperty(value = "type为债券（62）的标签id")
    @TableField("label_id")
    private Integer labelId;

    @ApiModelProperty(value = "bond key")
    @TableField("bond_key")
    private String bondKey;

    @ApiModelProperty(value = "发行市场")
    @TableField("listed_market")
    private String listedMarket;

    @ApiModelProperty(value = "发行机构code")
    @TableField("issuer_code")
    private String issuerCode;

    @ApiModelProperty(value = "发行机构名称")
    @TableField("issuer_name")
    private String issuerName;

    @ApiModelProperty(value = "发行机构所在省份")
    @TableField("issuer_province")
    private String issuerProvince;

    @ApiModelProperty(value = "发行机构所属行业")
    @TableField("issuer_sector")
    private String issuerSector;

    @ApiModelProperty(value = "发行机构子行业")
    @TableField("issuer_subsector")
    private String issuerSubsector;

    @ApiModelProperty(value = "新增时间")
    @TableField("create_time")
    private LocalDateTime createTime;

    @ApiModelProperty(value = "修改时间")
    @TableField("update_time")
    private LocalDateTime updateTime;


    @Override
    protected Serializable pkVal() {
        return this.id;
    }

}
