package com.pats.qeubeenewsweb.service;

import java.util.List;

import com.pats.qeubeenewsweb.entity.bo.RankingListNewsBO;
import com.pats.qeubeenewsweb.entity.dto.rankinglist.RankingListDTO;
import com.pats.qeubeenewsweb.entity.dto.rankinglist.RankingListNewsDTO;
import com.pats.qeubeenewsweb.entity.dto.rankinglist.RankingListNewsSetDTO;

/**
 * <p>Title: RankingListWebService</p>
 * <p>Description: 阅读排行业务类</p>
 * 
 * @author :wenjie.pei
 * @since  :2020.09.03
 * @version:1.0.0
 */
public interface RankingListWebService {

    /**
     * 阅读排行统计业务接口调用处理
     */
    void increaseReadCount(RankingListNewsBO rankingListNews);
    
    /**
     * 获取阅读排行榜
     */
    RankingListDTO findRankingList();

    /**
     * 更新阅读排行 并 获取排行数据
     */
    RankingListDTO updateAndfindRankingList();

    /**
     * 持久化 排行数据
     */
    void saveRankingList();

    /**
     * 阅读排行批量新增接口 调用处理
     * 
     * @param   news    阅读排行新增参数列表
     */
    void addManualBatch(List<RankingListNewsDTO> news);

    /**
     * 阅读排行移除接口 调用处理
     * 
     * @param   newsSet 阅读排行设置参数
     */
    void removeManual(RankingListNewsSetDTO newsSet);

}