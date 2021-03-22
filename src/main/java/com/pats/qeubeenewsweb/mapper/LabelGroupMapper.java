package com.pats.qeubeenewsweb.mapper;

import com.pats.qeubeenewsweb.entity.bo.LabelGroupQueryBO;
import com.pats.qeubeenewsweb.entity.LabelGroup;

import java.util.List;

/**
 * <p>Title: LabelGroupMapper</p>
 * <p>Description: 标签组查询接口</p>
 *
 * @author :wenjie.pei
 * @version : 1.0.0
 * @since :2020.10.23
 */
public interface LabelGroupMapper {

    /**
     * 条件查询标签及标签分类
     *
     * @param labelGroup 查询条件
     * @return 结果集
     */
    List<LabelGroup> findByLabelType(LabelGroupQueryBO labelGroup);

}
