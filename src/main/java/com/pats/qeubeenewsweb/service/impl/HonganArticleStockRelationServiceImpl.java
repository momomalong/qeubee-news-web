package com.pats.qeubeenewsweb.service.impl;

import com.baomidou.mybatisplus.core.conditions.Wrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.pats.qeubeenewsweb.annotation.DataSource;
import com.pats.qeubeenewsweb.entity.HonganArticleStockRelation;
import com.pats.qeubeenewsweb.mapper.HonganArticleStockRelationMapper;
import com.pats.qeubeenewsweb.service.IHonganArticleStockRelationService;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.function.Function;

/**
 * <p>
 * 服务实现类
 * </p>
 *
 * @author mqt
 * @since 2020-12-04
 */
@Service
public class HonganArticleStockRelationServiceImpl extends ServiceImpl<HonganArticleStockRelationMapper, HonganArticleStockRelation> implements IHonganArticleStockRelationService {
    @Override
    @DataSource(dataSourceName = "mozi")
    public <V> List<V> listObjs(Wrapper<HonganArticleStockRelation> queryWrapper, Function<? super Object, V> mapper) {
        return super.listObjs(queryWrapper, mapper);
    }
}
