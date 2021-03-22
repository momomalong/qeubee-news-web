package com.pats.qeubeenewsweb.logic;

import com.baomidou.mybatisplus.extension.service.IService;
import com.pats.qeubeenewsweb.entity.bo.RankingListBO;
import com.pats.qeubeenewsweb.entity.bo.RankingListNewsBO;
import com.pats.qeubeenewsweb.entity.RankingList;

import java.util.List;

/**
 * <p>Title: RankingListLogic</p>
 * <p>Description: 阅读排行逻辑接口</p>
 * 
 * @author :wenjie.pei
 * @since  :2020.09.02
 * @version:1.0.0
 */
public interface RankingListLogic extends IService<RankingList> {

    /**
     * 阅读量统计
     * 
     * @param rankingList    阅读舆情参数
     */
    void calcReadCount(RankingListNewsBO rankingList);

    /**
     * 缓存不合规舆情
     * 
     * @param rankingList   不合规舆情
     */
    void addNonComlianceNews(RankingListNewsBO rankingList);

    /**
     * 移除不合规舆情
     * 
     * @param rankingList   不合规舆情
     */
    void removeNonComlianceNews(RankingListNewsBO rankingList);

    /**
     * 获取自动统计的 阅读排行榜单
     * 
     * @return 阅读排行
     */
    RankingListBO findStatisticsRankingList();

    /**
     * 获取手动调整的 阅读排行舆情列表
     * 
     * @return 阅读排行
     */
    RankingListBO findManualRankingList();

    /**
     * 合并各时间维度 不同分区的 阅读量数据
     */
    void mergeDivision();

    /**
     * 清除阅读排行
     * 
     * @param   rankingListNews  清除条件   
     */
    void remove(RankingListNewsBO rankingListNews);

    /**
     * 批量新增排行(将阅读排行榜持久化入库)
     * 
     * @param   rankingListBO    批量新增排行
     */
    void addBatch(List<RankingList> rankingList);
    
}