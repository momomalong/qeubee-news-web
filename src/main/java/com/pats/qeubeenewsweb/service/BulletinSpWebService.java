package com.pats.qeubeenewsweb.service;

import com.pats.qeubeenewsweb.entity.dto.PageDTO;
import com.pats.qeubeenewsweb.entity.dto.bulletin.BulletinDetailSpDTO;
import com.pats.qeubeenewsweb.entity.dto.bulletin.BulletinPageQueryDTO;
import com.pats.qeubeenewsweb.entity.dto.bulletin.BulletinSetDTO;
import com.pats.qeubeenewsweb.entity.dto.bulletin.SpBulletinTypeDTO;

import java.util.List;

/**
 * @author : qintai.ma
 * @version :1.0.0
 * @date : create in 2020/8/25 11:25
 */
public interface BulletinSpWebService {
    /**
     * 检索分页公告列表 by condition
     *
     * @param pageQuery 公告检索条件
     * @return 当前也公告列表
     */
    PageDTO<BulletinDetailSpDTO> findByPage(BulletinPageQueryDTO pageQuery);


    /**
     * 检索公告详情 by id
     *
     * @param id 公告id
     * @return 公告详情
     */
    BulletinDetailSpDTO findById(Integer id);

    /**
     * 公告合规设置
     *
     * @param bulletinOpinionSetDTO 合规设置参数
     * @return 公告id
     */
    Boolean modifyCompliance(BulletinSetDTO bulletinOpinionSetDTO);

    /**
     * 检索公告列表总条数
     *
     * @param pageQuery 公告检索条件
     * @return 公告列表总条数
     */
    Integer findTotal(BulletinPageQueryDTO pageQuery);

    /**
     * 查询公告类型
     *
     * @return 结果集
     */
    List<SpBulletinTypeDTO> getTypes();
}
