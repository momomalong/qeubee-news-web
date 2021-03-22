package com.pats.qeubeenewsweb.service;

import com.pats.qeubeenewsweb.entity.Label;
import com.pats.qeubeenewsweb.entity.PublicOpinion;
import com.pats.qeubeenewsweb.entity.dto.PageDTO;
import com.pats.qeubeenewsweb.entity.dto.label.LabelBindDeleteServDTO;
import com.pats.qeubeenewsweb.entity.dto.label.LabelBindSetDTO;
import com.pats.qeubeenewsweb.entity.dto.publicopinion.PoIssuerRankDTO;
import com.pats.qeubeenewsweb.entity.dto.publicopinion.PublicOpinionDTO;
import com.pats.qeubeenewsweb.entity.dto.publicopinion.PublicOpinionDetailsDTO;
import com.pats.qeubeenewsweb.entity.dto.publicopinion.PublicOpinionPageQueryDTO;
import com.pats.qeubeenewsweb.entity.dto.publicopinion.PublicOpinionSetDTO;

import java.util.List;
import java.util.Map;

/**
 * <p>Title: PublicOpinionWebService</p>
 * <p>Description: 舆情新闻web端业务接口</p>
 *
 * @author :wenjie.pei
 * @version :1.0.0
 * @since :2020.08.20
 */
public interface PublicOpinionWebService {

    /**
     * 舆情列表分页检索 by condition
     *
     * @param pageQuery 分页检索条件
     * @return 当前页舆情数据
     */
    PageDTO<PublicOpinionDTO> findByPage(PublicOpinionPageQueryDTO pageQuery);

    /**
     * 舆情详情检索 by id
     *
     * @param id 舆情id
     * @return 舆情详情
     */
    PublicOpinionDetailsDTO findById(Integer id);

    /**
     * 舆情合规设置
     *
     * @param publicOpinionSetDTO 合规设置参数
     * @return 舆情id
     */
    Integer modifyCompliance(PublicOpinionSetDTO publicOpinionSetDTO);

    /**
     * 舆情标签绑定业务
     *
     * @param labelBindSetDTO 绑定标签参数
     * @return boolean
     */
    boolean addLabels(LabelBindSetDTO labelBindSetDTO);


    /**
     * 舆情标签删除
     *
     * @param labelBindSetDTO 舆情标签删除参数
     * @return boolean
     */
    boolean removeLabels(LabelBindDeleteServDTO labelBindSetDTO);


    /**
     * 债卷名称查询
     *
     * @param id 舆情id
     * @return 债卷详情
     */
    List<Object> findBonds(Integer id);

    /**
     * 舆情列表总条数检索
     *
     * @param totalQuery 总条数检索条件
     * @return 舆情数据总条数
     */
    Integer findTotal(PublicOpinionPageQueryDTO totalQuery);

    /**
     * 添加新闻与标签关联关系
     *
     * @param id      新闻id
     * @param labels1 标签集
     */
    void publicOpinionJoinLabel(Integer id, List<Label> labels1);


    /**
     * 获取日周月分布排行
     *
     * @param column 条件列
     * @param rank   情绪等级
     * @return 结果
     */
    Map<String, List<Map<String, String>>> getPoOrder(String column, Integer rank);

    /**
     * 获取主体排名
     *
     * @param isDesc      排序条件 desc asc
     * @param industry    地区
     * @param followGroup 关注组
     * @return 结果集
     */
    Map<String, List<PoIssuerRankDTO>> getPoIssuerOrder(Integer isDesc,
                                                        List<String> industry,
                                                        List<String> followGroup);

    /**
     * 根据舆情id批量修改publicOpinion表数据
     *
     * @param publicOpinions 舆情数据对象
     */
    boolean updateBatchById(List<PublicOpinion> publicOpinions);
}