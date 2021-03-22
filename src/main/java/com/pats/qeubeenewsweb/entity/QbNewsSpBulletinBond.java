package com.pats.qeubeenewsweb.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;
import java.time.LocalDateTime;

/**
 * <p>
 *
 * </p>
 *
 * @author mqt
 * @since 2020-09-24
 */
@Data
@ApiModel(value = "QbNewsSpBulletinBond对象", description = "")
@AllArgsConstructor
@NoArgsConstructor
@TableName("qb_news_sp_bulletin_bond")
public class QbNewsSpBulletinBond implements Serializable {

    private static final long serialVersionUID = 1L;

    @ApiModelProperty(value = "主键id")
    @TableId(value = "id", type = IdType.AUTO)
    private Integer id;

    @ApiModelProperty(value = "文件ID")
    private String fileId;

    @ApiModelProperty(value = "bond唯一标识")
    private String bondKey;

    @ApiModelProperty(value = "债卷code值")
    private String bondCode;

    @ApiModelProperty(value = "债券简称")
    private String shortName;

    @ApiModelProperty(value = "新增时间")
    private LocalDateTime createTime;


}
