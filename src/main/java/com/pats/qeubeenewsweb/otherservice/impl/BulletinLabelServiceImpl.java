package com.pats.qeubeenewsweb.otherservice.impl;

import com.pats.qeubeenews.common.dto.ResultDTO;
import com.pats.qeubeenewsweb.entity.dto.bulletin.BulletinLabelBindDeleteDTO;
import com.pats.qeubeenewsweb.entity.dto.bulletin.BulletinLabelBindSetDTO;
import com.pats.qeubeenewsweb.logic.BulletinLabelLogic;
import com.pats.qeubeenewsweb.otherservice.BulletinLabelService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

/**
 * <p>
 * 公告标签、绑定关系 服务实现类
 * </p>
 *
 * @author qintai.ma
 * @since 2020-08-26
 */
@Service
@RequiredArgsConstructor
public class BulletinLabelServiceImpl implements BulletinLabelService {

    private final BulletinLabelLogic bulletinLabellogic;

    @Override
    public ResultDTO<Boolean> removeLabelsByBulletinId(BulletinLabelBindDeleteDTO labelBindSetDTO) {
        return ResultDTO.success(bulletinLabellogic.removeLabelsByBulletinId(labelBindSetDTO));
    }

    @Override
    public ResultDTO<Boolean> addLabelsByBulletinId(BulletinLabelBindSetDTO labelBindSetDTO) {
        return ResultDTO.success(bulletinLabellogic.addLabelsByBulletinId(labelBindSetDTO));
    }
}
