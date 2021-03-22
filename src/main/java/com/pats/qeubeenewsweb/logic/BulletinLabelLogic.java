package com.pats.qeubeenewsweb.logic;

import com.baomidou.mybatisplus.extension.service.IService;
import com.pats.qeubeenewsweb.entity.dto.bulletin.BulletinLabelBindDeleteDTO;
import com.pats.qeubeenewsweb.entity.dto.bulletin.BulletinLabelBindSetDTO;
import com.pats.qeubeenewsweb.entity.BulletinLabel;

/**
 * <p>
 * 公告标签、绑定关系 服务类
 * </p>
 *
 * @author qintai.ma
 * @since 2020-08-26
 */
public interface BulletinLabelLogic extends IService<BulletinLabel> {
    /**
     * @return 根据公告ID删除
     */
    boolean removeLabelsByBulletinId(BulletinLabelBindDeleteDTO labelBindSetDTO);

    /**
     * @return 根据公告ID添加
     */
    boolean addLabelsByBulletinId(BulletinLabelBindSetDTO labelBindSetDTO);

}
