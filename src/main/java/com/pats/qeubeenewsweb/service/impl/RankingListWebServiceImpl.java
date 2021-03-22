package com.pats.qeubeenewsweb.service.impl;

import java.util.List;

import com.pats.qeubeenewsweb.entity.bo.RankingListBO;
import com.pats.qeubeenewsweb.entity.bo.RankingListNewsBO;
import com.pats.qeubeenews.common.utils.BeansMapper;
import com.pats.qeubeenewsweb.consts.DataBaseColumnValueConst;
import com.pats.qeubeenewsweb.consts.RabbitMQPushMsgTypeConst;
import com.pats.qeubeenewsweb.entity.dto.rankinglist.RankingListDTO;
import com.pats.qeubeenewsweb.entity.dto.rankinglist.RankingListNewsDTO;
import com.pats.qeubeenewsweb.entity.dto.rankinglist.RankingListNewsSetDTO;
import com.pats.qeubeenewsweb.mq.provider.QeubeeNewsProvider;
import com.pats.qeubeenewsweb.service.RankingListWebService;
import com.pats.qeubeenewsweb.service.transfer.RankingListServiceTransfer;

import org.springframework.stereotype.Service;

import lombok.RequiredArgsConstructor;

/**
 * <p>
 * Title: RankingListServiceImpl
 * </p>
 * <p>
 * Description: 阅读排行榜业务实现累
 * </p>
 * 
 * @author :wenjie.pei
 * @since :2020.09.03
 * @version :1.0.0
 */
@RequiredArgsConstructor
@Service
public class RankingListWebServiceImpl implements RankingListWebService {

    private final RankingListServiceTransfer rankingListTransfer;

    private final QeubeeNewsProvider qeubeeNewsProvider;

    /**
     * 累计新闻阅读量
     * 
     * @param rankingListNews 阅读舆情参数
     */
    @Override
    public void increaseReadCount(RankingListNewsBO rankingListNews) {
        rankingListTransfer.increaseReadCount(rankingListNews);
    }

    /**
     * 更新阅读排行 并 获取排行数据
     */
    @Override
    public RankingListDTO updateAndfindRankingList() {
        RankingListBO rankingListBO = rankingListTransfer.updateAndfindRankingList();
        return BeansMapper.convert(rankingListBO, RankingListDTO.class);
    }

    /**
     * 持久化 排行数据
     */
    public void saveRankingList() {
        rankingListTransfer.saveRankingList();
    }

    /**
     * 获取阅读排行榜
     */
    @Override
    public RankingListDTO findRankingList() {
        RankingListBO rankingListBO = rankingListTransfer.findRankingList();
        return BeansMapper.convert(rankingListBO, RankingListDTO.class);
    }

    /**
     * 阅读排行批量新增接口 调用处理
     * 
     * @param   news    阅读排行新增参数列表
     */
    @Override
    public void addManualBatch(List<RankingListNewsDTO> news) {
        // 设置新增阅读榜单类型为 手动排行榜单
        news.stream().forEach(item -> { item.setType(DataBaseColumnValueConst.RANKING_LIST_TYPE_MANUAL); });
        // 批量新增
        rankingListTransfer.addBatch(news);
        // 通过socket推送当前排行数据
        qeubeeNewsProvider.pushToFront(
            this.findRankingList(), 
            RabbitMQPushMsgTypeConst.MQ_MSG_TYPE_RANKING_LIST);
    }

    /**
     * 阅读排行移除接口 调用处理
     * 
     * @param   newsSet 阅读排行设置参数
     */
    @Override
    public void removeManual(RankingListNewsSetDTO newsSet) {
        // 设置本次移除操作目标为, 手动排行
        newsSet.setTitle(DataBaseColumnValueConst.RANKING_LIST_TYPE_MANUAL);
        // 移除排行
        rankingListTransfer.remove(newsSet);
        // 通过socket推送当前排行数据
        qeubeeNewsProvider.pushToFront(
            this.findRankingList(), 
            RabbitMQPushMsgTypeConst.MQ_MSG_TYPE_RANKING_LIST);
    }
    
}