package com.pats.qeubeenewsweb.otherservice;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.pats.qeubeenewsweb.entity.bo.QbNewsSpBulletinBO;
import com.pats.qeubeenews.common.dto.ResultDTO;
import com.pats.qeubeenewsweb.entity.dto.bulletin.BulletinPageQueryDTO;
import com.pats.qeubeenewsweb.entity.dto.bulletin.BulletinSetDTO;

/**
 * <p>
 * 服务类
 * </p>
 *
 * @author mqt
 * @since 2020-09-19
 */
public interface IQbNewsSpBulletinService {

    ResultDTO<QbNewsSpBulletinBO> findById(Integer id);

    ResultDTO<Page<QbNewsSpBulletinBO>> findByPage(BulletinPageQueryDTO pageQuery);

    ResultDTO<Boolean> modifyCompliance(BulletinSetDTO bulletinOpinionSetDTO);
}
