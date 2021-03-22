package com.pats.qeubeenewsweb.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.pats.qeubeenewsweb.entity.SpiderFileCategory;
import com.pats.qeubeenewsweb.entity.dto.EformDTO;
import com.pats.qeubeenewsweb.entity.dto.bulletin.SpBulletinTypeDTO;

import java.util.List;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author Hzy
 * @since 2021-01-08
 */
public interface ISpiderFileCategoryService extends IService<SpiderFileCategory> {

    /**
     * 查询所有风险类型值
     * @return 风险类型结果集
     */
    EformDTO findName();

    /**
     * 查询所有公告类型列表
     *
     * @return 类型列表
     */
    List<SpBulletinTypeDTO> findAllList();
}
