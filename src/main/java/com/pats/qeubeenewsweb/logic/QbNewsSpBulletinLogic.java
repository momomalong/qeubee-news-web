package com.pats.qeubeenewsweb.logic;

import com.baomidou.mybatisplus.core.conditions.Wrapper;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.IService;
import com.pats.qeubeenewsweb.entity.QbNewsSpBulletin;
import com.pats.qeubeenewsweb.entity.bo.QbNewsSpBulletinBO;
import com.pats.qeubeenewsweb.entity.dto.bulletin.BulletinPageQueryDTO;
import com.pats.qeubeenewsweb.entity.dto.bulletin.BulletinSetDTO;

public interface QbNewsSpBulletinLogic extends IService<QbNewsSpBulletin> {
    /**
     * 检索公告详情 by id
     *
     * @param id 公告id
     * @return 公告详情
     */
    QbNewsSpBulletinBO findById(Integer id);

    /**
     * 检索分页公告列表 by condition
     *
     * @param pageQuery 公告检索条件
     * @return 当前也公告列表
     */
    Page<QbNewsSpBulletinBO> findByPage(BulletinPageQueryDTO pageQuery);


    /**
     * 公告合规设置
     *
     * @param bulletinOpinionSetDTO 合规设置参数
     * @return 公告id
     */
    QbNewsSpBulletinBO modifyCompliance(BulletinSetDTO bulletinOpinionSetDTO);

    void updateByBulletinId(QbNewsSpBulletin bulletin, Wrapper<QbNewsSpBulletin> updateWrapper);

    /**
     * 构造公告查询条件
     *
     * @param pageQuery 条件
     * @return Wrapper
     */
    QueryWrapper<QbNewsSpBulletin> constructQueryConditions(BulletinPageQueryDTO pageQuery);

}
