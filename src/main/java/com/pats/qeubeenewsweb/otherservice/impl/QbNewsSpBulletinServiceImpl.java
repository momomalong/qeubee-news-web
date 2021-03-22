package com.pats.qeubeenewsweb.otherservice.impl;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.pats.qeubeenewsweb.entity.bo.QbNewsSpBulletinBO;
import com.pats.qeubeenews.common.dto.ResultDTO;
import com.pats.qeubeenewsweb.entity.dto.bulletin.BulletinPageQueryDTO;
import com.pats.qeubeenewsweb.entity.dto.bulletin.BulletinSetDTO;
import com.pats.qeubeenewsweb.logic.QbNewsSpBulletinLogic;
import com.pats.qeubeenewsweb.otherservice.IQbNewsSpBulletinService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;


/**
 * <p>
 * 服务实现类
 * </p>
 *
 * @author mqt
 * @since 2020-09-19
 */
@Service
@RequiredArgsConstructor
public class QbNewsSpBulletinServiceImpl implements IQbNewsSpBulletinService {

    private final QbNewsSpBulletinLogic bulletinLogic;

    @Override
    public ResultDTO<QbNewsSpBulletinBO> findById(Integer id) {
        return ResultDTO.success(bulletinLogic.findById(id));
    }

    @Override
    public ResultDTO<Page<QbNewsSpBulletinBO>> findByPage(BulletinPageQueryDTO pageQuery) {
        return ResultDTO.success(bulletinLogic.findByPage(pageQuery));
    }

    @Override
    public ResultDTO<Boolean> modifyCompliance(BulletinSetDTO bulletinOpinionSetDTO) {
        return ResultDTO.success(bulletinLogic.modifyCompliance(bulletinOpinionSetDTO) != null);
    }

}

