package com.pats.qeubeenewsweb.otherservice.impl;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.pats.qeubeenewsweb.entity.bo.PublicOpinionDetailsBO;
import com.pats.qeubeenewsweb.entity.bo.RankingListNewsBO;
import com.pats.qeubeenews.common.dto.ResultDTO;
import com.pats.qeubeenewsweb.entity.dto.publicopinion.PublicOpinionPageQueryServDTO;
import com.pats.qeubeenewsweb.entity.dto.publicopinion.PublicOpinionSetServDTO;
import com.pats.qeubeenewsweb.entity.PublicOpinion;
import com.pats.qeubeenewsweb.logic.PublicOpinionLogic;
import com.pats.qeubeenewsweb.logic.RankingListLogic;
import com.pats.qeubeenewsweb.otherservice.PublicOpinionService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

/**
 * <p>
 * Title: PublicOpinionServiceImpl
 * </p>
 * <p>
 * Description: 舆情新闻业务类
 * </p>
 *
 * @author :wenjie.pei
 * @version :1.0.0
 * @since :2020.08.20
 */

@RequiredArgsConstructor
@Service
public class PublicOpinionServiceImpl implements PublicOpinionService {

    private final PublicOpinionLogic publicOpinionLogic;

    private final RankingListLogic rankingListLogic;

    /**
     * 舆情列表分页检索 by condition
     *
     * @param pageQuery 分页检索条件
     * @return 当前页舆情数据
     */
    @Override
    public ResultDTO<IPage<PublicOpinion>> findByPage(PublicOpinionPageQueryServDTO pageQuery) {
        return ResultDTO.success(publicOpinionLogic.findByPage(pageQuery));
    }

    /**
     * 舆情详情检索 by id
     *
     * @param id 舆情id
     * @return 舆情详情
     */
    @Override
    public ResultDTO<PublicOpinionDetailsBO> findById(Integer id) {
        return ResultDTO.success(publicOpinionLogic.findById(id));
    }

    /**
     * 舆情合规设置
     *
     * @param publicOpinionSetDTO 合规设置参数
     * @return 更新的舆情id
     */
    @Override
    public ResultDTO<Integer> modifyCompliance(PublicOpinionSetServDTO publicOpinionSetDTO) {
        // 获取舆情详情
        PublicOpinionDetailsBO publicOpinionDetails = publicOpinionLogic.findById(publicOpinionSetDTO.getId());
        // 构造舆情排行榜黑名单数据实体
        RankingListNewsBO rankingListNews = new RankingListNewsBO();
        rankingListNews.setPublicOpinionId(publicOpinionDetails.getId());
        rankingListNews.setTitle(publicOpinionDetails.getTitle());
        // 设置舆情为合规, 则移除对该舆情禁止排行的缓存
        if (publicOpinionSetDTO.getCompliance() == 1) {
            rankingListLogic.removeNonComlianceNews(rankingListNews);
        } else {
            rankingListLogic.addNonComlianceNews(rankingListNews);
        }
        // 构造舆情entity类
        PublicOpinion publicOpinion = new PublicOpinion();
        // 设置舆情id
        publicOpinion.setId(publicOpinionSetDTO.getId());
        // 设置舆情合规性
        publicOpinion.setCompliance(publicOpinionSetDTO.getCompliance());
        // 设置舆情新闻状态更新时间
        publicOpinion.setUpdateTime(publicOpinionSetDTO.getUpdateTime());

        return ResultDTO.success(publicOpinionLogic.modifyByCondition(publicOpinion).getId());
    }

}