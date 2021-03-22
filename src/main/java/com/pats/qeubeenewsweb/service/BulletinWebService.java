package com.pats.qeubeenewsweb.service;

import com.pats.qeubeenewsweb.entity.dto.PageDTO;
import com.pats.qeubeenewsweb.entity.dto.bulletin.BulletinDTO;
import com.pats.qeubeenewsweb.entity.dto.bulletin.BulletinDetailDTO;
import com.pats.qeubeenewsweb.entity.dto.bulletin.BulletinLabelBindSetWebDTO;
import com.pats.qeubeenewsweb.entity.dto.bulletin.BulletinPageQueryDTO;
import com.pats.qeubeenewsweb.entity.dto.bulletin.BulletinSetDTO;
import org.springframework.web.bind.annotation.RequestParam;

/**
 * @author : qintai.ma
 * @version :1.0.0
 * @date : create in 2020/8/25 11:25
 */
public interface BulletinWebService {
    /**
     * 检索分页公告列表 by condition
     *
     * @param pageQuery 公告检索条件
     * @return 当前也公告列表
     */
    PageDTO<BulletinDTO> findByPage(BulletinPageQueryDTO pageQuery);


    /**
     * 检索公告详情 by id
     *
     * @param id 公告id
     * @return 公告详情
     */
    BulletinDetailDTO findById(@RequestParam Integer id);

    /**
     * 公告合规设置
     *
     * @param bulletinOpinionSetDTO 合规设置参数
     * @return 公告id
     */
    Boolean modifyCompliance(BulletinSetDTO bulletinOpinionSetDTO);

    /**
     * 公告标签绑定
     *
     * @param labelBindSetDTO 绑定标签参数
     * @return 公告id
     */
    Boolean addLabels(BulletinLabelBindSetWebDTO labelBindSetDTO);

    /**
     * 公告标签移除
     *
     * @param labelBindSetDTO 1
     * @return 1
     */
    Boolean removeLabels(BulletinLabelBindSetWebDTO labelBindSetDTO);
}
