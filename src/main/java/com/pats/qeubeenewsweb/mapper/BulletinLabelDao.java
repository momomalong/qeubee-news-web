package com.pats.qeubeenewsweb.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.pats.qeubeenewsweb.entity.BulletinLabel;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * <p>
 * 公告标签、绑定关系 Mapper 接口
 * </p>
 *
 * @author qintai.ma
 * @since 2020-08-26
 */
public interface BulletinLabelDao extends BaseMapper<BulletinLabel> {

	/**
	 * @param ids id
	 * @return 根据 BulletinId 批量查询标签（带标签名称）
	 */
	List<BulletinLabel> selectLableByBulletinIds(@Param("ids") String ids);
}
