package com.pats.qeubeenewsweb.otherservice.impl;

import com.pats.qeubeenews.common.dto.ResultDTO;
import com.pats.qeubeenewsweb.entity.dto.label.LabelBindDeleteServDTO;
import com.pats.qeubeenewsweb.entity.dto.label.LabelBindSetServDTO;
import com.pats.qeubeenewsweb.logic.PublicOpinionLabelLogic;
import com.pats.qeubeenewsweb.otherservice.PublicOpinionLabelService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.CollectionUtils;

/**
 * <p>Title: PublicOpinionServiceImpl</p>
 * <p>Description: 舆情新闻业务类</p>
 *
 * @author :wenjie.pei
 * @version :1.0.0
 * @since :2020.08.20
 */

@RequiredArgsConstructor
@Service
public class PublicOpinionLabelServiceImpl implements PublicOpinionLabelService {

    private final PublicOpinionLabelLogic labelLogic;

    /**
     * 舆情标签绑定
     *
     * @param labelBindSetDTO 绑定标签参数列表
     * @return api调用结果
     */
    @Override
    public ResultDTO<Boolean> addLabels(LabelBindSetServDTO labelBindSetDTO) {
        if (labelBindSetDTO.getLabelBind().size() > 0) {
            labelBindSetDTO.getLabelBind().forEach(labelLogic::addLabels);
        }
        return ResultDTO.success(true);
    }

    /**
     * 舆情标签移除
     *
     * @param removeDTO 移除标签参数
     * @return api调用结果
     */
    @Transactional(rollbackFor = Exception.class, propagation = Propagation.REQUIRED)
    @Override
    public ResultDTO<Boolean> removeLabels(LabelBindDeleteServDTO removeDTO) {
        if (!CollectionUtils.isEmpty(removeDTO.getLabelBind())) {
            removeDTO.getLabelBind().forEach(labelLogic::removeLabels);
        }
        return ResultDTO.success(true);
    }

}