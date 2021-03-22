package com.pats.qeubeenewsweb.otherservice;

import com.pats.qeubeenews.common.dto.ResultDTO;
import com.pats.qeubeenewsweb.entity.dto.label.LabelBindDeleteServDTO;
import com.pats.qeubeenewsweb.entity.dto.label.LabelBindSetServDTO;

/**
 * <p>Title: PublicOpinionLabelService</p>
 * <p>Description: 舆情、标签绑定业务接口</p>
 *
 * @author :wenjie.pei
 * @version :1.0.0
 * @since :2020.08.26
 */
public interface PublicOpinionLabelService {

    /**
     * 舆情标签绑定
     *
     * @param labelBindSetDTO 绑定标签参数
     * @return api调用结果
     */
    ResultDTO<Boolean> addLabels(LabelBindSetServDTO labelBindSetDTO);


    /**
     * 舆情标签移除
     *
     * @param removeDTO 标签删除参数
     * @return api调用结果
     */
    ResultDTO<Boolean> removeLabels(LabelBindDeleteServDTO removeDTO);
}