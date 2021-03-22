package com.pats.qeubeenewsweb.service;

import com.pats.qeubeenewsweb.entity.dto.BaseSubConditionDTO;

/**
 * <p>Title: 订阅服务接口</p>
 * <p>Description: </p>
 * 
 * @author :wenjie.pei
 * @since  :2020.09.15
 * @version:1.0.0
 */
public interface SubScribeService {

    boolean subScribeNews(BaseSubConditionDTO baseSubCondition, String userId);
    
}
