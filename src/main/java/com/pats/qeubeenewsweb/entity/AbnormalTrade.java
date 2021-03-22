package com.pats.qeubeenewsweb.entity;

import java.io.Serializable;

import lombok.Data;

/**
 * <p>Title: AbnormalTrade</p>
 * <p>Description: 异常成交记录实体</p>
 * 
 * @author :wenjie.pei
 * @since  :2020.09.17
 * @version :1.0.0
 */
@Data
public class AbnormalTrade implements Serializable {

    private static final long serialVersionUID = -6585533954581738145L;

    /**
     * 成交货 名称
     */
    private String goodsShortName;

    /**
     * 价格
     */
    private Double netPrice;

    /**
     * clean price 
     */
    private Double valCleanPrice;

    /**
     * deviation
     */
    private Double deviation;

    /**
     * deviationPercent
     */
    private String deviationPercent;

    /**
     * deviationYield
     */
    private String deviationYield;

    /**
     * 债券 key
     */
    private String bondKey;

    /**
     * 市场
     */
    private String listedMarket;

    /**
     * 分数
     */
    private String score;

    /**
     * 更新时间
     */
    private String updateTime;
    
}
