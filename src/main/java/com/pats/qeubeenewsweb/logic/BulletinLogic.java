package com.pats.qeubeenewsweb.logic;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.IService;
import com.pats.qeubeenewsweb.entity.bo.BulletinDetailBO;
import com.pats.qeubeenewsweb.entity.bo.BulletinPageBO;
import com.pats.qeubeenewsweb.entity.dto.bulletin.BulletinLabelBindDeleteDTO;
import com.pats.qeubeenewsweb.entity.dto.bulletin.BulletinLabelBindSetDTO;
import com.pats.qeubeenewsweb.entity.dto.bulletin.BulletinPageQueryDTO;
import com.pats.qeubeenewsweb.entity.dto.bulletin.BulletinSetDTO;
import com.pats.qeubeenewsweb.entity.Bulletin;

/**
 * <p>
 * 服务类
 * </p>
 *
 * @author qintai.ma
 * @since 2020-08-25
 */
public interface BulletinLogic extends IService<Bulletin> {

    /**
     * 检索公告详情 by id
     *
     * @param id 公告id
     * @return 公告详情
     */
    BulletinDetailBO findById(Integer id);

    /**
     * 检索分页公告列表 by condition
     *
     * @param pageQuery 公告检索条件
     * @return 当前也公告列表
     */
    Page<BulletinPageBO> findByPage(BulletinPageQueryDTO pageQuery);


    /**
     * 公告合规设置
     *
     * @param bulletinOpinionSetDTO 合规设置参数
     * @return 公告id
     */
    BulletinDetailBO modifyCompliance(BulletinSetDTO bulletinOpinionSetDTO);

    /**
     * 公告标签绑定
     *
     * @param labelBindSetDTO 绑定标签参数
     * @return 公告id
     */
    BulletinDetailBO addLabels(BulletinLabelBindSetDTO labelBindSetDTO);

    /**
     * 公告标签移除
     *
     * @param labelBindSetDTO
     * @return
     */
    BulletinDetailBO removeLabels(BulletinLabelBindDeleteDTO labelBindSetDTO);
}
