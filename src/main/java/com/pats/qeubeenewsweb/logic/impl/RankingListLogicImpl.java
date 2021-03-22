package com.pats.qeubeenewsweb.logic.impl;

import com.alibaba.fastjson.JSON;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.conditions.update.UpdateWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.pats.qeubeenews.common.exception.BaseKnownException;
import com.pats.qeubeenews.common.utils.BeansMapper;
import com.pats.qeubeenewsweb.consts.CommonConst;
import com.pats.qeubeenewsweb.consts.DataBaseColumnValueConst;
import com.pats.qeubeenewsweb.consts.DataBaseSourceConst;
import com.pats.qeubeenewsweb.consts.RankingListTimeDimensionConst;
import com.pats.qeubeenewsweb.consts.RedisCacheNamesConst;
import com.pats.qeubeenewsweb.entity.RankingList;
import com.pats.qeubeenewsweb.entity.bo.RankingListBO;
import com.pats.qeubeenewsweb.entity.bo.RankingListNewsBO;
import com.pats.qeubeenewsweb.logic.RankingListLogic;
import com.pats.qeubeenewsweb.mapper.RankingListDao;
import org.springframework.data.redis.core.BoundSetOperations;
import org.springframework.data.redis.core.BoundZSetOperations;
import org.springframework.data.redis.core.DefaultTypedTuple;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.data.redis.core.ZSetOperations.TypedTuple;
import org.springframework.stereotype.Component;
import org.springframework.util.StringUtils;

import javax.annotation.PostConstruct;
import javax.annotation.Resource;
import java.time.Instant;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.ZoneId;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Objects;
import java.util.Optional;
import java.util.Set;
import java.util.stream.Collectors;
import java.util.stream.Stream;

/**
 * <p>
 * Title: RankingListLogi
 * cImpl</p>
 * <p>Description: 阅读排行逻辑处理类</p>
 *
 * @author : wenjie.pei
 * @version :1.0.0
 * @since :2020.09.02
 */
@Component
public class RankingListLogicImpl extends ServiceImpl<RankingListDao, RankingList> implements RankingListLogic {

    @Resource
    private RedisTemplate<Object, Object> redisTemplate;

    /**
     * 每10分钟为单位的 日阅读排行榜分区 key 列表
     */
    private List<Object> dayTimeDivisionKey;

    /**
     * 以天为单位的 周阅读排行榜 key 列表
     */
    private List<Object> weekTimeDivisionKey;

    /**
     * 以天为单位的 月阅读排行榜 key 列表
     */
    private List<Object> monthTimeDivisionKey;

    /**
     * 24小时内 以24小时为单位进行分区
     * 如果想划分更精细的时间维度, 可以更改该参数
     */
    private static final int dayTimeDivisionCount = 60 * 60 * 24 / (60 * 60 * 24);

    /**
     * redis分区合并时的占位符key, 对逻辑没影响
     */
    private static final String REDIS_KEY_PLACEHOLDER = "wf:clsnews:{rankinglist}.placeholder";

    @PostConstruct
    public void init() {
        // 构造 每10分钟为单位的 每日分区key集合, 共144分区
        dayTimeDivisionKey = Stream.iterate(0, (index) -> index + 1)
            .limit(dayTimeDivisionCount)
            .map(index -> RankingListTimeDimensionConst.DEVISION_OF_DAY + index)
            .collect(Collectors.toList());
        // 构造周阅读排行, 分区key集合
        weekTimeDivisionKey = Stream.iterate(0, (index) -> index + 1)
            .limit(7)
            .map(index -> RankingListTimeDimensionConst.DEVISION_OF_WEEK + index)
            .collect(Collectors.toList());
        // 构造月阅读排行, 分区key集合
        monthTimeDivisionKey = Stream.iterate(0, (index) -> index + 1)
            .limit(31)
            .map(index -> RankingListTimeDimensionConst.DEVISION_OF_MONTH + index)
            .collect(Collectors.toList());
    }

    /**
     * 舆情阅读量统计
     *
     * @param rankingListNews 阅读排行 舆情参数
     */
    @Override
    public void calcReadCount(RankingListNewsBO rankingListNews) {
        // 日排行榜阅读量统计
        setDayDivision(rankingListNews);
        // 周排行榜阅读量统计
        setWeekDivision(rankingListNews);
        // 月排行榜阅读量统计
        setMonthDivision(rankingListNews);
    }

    /**
     * 缓存不合规舆情
     *
     * @param rankingList 不合规舆情
     */
    @Override
    public void addNonComlianceNews(RankingListNewsBO rankingList) {
        BoundSetOperations<Object, Object> set = redisTemplate.boundSetOps(
            RedisCacheNamesConst.NON_COMPLIANCE_PUBLIC_OPINION);
        // 添加到 舆情阅读排行黑名单set中
        set.add(rankingList);
        // 设置一个月后超时
        set.expireAt(LocalDateTime.now().plusMonths(1).atZone(ZoneId.systemDefault()).toInstant());

    }

    /**
     * 移除不合规舆情
     *
     * @param rankingList 不合规舆情
     */
    @Override
    public void removeNonComlianceNews(RankingListNewsBO rankingList) {
        BoundSetOperations<Object, Object> set = redisTemplate.boundSetOps(
            RedisCacheNamesConst.NON_COMPLIANCE_PUBLIC_OPINION);
        // 取消 该舆情不合规的缓存
        Boolean member = set.isMember(rankingList);
        if (member != null && member) {
            set.remove(rankingList);
        }
    }

    /**
     * 获取阅读排行数据
     *
     * @return 阅读排行
     */
    @Override
    public RankingListBO findStatisticsRankingList() {
        // 填充并移除不合规排行
        fillRankingList(
            DataBaseColumnValueConst.RANKING_LIST_TIME_DEVISION_DAY,
            redisTemplate.boundZSetOps(RankingListTimeDimensionConst.DAY));
        fillRankingList(
            DataBaseColumnValueConst.RANKING_LIST_TIME_DEVISION_WEEK,
            redisTemplate.boundZSetOps(RankingListTimeDimensionConst.WEEK));
        fillRankingList(
            DataBaseColumnValueConst.RANKING_LIST_TIME_DEVISION_MONTH,
            redisTemplate.boundZSetOps(RankingListTimeDimensionConst.MONTH));

        // 获取日、周、月 排行榜前10的数据及排序
        List<RankingListNewsBO> dayRankingList = convertRankingListResult(RankingListTimeDimensionConst.DAY);
        List<RankingListNewsBO> weekRankingList = convertRankingListResult(RankingListTimeDimensionConst.WEEK);
        List<RankingListNewsBO> monthRankingList = convertRankingListResult(RankingListTimeDimensionConst.MONTH);

        return new RankingListBO(dayRankingList, weekRankingList, monthRankingList);
    }

    /**
     * 获取手动调整的 阅读排行舆情列表
     *
     * @return 手动调整的阅读排行
     */
    @Override
    public RankingListBO findManualRankingList() {
        // 构造日、周、月 三个维度的阅读排行列表
        List<RankingListNewsBO> dayRankingList = new ArrayList<>();
        List<RankingListNewsBO> weekRankingList = new ArrayList<>();
        List<RankingListNewsBO> monthRankingList = new ArrayList<>();
        // 查询缓存
        List<Object> result = redisTemplate.boundListOps(RedisCacheNamesConst.MANUAL_RANKING_LIST).range(0, -1);
        if (Objects.nonNull(result) && result.size() != 0) {
            result.forEach(e -> {
                RankingListNewsBO news = JSON.toJavaObject((JSON) e, RankingListNewsBO.class);
                switch (news.getTimeDimension()) {
                    case DataBaseColumnValueConst.RANKING_LIST_TIME_DEVISION_DAY:
                        dayRankingList.add(news);
                        break;
                    case DataBaseColumnValueConst.RANKING_LIST_TIME_DEVISION_WEEK:
                        weekRankingList.add(news);
                        break;
                    default:
                        monthRankingList.add(news);
                }
            });
            return new RankingListBO(dayRankingList, weekRankingList, monthRankingList);
        }
        // ----------- 如果缓存中无手动排行, 则查询db 并缓存到redis ------------
        // 构造检索条件
        QueryWrapper<RankingList> query = new QueryWrapper<>();
        // 获取类型为手动排行的阅读舆情
        query.eq(DataBaseSourceConst.COL_RANKING_LIST_TYPE, DataBaseColumnValueConst.RANKING_LIST_TYPE_MANUAL);
        // 按照sort字段生序排序
        query.orderByAsc(DataBaseSourceConst.COL_RANKING_LIST_SORT);
        // 获取历史排行
        List<RankingList> rankingList = list(query);
        // 将不同时间维度的舆情 放入不同列表
        List<Object> cacheList = rankingList.stream().map(news -> {
            RankingListNewsBO rankingListNews = BeansMapper.convert(news, RankingListNewsBO.class);
            switch (news.getTimeDimension()) {
                case DataBaseColumnValueConst.RANKING_LIST_TIME_DEVISION_DAY:
                    dayRankingList.add(rankingListNews);
                    break;
                case DataBaseColumnValueConst.RANKING_LIST_TIME_DEVISION_WEEK:
                    weekRankingList.add(rankingListNews);
                    break;
                default:
                    monthRankingList.add(rankingListNews);
            }
            return (Object) rankingListNews;
        }).collect(Collectors.toList());

        // 添加到缓存
        if (!cacheList.isEmpty()) {
            redisTemplate.opsForList().leftPushAll(RedisCacheNamesConst.MANUAL_RANKING_LIST, cacheList);
        }
        return new RankingListBO(dayRankingList, weekRankingList, monthRankingList);
    }

    /**
     * 清除阅读排行
     */
    @Override
    public void remove(RankingListNewsBO rankingListNews) {
        QueryWrapper<RankingList> query = new QueryWrapper<>();
        // 构建排行榜类型条件
        if (Objects.nonNull(rankingListNews.getType()) && !StringUtils.isEmpty(rankingListNews.getType())) {
            query.eq(DataBaseSourceConst.COL_RANKING_LIST_TYPE, rankingListNews.getType());
        }
        // 构建删除顺位条件
        if (Objects.nonNull(rankingListNews.getSort()) && rankingListNews.getSort() != 0) {
            query.eq(DataBaseSourceConst.COL_RANKING_LIST_SORT, rankingListNews.getSort());
        }
        // 构建时间维度条件
        if (Objects.nonNull(rankingListNews.getTimeDimension())
            && !StringUtils.isEmpty(rankingListNews.getTimeDimension())) {
            query.eq(DataBaseSourceConst.COL_RANKING_LIST_TIME_DIMENSION, rankingListNews.getTimeDimension());
        }
        // 构建时间维度条件
        if (Objects.nonNull(rankingListNews.getIds()) && !rankingListNews.getIds().isEmpty()) {
            query.in(DataBaseSourceConst.ID, rankingListNews.getIds());
        }
        // 移除排行数据
        remove(query);
        // 删除条件中存在手工排行, 则更新手工排行缓存
        if (DataBaseColumnValueConst.RANKING_LIST_TYPE_MANUAL.equals(rankingListNews.getType())) {
            // 更新手工排行缓存
            removeManualCache();
        }
    }

    /**
     * 批量新增排行(存储到数据库)
     *
     * @param rankingList 阅读排行列表
     */
    @Override
    public void addBatch(List<RankingList> rankingList) {
        if (rankingList == null || rankingList.size() == 0) {
            return;
        }
        List<Integer> list = rankingList.stream().map(RankingList::getPublicOpinionId).collect(Collectors.toList());
        // 因以前代码导致很多脏数据  先删除  mqt   2020/11/10 16:21
        UpdateWrapper<RankingList> wrapper = new UpdateWrapper<>();
        wrapper.in("public_opinion_id", list);
        super.remove(wrapper);

        // 若包含手工排行的数据, 则清除手动排行缓存
        List<RankingList> manualList = rankingList.stream()
            .filter(e ->
                DataBaseColumnValueConst.RANKING_LIST_TYPE_MANUAL.equals(e.getType()))
            .collect(Collectors.toList());
        if (manualList.size() > 0) {
            removeManualCache();
        }

        // 因为出现0以下会导致以前代码出错  mqt   2020/11/10 16:21
        rankingList = rankingList.stream().filter(e -> {
            if (e.getSort() != null) {
                e.setSort(Math.max(e.getSort(), 0));
                return true;
            }
            return false;
        }).collect(Collectors.toList());
        // 前端没有传ID  mqt   2020/11/10 16:21
        // 批量更新或修改
        saveOrUpdateBatch(rankingList);

    }

    /**
     * 合并 同一时间维度的阅读排行榜的分区阅读量 并排除不合规舆情
     */
    @Override
    public void mergeDivision() {

        // 合并 各时间维度不同分区的 阅读统计量
        BoundZSetOperations<Object, Object> daySet = mergeDivision(
            dayTimeDivisionKey, RankingListTimeDimensionConst.DAY);

        BoundZSetOperations<Object, Object> weekSet = mergeDivision(
            weekTimeDivisionKey, RankingListTimeDimensionConst.WEEK);

        BoundZSetOperations<Object, Object> monthSet = mergeDivision(
            monthTimeDivisionKey, RankingListTimeDimensionConst.MONTH);

        // 填充并移除不合规排行
        fillAndRemoveUnCompliance(DataBaseColumnValueConst.RANKING_LIST_TIME_DEVISION_DAY, daySet);
        fillAndRemoveUnCompliance(DataBaseColumnValueConst.RANKING_LIST_TIME_DEVISION_WEEK, weekSet);
        fillAndRemoveUnCompliance(DataBaseColumnValueConst.RANKING_LIST_TIME_DEVISION_MONTH, monthSet);

    }

    /**
     * 合并 同一时间维度的阅读排行榜分区阅读量
     *
     * @param divisionKeys 时间维度分区key
     * @param destKey      合并到的并集key
     * @return 并集结果集
     */
    private BoundZSetOperations<Object, Object> mergeDivision(List<Object> divisionKeys, String destKey) {
        if (divisionKeys != null && destKey != null) {
            // 合并日排行分区阅读量, 统计当日阅读量
            redisTemplate.opsForZSet().unionAndStore(REDIS_KEY_PLACEHOLDER, divisionKeys, destKey);
            // 获取合并后的日阅读量排行
            return redisTemplate.boundZSetOps(destKey);
        }
        return null;
    }

    /**
     * 填充并移除不合规舆情
     *
     * @param devision 时间维度
     * @param timeSet  排行数据列表
     */
    private void fillAndRemoveUnCompliance(String devision, BoundZSetOperations<Object, Object> timeSet) {
        // 某一维度的排行榜数量不足10条时, 取上一次的榜单数据填充
        fillRankingList(devision, timeSet);
        // 获取不合规舆情列表
        BoundSetOperations<Object, Object> sets = redisTemplate.boundSetOps(
            RedisCacheNamesConst.NON_COMPLIANCE_PUBLIC_OPINION);
        // 移除不合规舆情
        Optional.ofNullable(sets.members()).orElse(new HashSet<>()).forEach(e -> {
            RankingListNewsBO news = JSON.toJavaObject((JSON) e, RankingListNewsBO.class);
            timeSet.remove(news);
        });
    }

    /**
     * 取上一次的榜单数据, 填充当前时间维度的榜单
     *
     * @param timeDivision   时间维度
     * @param rankingListSet 待填充的榜单数据
     */
    private void fillRankingList(String timeDivision, BoundZSetOperations<Object, Object> rankingListSet) {
        if (Optional.ofNullable(rankingListSet.size()).orElse(0L) < CommonConst.RANKING_LIST_SIZE) {
            // 构造检索条件
            QueryWrapper<RankingList> query = new QueryWrapper<>();
            // 相同时间维度的历史榜单
            query.eq(DataBaseSourceConst.COL_RANKING_LIST_TIME_DIMENSION, timeDivision);
            // 仅获取 阅读排行自动统计结果, 排除手动排行
            query.eq(DataBaseSourceConst.COL_RANKING_LIST_TYPE, DataBaseColumnValueConst.RANKING_LIST_TYPE_STATISTICS);
            // 获取当前榜单已有的舆情id
            List<Integer> publicOpinionIds = Optional.ofNullable(rankingListSet.range(0, -1)).orElse(new HashSet<>())
                .stream()
                .map(e ->
                    Optional.ofNullable(JSON.toJavaObject((JSON) e, RankingListNewsBO.class)).orElse(new RankingListNewsBO()).getPublicOpinionId()
                ).collect(Collectors.toList());
            if (publicOpinionIds.size() > 0) {
                // 仅获取当前榜单中不存在的历史榜单舆情
                query.notIn(DataBaseSourceConst.COL_RANKING_LIST_PUBLIC_OPINION_ID, publicOpinionIds);
            }
            // 仅检索舆情id、title字段
            query.select(DataBaseSourceConst.COL_RANKING_LIST_PUBLIC_OPINION_ID, DataBaseSourceConst.COL_RANKING_LIST_TITLE);
            // 获取历史排行
            List<RankingList> rankingList = Optional.ofNullable(list(query)).orElse(new ArrayList<>());
            // 构建待填充的榜单数据列表
            Set<TypedTuple<Object>> tuples = rankingList.stream().map(e -> {
                // 默认历史榜单阅读量为0
                return (TypedTuple<Object>) new DefaultTypedTuple<Object>(e, 0.0);
            }).collect(Collectors.toSet());

            // 将历史榜单填充到 当前榜单中
            if (!tuples.isEmpty()) {
                rankingListSet.add(tuples);
            }
        }
    }

    /**
     * 获取 并转化阅读排行前十的 舆情及排序
     *
     * @param rankingListKey 阅读排行榜结果集key
     * @return 阅读排行榜前十数据
     */
    private List<RankingListNewsBO> convertRankingListResult(String rankingListKey) {
        if (StringUtils.isEmpty(rankingListKey)) {
            return new ArrayList<>();
        }
        BoundZSetOperations<Object, Object> resultSet = redisTemplate.boundZSetOps(rankingListKey);
        // 取舆情排行阅读量前十名
        Set<TypedTuple<Object>> typedTuples = resultSet.reverseRangeWithScores(0, CommonConst.RANKING_LIST_SIZE - 1);
        return Optional.ofNullable(typedTuples).orElse(new HashSet<>())
            .stream()
            .map(e -> {
                RankingListNewsBO news = JSON.toJavaObject((JSON) e.getValue(), RankingListNewsBO.class);
                // 装载排序
                news.setSort(Optional.ofNullable(resultSet.reverseRank(news)).orElse(0L).intValue() + 1);
                // 装载阅读量
                news.setReadingAmount(Optional.ofNullable(e.getScore()).orElse(0D).longValue());
                // 设置舆情排行为 自动阅读统计排行
                news.setType(DataBaseColumnValueConst.RANKING_LIST_TYPE_STATISTICS);
                // 设置时间维度
                news.setTimeDimension(rankingListKey.substring(rankingListKey.indexOf(".") + 1));
                return news;
            }).collect(Collectors.toList());
    }

    /**
     * 设置 日排行榜 时间分区及该分区阅读量
     *
     * @param rankingListNews 阅读的新闻
     */
    private void setDayDivision(RankingListNewsBO rankingListNews) {
        // 计算当前时间处于24小时中 以10分钟为单位的分区中的 哪一分区。
        // LocalTime nowTime = LocalTime.now();
        // 当前所处的每日分区计算公示：division = hour * 6 + minute / 10 
        // int division = nowTime.getHour() * 6 + nowTime.getMinute() / 10;
        // 索引当前分区对应的, set统计阅读量 
        String divisionKey = String.valueOf(dayTimeDivisionKey.get(0));
        // 获取一天后的时间戳
        Instant tomorrow = LocalDate.now().plusDays(1).atStartOfDay().atZone(ZoneId.systemDefault()).toInstant();
        // 统计阅读量 及 超时时间
        setCountAndExpire(rankingListNews, divisionKey, tomorrow);
    }

    /**
     * 设置 周排行榜 时间分区及该分区阅读量
     *
     * @param rankingListNews 阅读的新闻
     */
    private void setWeekDivision(RankingListNewsBO rankingListNews) {
        // 获取当天日期
        LocalDate today = LocalDate.now();
        // 获得今天在本周分区的 key
        String divisionKey = String.valueOf(weekTimeDivisionKey.get(today.getDayOfWeek().getValue() - 1));
        // 计算当前时间向后推移一周后的时间戳
        Instant nextWeek = LocalDate.now().plusWeeks(1).atStartOfDay().atZone(ZoneId.systemDefault()).toInstant();
        // 统计阅读量 及 超时时间
        setCountAndExpire(rankingListNews, divisionKey, nextWeek);
    }

    /**
     * 设置 月排行榜 时间分区及该分区阅读量
     *
     * @param rankingListNews 阅读的新闻
     */
    private void setMonthDivision(RankingListNewsBO rankingListNews) {
        // 获取当天日期
        LocalDate today = LocalDate.now();
        // 获得今天在本月分区的 key
        String divisionKey = String.valueOf(monthTimeDivisionKey.get(today.getDayOfMonth() - 1));
        // 计算当前时间向后推移一个月的时间戳
        Instant nextMonth = LocalDate.now().plusMonths(1).atStartOfDay().atZone(ZoneId.systemDefault()).toInstant();
        // 统计阅读量 及 超时时间
        setCountAndExpire(rankingListNews, divisionKey, nextMonth);
    }

    /**
     * 时间分区阅读量统计 及 超时时间设置
     *
     * @param rankingListNews 阅读的新闻
     * @param devisionKey     阅读量统计分区 key
     * @param istant          超时设置时间戳
     */
    private void setCountAndExpire(RankingListNewsBO rankingListNews, String devisionKey, Instant istant) {
        // 索引当前时间分区 的阅读量统计列表
        BoundZSetOperations<Object, Object> currentDivision = redisTemplate.boundZSetOps(devisionKey);

        if (Objects.nonNull(rankingListNews)
            && Objects.nonNull(rankingListNews.getTitle())
            && Objects.nonNull(rankingListNews.getPublicOpinionId())) {
            // 本次阅读新闻,在当前时间分区内阅读量自增1s
            currentDivision.incrementScore(rankingListNews, 1);
        }

        // 为当前时间分区设置过期时间
        if (Objects.isNull(currentDivision.getExpire()) || currentDivision.getExpire() < 0) {
            currentDivision.expireAt(istant);
        }
    }

    /**
     * 更新手动阅读排行榜缓存
     */
    private void removeManualCache() {
        // 移除缓存中的手动排行
        if (Optional.ofNullable(redisTemplate.hasKey(RedisCacheNamesConst.MANUAL_RANKING_LIST)).orElse(false)
            && !Optional.ofNullable(redisTemplate.delete(RedisCacheNamesConst.MANUAL_RANKING_LIST)).orElse(false)) {
            throw new BaseKnownException(10005, "缓存删除失败");
        }
    }

}