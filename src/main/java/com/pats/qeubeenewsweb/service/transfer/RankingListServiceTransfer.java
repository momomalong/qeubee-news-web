package com.pats.qeubeenewsweb.service.transfer;

import com.pats.qeubeenewsweb.entity.bo.RankingListBO;
import com.pats.qeubeenewsweb.entity.bo.RankingListNewsBO;
import com.pats.qeubeenews.common.utils.BeansMapper;
import com.pats.qeubeenewsweb.entity.dto.rankinglist.RankingListNewsServDTO;
import com.pats.qeubeenewsweb.entity.dto.rankinglist.RankingListSetServDTO;
import com.pats.qeubeenewsweb.entity.dto.rankinglist.RankingListNewsDTO;
import com.pats.qeubeenewsweb.entity.dto.rankinglist.RankingListNewsSetDTO;
import com.pats.qeubeenewsweb.otherservice.RankingListService;
import com.pats.qeubeenewsweb.utils.ApiResultDealUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.util.List;

/**
 * <p>Title: RankingListServiceTransfer</p>
 * <p>Description: RankingListService 调用数据转换类</p>
 *
 * @author :wenjie.pei
 * @version:1.0.0
 * @since :2020.09.02
 */
@Component
public class RankingListServiceTransfer {

    @Autowired
    private RankingListService rankingListService;

    /**
     * 阅读排行统计业务接口调用处理
     */
    public void increaseReadCount(RankingListNewsBO rankingListNews) {
        ApiResultDealUtils.dealResult(rankingListService.increaseReadCount(BeansMapper.convert(rankingListNews, RankingListNewsServDTO.class)));
    }

    /**
     * 获取阅读排行数据接口 调用处理
     * 更新：将当前榜单持久化入库
     *
     * @return 阅读排行榜
     */
    public RankingListBO updateAndfindRankingList() {
        return ApiResultDealUtils.dealResult(rankingListService.updateAndfindRankingList());
    }

    /**
     * 获取阅读排行数据接口 调用处理
     * 更新：将当前榜单持久化入库
     *
     * @return 阅读排行榜
     */
    public void saveRankingList() {
        ApiResultDealUtils.dealResult(rankingListService.saveRankingList());
    }

    /**
     * 阅读排行列表获取接口调用处理
     *
     * @return 阅读排行榜
     */
    public RankingListBO findRankingList() {
        return ApiResultDealUtils.dealResult(rankingListService.findRankingList());
    }

    /**
     * 阅读排行批量新增接口 调用处理
     *
     * @param news 阅读排行新增参数列表
     */
    public void addBatch(List<RankingListNewsDTO> news) {
        ApiResultDealUtils.dealResult(rankingListService.addBatch(BeansMapper.convertList(news, RankingListNewsServDTO.class)));
    }

    /**
     * 阅读排行移除接口 调用处理
     *
     * @param newsSet 阅读排行设置参数
     */
    public void remove(RankingListNewsSetDTO newsSet) {
        ApiResultDealUtils.dealResult(rankingListService.remove(BeansMapper.convert(newsSet, RankingListSetServDTO.class)));
    }

}