package com.pats.qeubeenewsweb.otherservice;

import com.pats.qeubeenews.common.dto.ResultDTO;
import com.pats.qeubeenewsweb.entity.dto.bulletin.BulletinLabelBindDeleteDTO;
import com.pats.qeubeenewsweb.entity.dto.bulletin.BulletinLabelBindSetDTO;

/**
 * <p>
 * 公告标签、绑定关系 服务类
 * </p>
 *
 * @author qintai.ma
 * @since 2020-08-26
 */
public interface BulletinLabelService {
    /**
     * @return 根据公告ID删除
     */
    ResultDTO<Boolean> removeLabelsByBulletinId(BulletinLabelBindDeleteDTO labelBindSetDTO);

    /**
     * @return 根据公告ID添加
     */
    ResultDTO<Boolean> addLabelsByBulletinId(BulletinLabelBindSetDTO labelBindSetDTO);

}
