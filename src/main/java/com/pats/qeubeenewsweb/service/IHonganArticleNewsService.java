package com.pats.qeubeenewsweb.service;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.service.IService;
import com.pats.qeubeenewsweb.entity.HonganArticleNews;

/**
 * <p>
 * 服务类
 * </p>
 *
 * @author mqt
 * @since 2020-12-03
 */
public interface IHonganArticleNewsService extends IService<HonganArticleNews> {

    HonganArticleNews getOne(QueryWrapper<HonganArticleNews> wrapper);
}
