package com.pats.qeubeenewsweb.otherservice;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.pats.qeubeenewsweb.entity.bo.BulletinDetailBO;
import com.pats.qeubeenewsweb.entity.bo.BulletinPageBO;
import com.pats.qeubeenews.common.dto.ResultDTO;
import com.pats.qeubeenewsweb.entity.dto.bulletin.BulletinLabelBindDeleteDTO;
import com.pats.qeubeenewsweb.entity.dto.bulletin.BulletinLabelBindSetDTO;
import com.pats.qeubeenewsweb.entity.dto.bulletin.BulletinPageQueryDTO;
import com.pats.qeubeenewsweb.entity.dto.bulletin.BulletinSetDTO;

/**
 * <p>
 * 服务类
 * </p>
 *
 * @author qintai.ma
 * @since 2020-08-25
 */
public interface BulletinService {

    /**
     * 检索公告详情 by id
     *
     * @param id 公告id
     * @return 公告详情
     */
    ResultDTO<BulletinDetailBO> findById(Integer id);

    /**
     * 检索分页公告列表 by condition
     *
     * @param pageQuery 公告检索条件
     * @return 当前也公告列表
     */
    ResultDTO<Page<BulletinPageBO>> findByPage(BulletinPageQueryDTO pageQuery);


    /**
     * 公告合规设置
     *
     * @param bulletinOpinionSetDTO 合规设置参数
     * @return 公告id
     */
    ResultDTO<Boolean> modifyCompliance(BulletinSetDTO bulletinOpinionSetDTO);

    /**
     * 公告标签绑定
     *
     * @param labelBindSetDTO 绑定标签参数
     * @return 公告id
     */
    ResultDTO<Boolean> addLabels(BulletinLabelBindSetDTO labelBindSetDTO);

    /**
     * 公告标签移除
     *
     * @param labelBindSetDTO
     * @return
     */
    ResultDTO<Boolean> removeLabels(BulletinLabelBindDeleteDTO labelBindSetDTO);
}
