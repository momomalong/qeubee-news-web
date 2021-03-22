package com.pats.qeubeenewsweb.entity.dto.publicopinion;


import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

import java.io.Serializable;

/**
 * 债券详情返回前端DTO
 *
 * @author Hzy
 * @since 2020-12-9
 * @version 1.0.0
 *
 */

@ApiModel(value = "债券详情返回前端DTO")
@Data
public class BondDetailsDTO implements Serializable {

    private static final long serialVersionUID = 1L;

    /**
     * 标签简称
     */
    @ApiModelProperty(value = "标签简称")
    private String shortName;

    /**
     * 债卷code
     */
    @ApiModelProperty(value = "债券code")
    private String bondCode;

    /**
     * 发行人
     */
    @ApiModelProperty(value = "发行人")
    private String issuerName;

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
     * bond键
     */
    @ApiModelProperty(value = "bond键")
    private String bondKey;

    /**
     * 债卷市场
     */
    @ApiModelProperty(value = "债卷市场")
    private String listedMarket;

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

    public BondDetailsDTO(){}

    public BondDetailsDTO(String shortName,String bondCode,String issuerName,String issuerRatingCurrent,String remainingDate,String couponRateCurrent,String bondRating){
        this.shortName = shortName;
        this.bondCode = bondCode;
        this.issuerName = issuerName;
        this.issuerRatingCurrent = issuerRatingCurrent;
        this.remainingDate = remainingDate;
        this.couponRateCurrent = couponRateCurrent;
        this.bondRating = bondRating;
    }

    public BondDetailsDTO(String bondKey,String bondCode,String listedMarket,String remainingDate,String score,String scoreLevel){
        this.bondKey = bondKey;
        this.bondCode = bondCode;
        this.listedMarket = listedMarket;
        this.remainingDate = remainingDate;
        this.score = score;
        this.scoreLevel = scoreLevel;
    }

    public BondDetailsDTO(String bondKey,String bondCode,String listedMarket,String remainingDate,String score,String scoreLevel
            ,String bondScore,String bondScoreLevel,String valYield,String yieldToMaturity){
        this.bondKey = bondKey;
        this.bondCode = bondCode;
        this.listedMarket = listedMarket;
        this.remainingDate = remainingDate;
        this.score = score;
        this.scoreLevel = scoreLevel;
        this.bondScore = bondScore;
        this.bondScoreLevel = bondScoreLevel;
        this.valYield = valYield;
        this.yieldToMaturity = yieldToMaturity;
    }
}
