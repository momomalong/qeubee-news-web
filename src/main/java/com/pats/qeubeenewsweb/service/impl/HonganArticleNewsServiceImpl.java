package com.pats.qeubeenewsweb.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.pats.qeubeenewsweb.annotation.DataSource;
import com.pats.qeubeenewsweb.entity.HonganArticleNews;
import com.pats.qeubeenewsweb.mapper.HonganArticleNewsMapper;
import com.pats.qeubeenewsweb.service.IHonganArticleNewsService;
import org.springframework.stereotype.Service;

import java.io.Serializable;

/**
 * <p>
 * 服务实现类
 * </p>
 *
 * @author mqt
 * @since 2020-12-03
 */
@Service
public class HonganArticleNewsServiceImpl extends ServiceImpl<HonganArticleNewsMapper, HonganArticleNews> implements IHonganArticleNewsService {

    @Override
    @DataSource(dataSourceName = "mozi")
    public HonganArticleNews getById(Serializable id) {
        return super.getById(id);
    }

    @Override
    @DataSource(dataSourceName = "mozi")
    public HonganArticleNews getOne(QueryWrapper<HonganArticleNews> wrapper) {
        return super.getOne(wrapper);
    }
}
