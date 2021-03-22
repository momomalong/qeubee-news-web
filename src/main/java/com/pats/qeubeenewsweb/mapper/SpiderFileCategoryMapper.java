package com.pats.qeubeenewsweb.mapper;

import com.pats.qeubeenewsweb.entity.SpiderFileCategory;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.pats.qeubeenewsweb.entity.dto.SpiderFileCategoryDTO;

import java.util.List;

/**
 * <p>
 *  Mapper 接口
 * </p>
 *
 * @author Hzy
 * @since 2021-01-08
 */
public interface SpiderFileCategoryMapper extends BaseMapper<SpiderFileCategory> {

    /**
     * 获取公告所有分类
     * @return 返回公告所有分类
     */
    List<SpiderFileCategoryDTO> findAllList();
}
