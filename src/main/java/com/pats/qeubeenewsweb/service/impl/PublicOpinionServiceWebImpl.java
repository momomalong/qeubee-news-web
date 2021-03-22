package com.pats.qeubeenewsweb.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.pats.qeubeenews.common.utils.BeansMapper;
import com.pats.qeubeenewsweb.consts.ApiDtoConsts;
import com.pats.qeubeenewsweb.consts.MoodConst;
import com.pats.qeubeenewsweb.consts.RabbitMQPushMsgTypeConst;
import com.pats.qeubeenewsweb.consts.RedisCacheNamesConst;
import com.pats.qeubeenewsweb.entity.Label;
import com.pats.qeubeenewsweb.entity.PublicOpinion;
import com.pats.qeubeenewsweb.entity.PublicOpinionLabel;
import com.pats.qeubeenewsweb.entity.QbNewsLabelBondIssuerInfo;
import com.pats.qeubeenewsweb.entity.bo.RankingListNewsBO;
import com.pats.qeubeenewsweb.entity.dto.PageDTO;
import com.pats.qeubeenewsweb.entity.dto.label.LabelBindDeleteServDTO;
import com.pats.qeubeenewsweb.entity.dto.label.LabelBindSetDTO;
import com.pats.qeubeenewsweb.entity.dto.label.LabelBondsDTO;
import com.pats.qeubeenewsweb.entity.dto.publicopinion.PoIssuerRankDTO;
import com.pats.qeubeenewsweb.entity.dto.publicopinion.PublicOpinionDTO;
import com.pats.qeubeenewsweb.entity.dto.publicopinion.PublicOpinionDetailsDTO;
import com.pats.qeubeenewsweb.entity.dto.publicopinion.PublicOpinionPageQueryDTO;
import com.pats.qeubeenewsweb.entity.dto.publicopinion.PublicOpinionPageQueryServDTO;
import com.pats.qeubeenewsweb.entity.dto.publicopinion.PublicOpinionSetDTO;
import com.pats.qeubeenewsweb.enums.MoodEnum;
import com.pats.qeubeenewsweb.enums.PoRankTimeDimensionEnum;
import com.pats.qeubeenewsweb.logic.PublicOpinionLabelLogic;
import com.pats.qeubeenewsweb.logic.impl.PublicOpinionLogicImpl;
import com.pats.qeubeenewsweb.mapper.LabelMapper;
import com.pats.qeubeenewsweb.mapper.PublicOpinionDao;
import com.pats.qeubeenewsweb.mq.provider.QeubeeNewsProvider;
import com.pats.qeubeenewsweb.service.IQbNewsLabelBondIssuerInfoService;
import com.pats.qeubeenewsweb.service.PublicOpinionWebService;
import com.pats.qeubeenewsweb.service.RankingListWebService;
import com.pats.qeubeenewsweb.service.transfer.PublicOpinionServiceTransfer;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.stereotype.Service;
import org.springframework.util.CollectionUtils;

import javax.annotation.Resource;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.StringJoiner;
import java.util.stream.Collectors;

/**
 * <p>
 * Title: PublicOpinionServiceImpl
 * </p>
 * <p>
 * Description: 舆情新闻业务实现类
 * </p>
 *
 * @author :wenjie.pei
 * @version :1.0.0
 * @since :2020.08.20
 */
@Service
@Slf4j
public class PublicOpinionServiceWebImpl implements PublicOpinionWebService {

    @Autowired
    private PublicOpinionServiceTransfer publicOpinionTransfer;

    @Autowired
    private RankingListWebService rankingListService;

    @Autowired
    private QeubeeNewsProvider qeubeeNewsProvider;

    @Autowired
    private LabelMapper labelMapper;

    @Autowired
    private PublicOpinionDao publicOpinionDao;

    @Autowired
    private PublicOpinionLabelLogic publicOpinionLabelLogic;

    @Autowired
    private PublicOpinionLogicImpl publicOpinionLogic;

    @Autowired
    private IQbNewsLabelBondIssuerInfoService bondIssuerInfoService;

    @Resource
    private RedisTemplate<String, Object> redisTemplate;

    /**
     * 舆情列表分页检索 by condition
     *
     * @param pageQuery 分页检索条件
     * @return 当前页舆情数据
     */
    @Override
    public PageDTO<PublicOpinionDTO> findByPage(PublicOpinionPageQueryDTO pageQuery) {
        List<String> concernGroup = pageQuery.getConcernGroup();
        PageDTO<PublicOpinionDTO> pageDTO = new PageDTO<>();
        // 当关注组不为null，但length=0时直接返回
        if (concernGroup != null && concernGroup.size() == 0) {
            pageDTO.setPages(0L);
            pageDTO.setSize(0L);
            pageDTO.setTotal(0L);
            pageDTO.setCurrent(0L);
            pageDTO.setRecords(new ArrayList<>());
            return pageDTO;
        }
        IPage<PublicOpinionDTO> result = publicOpinionTransfer.findByPage(pageQuery);
        pageDTO.setRecords(result.getRecords());
        pageDTO.setCurrent(result.getCurrent());
        pageDTO.setSize(result.getSize());
        pageDTO.setTotal(result.getTotal());
        pageDTO.setPages(result.getPages());
        return pageDTO;
    }

    /**
     * 舆情详情检索 by id
     *
     * @param id 舆情id
     * @return 舆情详情
     */
    @Override
    public PublicOpinionDetailsDTO findById(Integer id) {
        // 获取舆情详情
        PublicOpinionDetailsDTO publicOpinionDetails = publicOpinionTransfer.findById(id);
        publicOpinionDetails.setArticleScore(MoodEnum.getRank(publicOpinionDetails.getArticleScore()));
        if (publicOpinionDetails.getId() != null) {
            // 统计阅读排行中 该新闻阅读量
            RankingListNewsBO rankingListNews = new RankingListNewsBO();
            rankingListNews.setPublicOpinionId(publicOpinionDetails.getId());
            rankingListNews.setTitle(publicOpinionDetails.getTitle());
            if (publicOpinionDetails.getCompliance() == 1) {
                rankingListService.increaseReadCount(rankingListNews);
            }
        }
        return publicOpinionDetails;
    }

    /**
     * 舆情合规设置
     *
     * @param publicOpinionSetDTO 合规设置参数
     * @return 舆情id
     */
    @Override
    public Integer modifyCompliance(PublicOpinionSetDTO publicOpinionSetDTO) {
        // 更新舆情合规性
        Integer id = publicOpinionTransfer.modifyCompliance(publicOpinionSetDTO);
        // 推送更新的阅读排行榜单
        qeubeeNewsProvider.pushToFront(
            rankingListService.updateAndfindRankingList(),
            RabbitMQPushMsgTypeConst.MQ_MSG_TYPE_RANKING_LIST);
        // 向前端推送消息
        qeubeeNewsProvider.pushToFront(id, RabbitMQPushMsgTypeConst.MQ_MSG_TYPE_PUBLIC_OPINION_COMPLIANCE);
        return id;
    }

    /**
     * 舆情绑定标签处理
     *
     * @param labelBindSetDTO 舆情绑定标签设置参数
     */
    @Override
    public boolean addLabels(LabelBindSetDTO labelBindSetDTO) {
        return publicOpinionTransfer.addLabels(labelBindSetDTO);

    }

    /**
     * 舆情标签删除处理
     *
     * @param labelBindSetDTO 舆情标签删除参数
     */
    @Override
    public boolean removeLabels(LabelBindDeleteServDTO labelBindSetDTO) {
        return publicOpinionTransfer.removeLabels(labelBindSetDTO);
    }

    /**
     * 债券详情获取
     *
     * @param id 舆情id
     * @return 债券详情
     */
    @Override
    public List<Object> findBonds(Integer id) {
        //通过舆情id查询出债券类型id和债券名称
        List<LabelBondsDTO> labelBonds = labelMapper.findBonds(id);
        Set<String> ids = labelBonds.stream().map(e -> RedisCacheNamesConst.PUBLIC_OPINION_FIND_BONDS + e.getId()).collect(Collectors.toSet());
        List<Object> objects = redisTemplate.opsForValue().multiGet(ids);
        if (!CollectionUtils.isEmpty(objects)) {
            objects.removeAll(Collections.singleton(null));
        }
        return objects;
    }

    /**
     * 舆情列表总条数检索
     *
     * @param totalQuery 总条数检索条件
     * @return 舆情数据总条数
     */
    @Override
    public Integer findTotal(PublicOpinionPageQueryDTO totalQuery) {
        // 参数转换为DTO
        PublicOpinionPageQueryServDTO ser = BeansMapper.convert(totalQuery, PublicOpinionPageQueryServDTO.class);
        //条件拼接
        QueryWrapper<PublicOpinion> queryWrapper = publicOpinionLogic.sqlCondition(ser);
        // 查询舆情总量
        return publicOpinionDao.selectCount(queryWrapper);
    }

    /**
     * 添加新闻与标签的关联关系
     *
     * @param id     新闻id
     * @param labels 标签集
     */
    @Override
    public void publicOpinionJoinLabel(Integer id, List<Label> labels) {
        //拼接标签
        StringJoiner joiner = new StringJoiner("','", "'", "'");
        labels.forEach(e -> joiner.add(e.getId() + ""));
        QueryWrapper<PublicOpinionLabel> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("public_opinion_id", id);
        queryWrapper.inSql("label_id", joiner.toString());
        //存在对应关系结果集
        List<PublicOpinionLabel> publicOpinionLabel = publicOpinionLabelLogic.list(queryWrapper);
        //以标签id分组
        Map<Integer, List<PublicOpinionLabel>> collect = publicOpinionLabel.stream().collect(Collectors.groupingBy(PublicOpinionLabel::getLabelId));
        //存参数标签集与结果集的差集
        List<PublicOpinionLabel> lbs = new ArrayList<>();
        labels.forEach(label -> {
            //不存在关联关系则新增
            if (!collect.containsKey(label.getId())) {
                PublicOpinionLabel pb = new PublicOpinionLabel();
                pb.setPublicOpinionId(id);
                pb.setLabelId(label.getId());
                pb.setCreateTime(LocalDateTime.now());
                pb.setUpdateTime(LocalDateTime.now());
                lbs.add(pb);
            }
        });
        if (lbs.size() != 0) {
            publicOpinionLabelLogic.saveBatch(lbs);
        }
    }

    /**
     * 将api返回债券集筛选
     *
     * @param labelBonds 标签集
     * @param summary    新闻摘要
     * @param content    新闻内容
     * @param flag       判断执行逻辑，true表示债卷详情查询，false表示舆情详情标签修改
     * @return 筛选完成相应前端的结果集
     */
    public List<Map<String, Object>> prioritization(List<LabelBondsDTO> labelBonds, String summary, String content, boolean flag) {
        //返回的债券结果集
        List<Map<String, Object>> bondList = new ArrayList<>();
        //如果标签集为空，则直接返回
        if (CollectionUtils.isEmpty(labelBonds)) {
            return bondList;
        }
        // 查询出债券的相关信息
        QueryWrapper<QbNewsLabelBondIssuerInfo> wrapper = new QueryWrapper<>();
        wrapper.in("label_id", labelBonds.stream().map(LabelBondsDTO::getId).collect(Collectors.toSet()));
        Map<Integer, QbNewsLabelBondIssuerInfo> issuerInfoMap = bondIssuerInfoService.list(wrapper).parallelStream()
            .collect(Collectors.toMap(QbNewsLabelBondIssuerInfo::getLabelId, e -> e, (k1, k2) -> k1));
        //遍历标签集，获取标签详情或者修改标签样式
        for (LabelBondsDTO labelBond : labelBonds) {
            //标签名
            String shortName = labelBond.getShortName();
            QbNewsLabelBondIssuerInfo info = issuerInfoMap.get(labelBond.getId());
            if (info == null) {
                continue;
            }
            if (flag) {
                Map<String, Object> map = new HashMap<>(16);
                map.put(ApiDtoConsts.BOND_KEY, info.getBondKey());
                map.put(ApiDtoConsts.LISTED_MARKET, info.getListedMarket());
                //map.put(ApiDtoConsts.SHORT_NAME,shortName);
                bondList.add(map);
            } else {
                //根据前端需求修改后的标签
                String newString = String.format(MoodConst.BOND, info.getBondKey(), info.getListedMarket(), shortName);
                //新的摘要值与内容值
                summary = summary.replace(shortName, newString);
                content = content.replace(shortName, newString);
            }
        }
        //flag == true 表示债卷详情查询
        if (flag) {
            return bondList;
        }
        Map<String, Object> moodMap = new HashMap<>(16);
        moodMap.put("summary", summary);
        moodMap.put("content", content);
        bondList.add(moodMap);
        return bondList;
    }


    @Override
    @Cacheable(value = RedisCacheNamesConst.GET_PO_DISTRIBUTION, key = "#column+':'+#rank")
    public Map<String, List<Map<String, String>>> getPoOrder(String column,
                                                             Integer rank) {
        // 情绪评分起止范围
        Integer moodStart = null, moodEnd = null;
        if (rank != null) {
            MoodEnum moodByRank = MoodEnum.getMoodByRank(rank);
            moodStart = moodByRank.getMoodStart();
            moodEnd = moodByRank.getMoodEnd();
        }
        Map<String, List<Map<String, String>>> result = new HashMap<>(6);
        for (PoRankTimeDimensionEnum value : PoRankTimeDimensionEnum.values()) {
            result.put(value.getName(), publicOpinionDao.getPoOrder(column, value.getDay(), moodStart, moodEnd));
        }
        return result;
    }

    @Override
    @Cacheable(value = RedisCacheNamesConst.GET_PO_DISTRIBUTION,
        key = "#isDesc",
        condition = "(#industry == null || #industry.size() == 0) && (#followGroup == null || #followGroup.size() == 0)")
    public Map<String, List<PoIssuerRankDTO>> getPoIssuerOrder(Integer isDesc,
                                                               List<String> industry,
                                                               List<String> followGroup) {

        Map<String, List<PoIssuerRankDTO>> result = new HashMap<>(8);
        // 按照时间维度查询
        for (PoRankTimeDimensionEnum value : PoRankTimeDimensionEnum.values()) {
            List<PoIssuerRankDTO> poIssuerOrder = publicOpinionDao.getPoIssuerOrder(value.getDay(), isDesc, industry, followGroup);
            // 设置情绪等级
            poIssuerOrder.forEach(e -> e.setArticleScore(MoodEnum.getRank(e.getArticleScore())));
            result.put(value.getName(), poIssuerOrder);
        }
        return result;
    }

    @Override
    public boolean updateBatchById(List<PublicOpinion> publicOpinions) {
        publicOpinions.forEach(item -> item.setLabels(null));
        return publicOpinionLogic.updateBatchById(publicOpinions);
    }
}