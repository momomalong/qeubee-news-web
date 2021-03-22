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
@TableName("hongan_bm_security_relation")
@ApiModel(value="HonganBmSecurityRelation对象", description="")
public class HonganBmSecurityRelation extends Model<HonganBmSecurityRelation> {

    private static final long serialVersionUID = 1L;

    @ApiModelProperty(value = "自增id")
    @TableId(value = "id", type = IdType.AUTO)
    private Integer id;

    @ApiModelProperty(value = "内部债券代码")
    @TableField("bond_id")
    private String bondId;

    @ApiModelProperty(value = "债券交易代码")
    @TableField("ticker_symbol")
    private String tickerSymbol;

    @ApiModelProperty(value = "债券交易市场")
    @TableField("exchange_cd")
    private String exchangeCd;

    @ApiModelProperty(value = "债券全称")
    @TableField("sec_full_name")
    private String secFullName;

    @ApiModelProperty(value = "债券简称")
    @TableField("sec_short_name")
    private String secShortName;

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
