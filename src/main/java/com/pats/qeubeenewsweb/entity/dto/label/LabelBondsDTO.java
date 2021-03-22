package com.pats.qeubeenewsweb.entity.dto.label;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;
import java.util.List;

/**
 * 债券标签DTO类
 *
 * @author : zhaoyong.huang
 * @version :1.0.0
 * @date : create in 2020/11/27 16:31
 */
@Data
@ApiModel(value = "债券标签DTO类")
@AllArgsConstructor
@NoArgsConstructor
public class LabelBondsDTO implements Serializable {

    private static final long serialVersionUID = 1L;
    /**
     * 标签id
     */
    @ApiModelProperty(value = "标签id")
    private Integer id;

    /**
     * 标签名称
     */
    @ApiModelProperty(value = "标签名称")
    private String shortName;

    /**
     * 标签类型id
     */
    @ApiModelProperty(value = "标签类型id", example = "1")
    private Integer typeId;
    /**
     * bondKey
     */
    @ApiModelProperty(value = "bondKey", example = "1")
    private String bondKey;
    /**
     * 发行市场
     */
    @ApiModelProperty(value = "发行市场", example = "1")
    private String listedMarket;
    /**
     * issuerCode
     */
    @ApiModelProperty(value = "issuerCode", example = "1")
    private String issuerCode;
    /**
     * issuerName
     */
    @ApiModelProperty(value = "issuerName", example = "1")
    private String issuerName;

    /**
     * 债卷code
     */
    @ApiModelProperty(value = "债券code")
    private String bondCode;

    /**
     * 主体评级
     */
    @ApiModelProperty(value = "主体评级")
    private String issuerRatingCurrent;

    /**
     * 剩余期限
     */
    @ApiModelProperty(value = "剩余期限")
    private String remainingDate;

    /**
     * 票面利率
     */
    @ApiModelProperty(value = "票面利率")
    private String couponRateCurrent;

    /**
     * 债项评级
     */
    @ApiModelProperty(value = "债项评级")
    private String bondRating;

    /**
     * 评分
     */
    @ApiModelProperty(value = "债卷流动性")
    private String score;

    /**
     * 评分等级
     */
    @ApiModelProperty(value = "评分等级")
    private String scoreLevel;

    /**
     * 单卷流动性
     */
    @ApiModelProperty(value = "单卷流动性")
    private String bondScore;

    /**
     * 单卷流动性级别
     */
    @ApiModelProperty(value = "单卷流动性级别")
    private String bondScoreLevel;

    /**
     * 中债估值
     */
    @ApiModelProperty(value = "中债估值")
    private String valYield;

    /**
     * 中证估值
     */
    @ApiModelProperty(value = "中证估值")
    private String yieldToMaturity;

    /**
     * 交易数据
     */
    @ApiModelProperty(value = "交易数据")
    private List<BondTradeDTO> tradeData;
}
