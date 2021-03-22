package com.pats.qeubeenewsweb.logic.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.pats.qeubeenewsweb.mapper.BulletinLabelDao;
import com.pats.qeubeenewsweb.entity.dto.bulletin.BulletinLabelBindDeleteDTO;
import com.pats.qeubeenewsweb.entity.dto.bulletin.BulletinLabelBindSetDTO;
import com.pats.qeubeenewsweb.entity.BulletinLabel;
import com.pats.qeubeenewsweb.logic.BulletinLabelLogic;
import org.springframework.stereotype.Component;

import java.util.List;
import java.util.stream.Collectors;

import static com.pats.qeubeenewsweb.consts.DataBaseSourceConst.COL_BULLETIN_LABEL_BULLETIN_ID;
import static com.pats.qeubeenewsweb.consts.DataBaseSourceConst.COL_BULLETIN_LABEL_LABEL_ID;

/**
 * <p>
 * 公告标签、绑定关系 服务实现类
 * </p>
 *
 * @author qintai.ma
 * @since 2020-08-26
 */
@Component
public class BulletinLabelLogicImpl extends ServiceImpl<BulletinLabelDao, BulletinLabel> implements BulletinLabelLogic {

    @Override
    public boolean removeLabelsByBulletinId(BulletinLabelBindDeleteDTO labelBindSetDTO) {
        QueryWrapper<BulletinLabel> wrapper = new QueryWrapper<>();
        wrapper.eq(COL_BULLETIN_LABEL_BULLETIN_ID, labelBindSetDTO.getId());
        wrapper.in(COL_BULLETIN_LABEL_LABEL_ID, labelBindSetDTO.getLabels());
        return remove(wrapper);
    }

    @Override
    public boolean addLabelsByBulletinId(BulletinLabelBindSetDTO labelBindSetDTO) {
        Integer bulletinId = labelBindSetDTO.getId();
        List<BulletinLabel> list = labelBindSetDTO.getLabels().stream().map(e -> {
            BulletinLabel label = new BulletinLabel();
            label.setBulletinId(bulletinId);
            label.setLabelId(e.getId());
            return label;
        }).collect(Collectors.toList());
        return saveBatch(list);
    }
}
