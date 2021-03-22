package com.pats.qeubeenewsweb.service;

import java.util.List;

import com.pats.qeubeenewsweb.entity.AbnormalTrade;

/**
 * <p>Title: AbnormalTradeRankService</p>
 * <p>Description: 异常成交服务接口</p>
 * 
 * @author :wenjie.pei
 * @since  :2020.09.17
 * @version:1.0.0
 */
public interface AbnormalTradeRankService {

    /**
     * 异常成交记录保存
     * 
     * @param abnormalTrade 异常成交记录排行
     */
    void save(List<List<AbnormalTrade>> abnormalTrade);

    /**
     * 获取异常成交记录
     * 
     * @return 异常成交记录排行
     */
    List<List<AbnormalTrade>> find();
    
}
