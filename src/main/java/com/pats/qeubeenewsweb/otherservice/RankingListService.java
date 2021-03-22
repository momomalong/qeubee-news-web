package com.pats.qeubeenewsweb.otherservice;

import com.pats.qeubeenews.common.dto.ResultDTO;
import com.pats.qeubeenewsweb.entity.bo.RankingListBO;
import com.pats.qeubeenewsweb.entity.dto.rankinglist.RankingListNewsServDTO;
import com.pats.qeubeenewsweb.entity.dto.rankinglist.RankingListSetServDTO;

import java.util.List;

/**
 * <p>Title: RankingListService</p>
 * <p>Description: 阅读排行业务接口</p>
 *
 * @author :wenjie.pei
 * @version :1.0.0
 * @since :2020.09.01
 */
public interface RankingListService {

    /**
     * 累计新闻阅读量
     *
     * @param rankingListServDTO 阅读舆情参数
     */
    ResultDTO<?> increaseReadCount(RankingListNewsServDTO rankingListServDTO);

    /**
     * 更新阅读排行 并 获取排行数据
     */
    ResultDTO<RankingListBO> updateAndfindRankingList();

    /**
     * 持久化排行榜单
     */
    ResultDTO<?> saveRankingList();

    /**
     * 获取阅读排行列表
     */
    ResultDTO<RankingListBO> findRankingList();

    /**
     * 阅读排行数据批量添加
     *
     * @param newsList 舆情列表
     */
    ResultDTO<?> addBatch(List<RankingListNewsServDTO> newsList);

    /**
     * 移除排行榜 by 条件
     *
     * @param newsList 移除条件
     */
    ResultDTO<?> remove(RankingListSetServDTO newsList);

}