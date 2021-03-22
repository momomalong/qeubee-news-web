package com.pats.qeubeenewsweb.otherservice.impl;

import com.pats.qeubeenewsweb.entity.bo.RankingListBO;
import com.pats.qeubeenewsweb.entity.bo.RankingListNewsBO;
import com.pats.qeubeenews.common.dto.ResultDTO;
import com.pats.qeubeenews.common.utils.BeansMapper;
import com.pats.qeubeenewsweb.entity.dto.rankinglist.RankingListNewsServDTO;
import com.pats.qeubeenewsweb.entity.dto.rankinglist.RankingListSetServDTO;
import com.pats.qeubeenewsweb.entity.RankingList;
import com.pats.qeubeenewsweb.consts.CommonConst;
import com.pats.qeubeenewsweb.consts.DataBaseColumnValueConst;
import com.pats.qeubeenewsweb.logic.RankingListLogic;
import com.pats.qeubeenewsweb.otherservice.RankingListService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import java.util.stream.Collectors;

/**
 * <p>
 * title: RankingListServiceImpl
 * </p>
 * <p>
 * Description: 阅读排行业务实现类
 * </p>
 *
 * @author :wenjie.pei
 * @version:1.0.0
 * @since :2020.09.02
 */
@Service
@RequiredArgsConstructor
public class RankingListServiceImpl implements RankingListService {

    private final RankingListLogic rankingListLogic;

    /**
     * 舆情阅读量统计
     *
     * @param rankingListServDTO 阅读舆情参数
     * @return 业务处理结果
     */
    @Override
    public ResultDTO<?> increaseReadCount(RankingListNewsServDTO rankingListServDTO) {
        rankingListLogic.calcReadCount(BeansMapper.convert(rankingListServDTO, RankingListNewsBO.class));
        return ResultDTO.success(null);
    }

    /**
     * 更新阅读排行 并 获取排行数据
     *
     * @return 最新榜单数据
     */
    @Override
    public ResultDTO<RankingListBO> updateAndfindRankingList() {
        // 合并各时间维度, 不同分区的阅读量
        rankingListLogic.mergeDivision();
        // 返回最终合并的榜单
        return ResultDTO.success(mergeStatisticsAndManualRankingList());
    }

    /**
     * 持久化排行榜单
     *
     * @return 持久化结果
     */
    @Override
    public ResultDTO<?> saveRankingList() {
        // 获取自动阅读排行榜
        RankingListBO rankingListBO = rankingListLogic.findStatisticsRankingList();
        // 构造删除自动排行的条件
        RankingListNewsBO news = new RankingListNewsBO();
        news.setType(DataBaseColumnValueConst.RANKING_LIST_TYPE_STATISTICS);
        // 清空数据库持久化的上一次榜单
        rankingListLogic.remove(news);
        // 转化各时间维度 阅读排行榜单数据类型
        List<RankingList> rankingList = new ArrayList<>();
        List<RankingList> dayRankingList = BeansMapper.convertList(rankingListBO.getDayRankingList(),
            RankingList.class);
        List<RankingList> weekRankingList = BeansMapper.convertList(rankingListBO.getWeekRankingList(),
            RankingList.class);
        List<RankingList> monthRankingList = BeansMapper.convertList(rankingListBO.getMonthRankingList(),
            RankingList.class);

        rankingList.addAll(dayRankingList);
        rankingList.addAll(weekRankingList);
        rankingList.addAll(monthRankingList);
        // 将本次榜单持久化到数据库
        rankingListLogic.addBatch(rankingList);
        return ResultDTO.success(null);
    }

    /**
     * 获取阅读排行列表
     * 最新榜单数据
     */
    @Override
    public ResultDTO<RankingListBO> findRankingList() {
        // 获取最终的阅读排行榜单
        RankingListBO rankingListBO = mergeStatisticsAndManualRankingList();
        return ResultDTO.success(rankingListBO);
    }

    /**
     * 合并手动、自动 阅读排行榜单
     *
     * @return 合并手动、自动 阅读排行榜单的数据
     */
    private RankingListBO mergeStatisticsAndManualRankingList() {
        // 获取自动阅读排行
        RankingListBO statisRankingList = rankingListLogic.findStatisticsRankingList();
        // 获取手动调整的阅读排行
        RankingListBO manualRankingList = rankingListLogic.findManualRankingList();

        // 自动 日、周、月 排行列表
        List<RankingListNewsBO> statisDayList = statisRankingList.getDayRankingList();
        List<RankingListNewsBO> statisWeekList = statisRankingList.getWeekRankingList();
        List<RankingListNewsBO> statisMonthList = statisRankingList.getMonthRankingList();

        // 手动 日、周、月 排行榜列表
        List<RankingListNewsBO> manualDayList = manualRankingList.getDayRankingList();
        List<RankingListNewsBO> manualWeekList = manualRankingList.getWeekRankingList();
        List<RankingListNewsBO> manualMonthList = manualRankingList.getMonthRankingList();
        // 手动排行的舆情 占位
        manualDayList.forEach(news -> {
            // 手动排行的排序, 大于自动排行的长度时, 追加榜单末尾
            if (Objects.nonNull(statisDayList) && Objects.nonNull(news.getSort())) {
                if (news.getSort() > statisDayList.size()) {
                    statisDayList.add(news);
                } else {
                    statisDayList.add(Math.max(news.getSort() - 1, 0), news);
                }
            }
        });
        manualWeekList.forEach(news -> {
            // 手动排行的排序, 大于自动排行的长度时, 追加榜单末尾
            if (Objects.nonNull(statisDayList) && Objects.nonNull(news.getSort())) {
                if (news.getSort() > statisWeekList.size()) {
                    statisWeekList.add(news);
                } else {
                    statisWeekList.add(Math.max(news.getSort() - 1, 0), news);
                }
            }
        });
        manualMonthList.forEach(news -> {
            if (Objects.nonNull(statisDayList) && Objects.nonNull(news.getSort())) {
                if (news.getSort() > statisMonthList.size()) {
                    statisMonthList.add(news);
                } else {
                    statisMonthList.add(Math.max(news.getSort() - 1, 0), news);
                }
            }
        });

        // 截取排行榜长度
        statisRankingList.setDayRankingList(
            statisDayList.stream().limit(CommonConst.RANKING_LIST_SIZE).collect(Collectors.toList()));
        statisRankingList.setWeekRankingList(
            statisWeekList.stream().limit(CommonConst.RANKING_LIST_SIZE).collect(Collectors.toList()));
        statisRankingList.setMonthRankingList(
            statisMonthList.stream().limit(CommonConst.RANKING_LIST_SIZE).collect(Collectors.toList()));
        return statisRankingList;
    }

    /**
     * 批量添加榜单 并更新 手工排行缓存
     *
     * @param newsList 榜单数据列表
     */
    @Override
    public ResultDTO<?> addBatch(List<RankingListNewsServDTO> newsList) {
        List<RankingList> rankingList = BeansMapper.convertList(newsList, RankingList.class);
        rankingListLogic.addBatch(rankingList);
        return ResultDTO.success(null);
    }

    /**
     * 移除榜单数据 by 条件 并更新 手工排行缓存
     *
     * @param newsList 榜单移除条件参数
     */
    @Override
    public ResultDTO<?> remove(RankingListSetServDTO newsList) {
        RankingListNewsBO news = BeansMapper.convert(newsList, RankingListNewsBO.class);
        rankingListLogic.remove(news);
        return ResultDTO.success(null);
    }

}