package com.pats.qeubeenewsweb.otherservice.impl;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.pats.qeubeenewsweb.entity.bo.BulletinDetailBO;
import com.pats.qeubeenewsweb.entity.bo.BulletinPageBO;
import com.pats.qeubeenews.common.dto.ResultDTO;
import com.pats.qeubeenewsweb.entity.dto.bulletin.BulletinLabelBindDeleteDTO;
import com.pats.qeubeenewsweb.entity.dto.bulletin.BulletinLabelBindSetDTO;
import com.pats.qeubeenewsweb.entity.dto.bulletin.BulletinPageQueryDTO;
import com.pats.qeubeenewsweb.entity.dto.bulletin.BulletinSetDTO;
import com.pats.qeubeenewsweb.logic.BulletinLogic;
import com.pats.qeubeenewsweb.otherservice.BulletinService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

/**
 * <p>
 * 服务实现类
 * </p>
 *
 * @author qintai.ma
 * @since 2020-08-25
 */
@Service
@RequiredArgsConstructor
public class BulletinServiceImpl implements BulletinService {

    private final BulletinLogic bulletinLogic;

    @Override
    public ResultDTO<BulletinDetailBO> findById(Integer id) {
        return ResultDTO.success(bulletinLogic.findById(id));
    }

    @Override
    public ResultDTO<Page<BulletinPageBO>> findByPage(BulletinPageQueryDTO pageQuery) {
        return ResultDTO.success(bulletinLogic.findByPage(pageQuery));
    }

    @Override
    public ResultDTO<Boolean> modifyCompliance(BulletinSetDTO bulletinOpinionSetDTO) {
        return ResultDTO.success(bulletinLogic.modifyCompliance(bulletinOpinionSetDTO) != null);
    }

    @Override
    public ResultDTO<Boolean> addLabels(BulletinLabelBindSetDTO labelBindSetDTO) {
        return ResultDTO.success(bulletinLogic.addLabels(labelBindSetDTO) != null);
    }

    @Override
    public ResultDTO<Boolean> removeLabels(BulletinLabelBindDeleteDTO labelBindSetDTO) {
        return ResultDTO.success(bulletinLogic.removeLabels(labelBindSetDTO) != null);
    }

}
