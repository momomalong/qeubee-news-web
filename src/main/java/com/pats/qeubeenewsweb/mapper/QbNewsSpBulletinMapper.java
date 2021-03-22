package com.pats.qeubeenewsweb.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.pats.qeubeenewsweb.entity.QbNewsSpBulletin;
import com.pats.qeubeenewsweb.entity.dto.bulletin.BulletinCateCodeDTO;

import java.util.List;

/**
 * <p>
 *  Mapper 接口
 * </p>
 *
 * @author mqt
 * @since 2020-09-19
 */
public interface QbNewsSpBulletinMapper extends BaseMapper<QbNewsSpBulletin> {

    /**
     * 获取公告类型，用于补充历史公告数据的公告类型字段
     * @return 获取公告类型
     */
    List<BulletinCateCodeDTO> getCateCode();
}
