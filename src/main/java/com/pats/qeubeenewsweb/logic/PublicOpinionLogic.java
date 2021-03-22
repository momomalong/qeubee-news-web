package com.pats.qeubeenewsweb.logic;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.service.IService;
import com.pats.qeubeenewsweb.entity.PublicOpinion;
import com.pats.qeubeenewsweb.entity.PublicOpinionLabel;
import com.pats.qeubeenewsweb.entity.bo.PublicOpinionDetailsBO;
import com.pats.qeubeenewsweb.entity.dto.publicopinion.PublicOpinionPageQueryServDTO;

import java.util.List;
import java.util.Map;
import java.util.Set;

/**
 * <p>Title: PublicOpinionLogic</p>
 * <p>Description: 舆情业务接口</p>
 *
 * @author :wenjie.pei
 * @version :1.0.0
 * @since :2020.08.20
 */
public interface PublicOpinionLogic extends IService<PublicOpinion> {

    /**
     * 舆情列表分页检索 by condition
     *
     * @param pageQuery 分页检索条件
     * @return 当前页舆情数据
     */
    IPage<PublicOpinion> findByPage(PublicOpinionPageQueryServDTO pageQuery);

    /**
     * 舆情详情检索 by id
     *
     * @param id 舆情id
     * @return 舆情详情
     */
    PublicOpinionDetailsBO findById(Integer id);

    /**
     * 舆情更新时间更改
     *
     * @param publicOpinion 舆情更新参数
     * @return 更新后的舆情详情
     */
    PublicOpinionDetailsBO modifyByCondition(PublicOpinion publicOpinion);


    /**
     * 根据ID更新
     *
     * @param publicOpinion 参数
     * @return 结果
     */
    @Override
    boolean updateById(PublicOpinion publicOpinion);

    /**
     * 标签的不同分类取舆情的并集
     * 过滤 poLabelMap 不满足条件 conditionLabelMap 的舆情
     *
     * @param poLabelMap        K：舆情ID  V：舆情相关的label
     * @param conditionLabelMap 条件：每个set集合都是一个分类的标签
     * @return 满足条件的舆情ID
     */
    Set<Integer> filterPoIdByLabelType(Map<Integer, List<PublicOpinionLabel>> poLabelMap, List<Set<Integer>> conditionLabelMap);
}