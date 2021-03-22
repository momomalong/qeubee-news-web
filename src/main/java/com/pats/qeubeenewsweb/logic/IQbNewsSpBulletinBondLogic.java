package com.pats.qeubeenewsweb.logic;

import com.baomidou.mybatisplus.extension.service.IService;
import com.pats.qeubeenewsweb.entity.QbNewsSpBulletinBond;

import java.util.Collection;
import java.util.List;

/**
 * <p>
 * 服务类
 * </p>
 *
 * @author mqt
 * @since 2020-09-24
 */
public interface IQbNewsSpBulletinBondLogic extends IService<QbNewsSpBulletinBond> {
    List<QbNewsSpBulletinBond> selectByFileIds(Collection<?> fileIds);

}
