package com.pats.qeubeenewsweb.logic;

import com.baomidou.mybatisplus.extension.service.IService;
import com.pats.qeubeenewsweb.entity.bo.PublicOpinionLabelBindBO;
import com.pats.qeubeenewsweb.entity.bo.PublicOpinionLabelDeleteBO;
import com.pats.qeubeenewsweb.entity.PublicOpinionLabel;

/**
 * <p>Title: PublicOpinionLabelLogic</p>
 * <p>Description: 舆情、标签绑定业务接口</p>
 *
 * @author :wenjie.pei
 * @version :1.0.0
 * @since :2020.08.26
 */
public interface PublicOpinionLabelLogic extends IService<PublicOpinionLabel> {

    /**
     * 舆情标签绑定
     *
     * @param labelBindSetBO 绑定标签参数
     * @return api调用结果
     */
    void addLabels(PublicOpinionLabelBindBO labelBindSetBO);

    /**
     * 舆情标签移除
     *
     * @param removeBO 标签删除参数
     * @return api调用结果
     */
    void removeLabels(PublicOpinionLabelDeleteBO removeBO);

}