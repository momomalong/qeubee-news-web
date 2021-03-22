package com.pats.qeubeenewsweb.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.pats.qeubeenewsweb.entity.PublicOpinionLabel;
import com.pats.qeubeenewsweb.entity.dto.publicopinion.PublicOpinionPageQueryServDTO;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * <p>Title: PublicOpinionDao</p>
 * <p>Descripion: 舆情持久化接口</p>
 *
 * @author :wenjie.pei
 * @version :1.0.0
 * @since :2020.08.25
 */
public interface PublicOpinionLabelDao extends BaseMapper<PublicOpinionLabel> {

    List<PublicOpinionLabel> getByPublicOpinionId(@Param("publicOpinionId") Integer publicOpinionId);

    /**
     * 查出舆情条件的交集，返回ID，供分页列表查询
     *
     * @param issuerSql 参数对象
     * @param count     交集标识
     * @return 结果ID
     */
    List<Integer> getPublicOpinionId(@Param("dto") PublicOpinionPageQueryServDTO issuerSql,
                                     @Param("count") int count);

    /**
     * 根据舆情id 获取所以新闻关联label标签关系
     *
     * @param poid 舆情id
     * @return 关系结果集
     */
    List<PublicOpinionLabel> getByPOId(@Param("poid") String poid);
}