package com.pats.qeubeenewsweb.logic.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.pats.qeubeenews.common.exception.BaseKnownException;
import com.pats.qeubeenews.common.utils.BeansMapper;
import com.pats.qeubeenewsweb.consts.DataBaseSourceConst;
import com.pats.qeubeenewsweb.consts.RedisCacheNamesConst;
import com.pats.qeubeenewsweb.entity.PublicOpinion;
import com.pats.qeubeenewsweb.entity.PublicOpinionLabel;
import com.pats.qeubeenewsweb.entity.bo.PublicOpinionDetailsBO;
import com.pats.qeubeenewsweb.entity.dto.publicopinion.PublicOpinionPageQueryServDTO;
import com.pats.qeubeenewsweb.enums.MoodEnum;
import com.pats.qeubeenewsweb.logic.PublicOpinionLabelLogic;
import com.pats.qeubeenewsweb.logic.PublicOpinionLogic;
import com.pats.qeubeenewsweb.mapper.PublicOpinionDao;
import com.pats.qeubeenewsweb.mapper.PublicOpinionLabelDao;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.CacheEvict;
import org.springframework.stereotype.Component;
import org.springframework.util.CollectionUtils;
import org.springframework.util.StringUtils;

import java.time.LocalDate;
import java.util.*;
import java.util.stream.Collectors;

/**
 * <p>Title: PublicOpinionServiceImpl</p>
 * <p>Description: 舆情新闻业务类</p>
 *
 * @author :wenjie.pei
 * @version :1.0.0
 * @since :2020.08.20
 */
@Component
@RequiredArgsConstructor
public class PublicOpinionLogicImpl extends ServiceImpl<PublicOpinionDao, PublicOpinion> implements PublicOpinionLogic {

    @Autowired
    private PublicOpinionDao publicOpinionDao;

    @Autowired
    private PublicOpinionLabelLogic publicOpinionLabelLogic;

    @Autowired
    private PublicOpinionLabelDao publicOpinionLabelDao;


    /**
     * 舆情列表分页检索 by condition
     *
     * @param pageQuery 分页检索条件
     * @return 当前页舆情数据
     */
    @Override
    public IPage<PublicOpinion> findByPage(PublicOpinionPageQueryServDTO pageQuery) {
        // 设置分页参数
        IPage<PublicOpinion> page = new Page<>(pageQuery.getPageNum(), pageQuery.getDataCount());
        //条件拼接
        QueryWrapper<PublicOpinion> queryWrapper = this.sqlCondition(pageQuery);
        // 默认按照时间倒叙排序
        queryWrapper.orderBy(true, false, DataBaseSourceConst.COL_PUBLIC_OPINION_CREATE_TIME);
        // 设置自定义排序方式
        if (pageQuery.isSort()) {
            pageQuery.getSortInfo().forEach(sort -> {
                queryWrapper.orderBy(true, sort.isDirection(), sort.getSortCol());
            });
        }
        //计算分页起始条数
        int pageNum;
        if (pageQuery.getPageNum() <= 0) {
            pageNum = 0;
        } else {
            pageNum = (pageQuery.getPageNum() - 1) * pageQuery.getDataCount();
        }
        queryWrapper.last("limit " + pageNum + "," + pageQuery.getDataCount() + "");
        // 查询分页舆情数据
        List<PublicOpinion> publicOpinionByQuery = publicOpinionDao.getPublicOpinionByQuery(queryWrapper);
        //舆情id
        //String ids = publicOpinionByQuery.parallelStream().map(e -> String.valueOf(e.getId())).collect(Collectors.joining("','", "'", "'"));
        //获取标签集
        //Map<Integer, List<PublicOpinionLabel>> labelMap = publicOpinionLabelDao.getByPOId(ids).parallelStream().collect(Collectors.groupingBy(PublicOpinionLabel::getPublicOpinionId));
        //判断总评分，得到情绪级别
        for (PublicOpinion opinion : publicOpinionByQuery) {
            //opinion.setLabels(Optional.ofNullable(labelMap.get(opinion.getId())).orElse(new ArrayList<>()));
            //修改涉及企业简称
            String trim = opinion.getMentionComShortName().trim();
            if(!StringUtils.isEmpty(trim)){
                if (trim.endsWith(",")) {
                    trim = trim.substring(0,trim.lastIndexOf(","));
                }
                opinion.setMentionComShortName(trim.replace(",","，"));
            }
            opinion.setArticleScore(MoodEnum.getRank(opinion.getArticleScore()));
        }
        page.setRecords(publicOpinionByQuery);
        page.setSize(publicOpinionByQuery.size());
        // 查询分页舆情
        return page;
    }

    /**
     * @param pageQuery 参数DTO
     * @return 查询条件QueryWrapper对象
     */
    public QueryWrapper<PublicOpinion> sqlCondition(PublicOpinionPageQueryServDTO pageQuery) {
        // 设置动态查询条件
        QueryWrapper<PublicOpinion> query = new QueryWrapper<>();

        // 构造标签、地区、行业条件、关注组，返回舆情id集合
        if (!CollectionUtils.isEmpty(pageQuery.getIssuerProvince())
            || !CollectionUtils.isEmpty(pageQuery.getLabel())
            || !CollectionUtils.isEmpty(pageQuery.getIndustry())
            || !CollectionUtils.isEmpty(pageQuery.getConcernGroup())) {

            int count = this.constructLabelQuery(pageQuery);
            List<Integer> ids = publicOpinionLabelDao.getPublicOpinionId(pageQuery, count);
            //当舆情id集合不为空则拼接in查询
            ids.remove(null);
            if (CollectionUtils.isEmpty(ids)) {
                query.eq("1", "2");
                return query;
            }
            query.in(DataBaseSourceConst.ID, ids);
        }

        // 设置时间范围当作筛选条件
        if (!StringUtils.isEmpty(pageQuery.getStartDate()) && !StringUtils.isEmpty(pageQuery.getEndDate())) {
            String endDate = pageQuery.getEndDate();
            endDate = LocalDate.parse(endDate).plusDays(1L).toString();
            query.between(DataBaseSourceConst.COL_PUBLIC_OPINION_CREATE_TIME, pageQuery.getStartDate(), endDate);
        }

        // 设置搜索词动态条件
        if (!StringUtils.isEmpty(pageQuery.getKeyword())) {
            // 获得搜索关键字
            String keyword = pageQuery.getKeyword().trim();
            // id、标题、内容、债券模糊搜索
            query.and(wrapper -> wrapper
                .like(DataBaseSourceConst.COL_PUBLIC_OPINION_TITLE, keyword).or()
                .like(DataBaseSourceConst.COL_PUBLIC_OPINION_BOND_CODE, keyword).or()
                .like(DataBaseSourceConst.COL_PUBLIC_OPINION_SUMMARY, keyword).or()
                .like(DataBaseSourceConst.COL_PUBLIC_OPINION_REFER_BOND, keyword).or()
                .like(DataBaseSourceConst.COL_PUBLIC_OPINION_MAIN_BODY, keyword).or()
                .like(DataBaseSourceConst.COL_PUBLIC_OPINION_SOURCE, keyword).or()
                .like(DataBaseSourceConst.COL_PUBLIC_OPINION_ISSUER_NAME, keyword).or()
                .like(DataBaseSourceConst.COL_PUBLIC_OPINION_MENTION_COM, keyword)).or()
                .like(DataBaseSourceConst.COL_PUBLIC_OPINION_SHORT_NAME, keyword).or()
                .like(DataBaseSourceConst.COL_PUBLIC_OPINION_MENTION_COM_SHORT_NAME, keyword);
        }
        // 新闻来源
        if (!StringUtils.isEmpty(pageQuery.getSource())) {
            query.like(DataBaseSourceConst.COL_PUBLIC_OPINION_SOURCE, pageQuery.getSource());
        }
        // 设置合规性为搜索条件
        if (Objects.nonNull(pageQuery.getCompliance())) {
            query.eq(DataBaseSourceConst.COL_PUBLIC_OPINION_COMPLIANCE, pageQuery.getCompliance());
        }
        return query;
    }

    /**
     * 舆情详情检索 by id(包含舆情关联数据)
     *
     * @param id 舆情id
     * @return 舆情详情
     */
    @Override
    public PublicOpinionDetailsBO findById(Integer id) {
        // 通过舆情id 获取舆情详情
        PublicOpinion publicOpinion = getById(id);
        if (publicOpinion == null) {
            return new PublicOpinionDetailsBO();
        }
        //修改提及企业简称
        String trim = publicOpinion.getMentionComShortName().trim();
        if(!StringUtils.isEmpty(trim)){
            if (trim.endsWith(",")) {
                trim = trim.substring(0,trim.lastIndexOf(","));
            }
            publicOpinion.setMentionComShortName(trim.replace(",","，"));
        }
        //设置标签集
        publicOpinion.setLabels(Optional.ofNullable(publicOpinionLabelDao.getByPublicOpinionId(id)).orElse(new ArrayList<>()));
        // 转化为舆情详情业务类
        PublicOpinionDetailsBO publicOpinionBO = BeansMapper.convert(publicOpinion, PublicOpinionDetailsBO.class);
        // 因为labels有一个相关度，没有这个字段，PY就以出现次数最多的先存入，所以这里需要倒序
        Collections.reverse(publicOpinionBO.getLabels());
        // 构造检索条件
        QueryWrapper<PublicOpinion> query = new QueryWrapper<>();

        // 获取该舆情绑定的标签 id列表
        List<Integer> labelIds = publicOpinionBO.getLabels().stream().map(PublicOpinionLabel::getLabelId)
            .collect(Collectors.toList());
        // 过滤不显示的标签
        labelIds = publicOpinionDao.selectLabelIdIsClassify(labelIds);
        if (labelIds.size() > 0) {
            // 关联label 绑定关系表, 进行关联查询
            String labelStrs = labelIds.stream().map(String::valueOf).collect(Collectors.joining(","));
            // 舆情id包含在, 标签绑定的舆情id结果集内
            query.inSql(DataBaseSourceConst.ID,
                "select public_opinion_id from qb_news_public_opinion_label where label_id in (" + labelStrs + ")");
            // 相关舆情, 不包含当前舆情
            query.ne(DataBaseSourceConst.ID, id);
            // 以时间倒叙排序, 获取
            query.orderByDesc(DataBaseSourceConst.COL_PUBLIC_OPINION_CREATE_TIME).last("limit 0,10");

            // 相关舆情列表获取
            List<PublicOpinion> publicOpinions = publicOpinionDao.getPublicOpinionByQuery(query);
            //设置标签集
            Map<Integer, List<PublicOpinionLabel>> idMap = publicOpinionLabelDao.getByPOId(publicOpinions
                    .parallelStream().map(e -> String.valueOf(e.getId())).collect(Collectors.joining("','", "'", "'")))
                    .parallelStream().collect(Collectors.groupingBy(PublicOpinionLabel::getPublicOpinionId));
            publicOpinions.forEach(item -> item.setLabels(Optional.ofNullable(idMap.get(item.getId())).orElse(new ArrayList<>())));
            // 装载相关舆情
            publicOpinionBO.setRefPublicOpinion(publicOpinions);
        } else {
            publicOpinionBO.setRefPublicOpinion(new ArrayList<>());
        }
        return publicOpinionBO;
    }


    /**
     * 供查交集使用
     *
     * @param pageQuery 参数对象
     */
    private int constructLabelQuery(PublicOpinionPageQueryServDTO pageQuery) {
        int count = 0;
        if (pageQuery == null) {
            return count;
        }
        if (!CollectionUtils.isEmpty(pageQuery.getLabel())) {
            ++count;
        }
        if (!CollectionUtils.isEmpty(pageQuery.getConcernGroup())) {
            ++count;
        }
        if (!CollectionUtils.isEmpty(pageQuery.getIndustry()) || !CollectionUtils.isEmpty(pageQuery.getIssuerProvince())) {
            ++count;
        }
        return count;
    }

    /**
     * 舆情修改
     *
     * @param publicOpinion 舆情设置参数
     * @return 更新的舆情id
     */
    @CacheEvict(value = RedisCacheNamesConst.PUBLIC_OPINION_FIND_BY_ID, key = "#publicOpinion.id")
    @Override
    public PublicOpinionDetailsBO modifyByCondition(PublicOpinion publicOpinion) {
        if (!updateById(publicOpinion)) {
            throw new BaseKnownException(10002, "更新失败");
        }
        return findById(publicOpinion.getId());
    }

    @Override
    @CacheEvict(value = RedisCacheNamesConst.PUBLIC_OPINION_FIND_BY_ID, key = "#publicOpinion.id")
    public boolean updateById(PublicOpinion publicOpinion) {
        return super.updateById(publicOpinion);
    }

    @Override
    public Set<Integer> filterPoIdByLabelType(Map<Integer, List<PublicOpinionLabel>> poLabelMap, List<Set<Integer>> conditionLabelMap) {
        Set<Integer> poIds = new HashSet<>();
        for (Map.Entry<Integer, List<PublicOpinionLabel>> entry : poLabelMap.entrySet()) {
            List<PublicOpinionLabel> value = entry.getValue();
            Integer poId = entry.getKey();
            // 标签同分类取并集，不同取交集
            boolean isUsable = true;
            for (Set<Integer> e : conditionLabelMap) {
                isUsable = false;
                for (PublicOpinionLabel label : value) {
                    if (e.contains(label.getLabelId())) {
                        isUsable = true;
                        break;
                    }
                }
                if (!isUsable) {
                    break;
                }
            }
            if (isUsable) {
                poIds.add(poId);
            }
        }
        return poIds;
    }

}