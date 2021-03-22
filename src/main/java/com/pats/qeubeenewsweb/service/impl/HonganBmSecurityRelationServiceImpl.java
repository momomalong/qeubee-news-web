package com.pats.qeubeenewsweb.service.impl;

import com.baomidou.mybatisplus.core.conditions.Wrapper;
import com.pats.qeubeenewsweb.annotation.DataSource;
import com.pats.qeubeenewsweb.entity.HonganBmSecurityRelation;
import com.pats.qeubeenewsweb.mapper.HonganBmSecurityRelationMapper;
import com.pats.qeubeenewsweb.service.IHonganBmSecurityRelationService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

import java.util.Map;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author mqt
 * @since 2020-12-04
 */
@Service
public class HonganBmSecurityRelationServiceImpl extends ServiceImpl<HonganBmSecurityRelationMapper, HonganBmSecurityRelation> implements IHonganBmSecurityRelationService {

    @Override
    @DataSource(dataSourceName = "mozi")
    public Map<String, Object> getMap(Wrapper<HonganBmSecurityRelation> queryWrapper) {
        return super.getMap(queryWrapper);
    }
}
