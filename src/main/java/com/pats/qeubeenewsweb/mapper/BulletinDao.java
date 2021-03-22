package com.pats.qeubeenewsweb.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.pats.qeubeenewsweb.entity.bo.BulletinPageBO;
import com.pats.qeubeenewsweb.entity.dto.bulletin.BulletinPageQueryDTO;
import com.pats.qeubeenewsweb.entity.Bulletin;

import java.util.List;

/**
 * <p>
 * Mapper 接口
 * </p>
 *
 * @author qintai.ma
 * @since 2020-08-25
 */
public interface BulletinDao extends BaseMapper<Bulletin> {

    List<BulletinPageBO> findByPage(BulletinPageQueryDTO pageQuery);
}
