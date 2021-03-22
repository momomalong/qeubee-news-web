package com.pats.qeubeenewsweb.mapper;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.pats.qeubeenewsweb.entity.PublicOpinion;
import com.pats.qeubeenewsweb.entity.dto.publicopinion.PoIssuerRankDTO;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

/**
 * <p>Title: PublicOpinionDao</p>
 * <p>Descripion: 舆情持久化接口</p>
 *
 * @author :wenjie.pei
 * @version :1.0.0
 * @since :2020.08.25
 */
public interface PublicOpinionDao extends BaseMapper<PublicOpinion> {

    /**
     * 条件、分页检索舆情
     *
     * @param page         分页参数
     * @param queryWrapper 查询条件
     * @return 分页舆情数据
     */
    IPage<PublicOpinion> getPublicOpinionPage(Page<PublicOpinion> page, @Param("ew") QueryWrapper<PublicOpinion> queryWrapper);

    /**
     * 获取舆情列表
     *
     * @param queryWrapper 查询条件
     * @return 舆情列表
     */
    List<PublicOpinion> getPublicOpinionByQuery(@Param("ew") QueryWrapper<PublicOpinion> queryWrapper);

    /**
     * 查询LabelId是否显示，返回显示（Classify = 2）
     * 查询label写在这里写是因为架构问题，业务代码又必须在这里过滤
     *
     * @param labelIds labelIds
     * @return 过滤后显示的labelId
     */
    List<Integer> selectLabelIdIsClassify(@Param("labelIds") List<Integer> labelIds);

    /**
     * 获取对应舆情对应排名
     *
     * @param column    列
     * @param day       天数维度
     * @param moodStart 情绪评分   起
     * @param moodEnd   情绪评分   止
     * @return 结果
     */
    List<Map<String, String>> getPoOrder(@Param("column") String column,
                                         @Param("day") int day,
                                         @Param("moodStart") Integer moodStart,
                                         @Param("moodEnd") Integer moodEnd);

    /**
     * 获取对应舆情主体排名
     *
     * @param day         天数维度
     * @param order       排序规则  desc asc
     * @param industry    行业
     * @param followGroup 关注组查询
     * @return 结果
     */
    List<PoIssuerRankDTO> getPoIssuerOrder(@Param("day") int day,
                                           @Param("order") Integer order,
                                           @Param("industry") List<String> industry,
                                           @Param("follow") List<String> followGroup);

}