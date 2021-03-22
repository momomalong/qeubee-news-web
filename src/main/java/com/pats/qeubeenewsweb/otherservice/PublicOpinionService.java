package com.pats.qeubeenewsweb.otherservice;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.pats.qeubeenewsweb.entity.bo.PublicOpinionDetailsBO;
import com.pats.qeubeenews.common.dto.ResultDTO;
import com.pats.qeubeenewsweb.entity.dto.publicopinion.PublicOpinionPageQueryServDTO;
import com.pats.qeubeenewsweb.entity.dto.publicopinion.PublicOpinionSetServDTO;
import com.pats.qeubeenewsweb.entity.PublicOpinion;

/**
 * <p>Title: PublicOpinionService</p>
 * <p>Description: 舆情业务接口</p>
 *
 * @author :wenjie.pei
 * @version :1.0.0
 * @since :2020.08.20
 */
public interface PublicOpinionService {

    /**
     * 舆情列表分页检索 by condition
     *
     * @param pageQuery 分页检索条件
     * @return 当前页舆情数据
     */
    ResultDTO<IPage<PublicOpinion>> findByPage(PublicOpinionPageQueryServDTO pageQuery);

    /**
     * 舆情详情检索 by id
     *
     * @param id 舆情id
     * @return 舆情详情
     */
    ResultDTO<PublicOpinionDetailsBO> findById(Integer id);

    /**
     * 舆情标签移除
     *
     * @param publicOpinionSetDTO 移除标签参数
     */
    ResultDTO<Integer> modifyCompliance(PublicOpinionSetServDTO publicOpinionSetDTO);

}