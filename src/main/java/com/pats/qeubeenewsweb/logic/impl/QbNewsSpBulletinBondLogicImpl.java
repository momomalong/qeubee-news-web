package com.pats.qeubeenewsweb.logic.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.pats.qeubeenewsweb.mapper.QbNewsSpBulletinBondMapper;
import com.pats.qeubeenewsweb.entity.QbNewsSpBulletinBond;
import com.pats.qeubeenewsweb.logic.IQbNewsSpBulletinBondLogic;
import org.springframework.stereotype.Service;
import org.springframework.util.CollectionUtils;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

/**
 * <p>
 * 服务实现类
 * </p>
 *
 * @author mqt
 * @since 2020-09-24
 */
@Service
public class QbNewsSpBulletinBondLogicImpl extends ServiceImpl<QbNewsSpBulletinBondMapper, QbNewsSpBulletinBond> implements IQbNewsSpBulletinBondLogic {

    @Override
    public List<QbNewsSpBulletinBond> selectByFileIds(Collection<?> fileIds) {
        if (CollectionUtils.isEmpty(fileIds)) {
            return new ArrayList<>();
        }
        QueryWrapper<QbNewsSpBulletinBond> wrapper = new QueryWrapper<>();
        wrapper.in("file_id", fileIds);
        return list(wrapper);
    }
}
