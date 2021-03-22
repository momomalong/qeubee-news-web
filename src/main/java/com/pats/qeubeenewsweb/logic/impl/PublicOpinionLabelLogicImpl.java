package com.pats.qeubeenewsweb.logic.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.pats.qeubeenews.common.exception.BaseKnownException;
import com.pats.qeubeenewsweb.consts.DataBaseSourceConst;
import com.pats.qeubeenewsweb.consts.RedisCacheNamesConst;
import com.pats.qeubeenewsweb.entity.PublicOpinion;
import com.pats.qeubeenewsweb.entity.PublicOpinionLabel;
import com.pats.qeubeenewsweb.entity.bo.PublicOpinionLabelBindBO;
import com.pats.qeubeenewsweb.entity.bo.PublicOpinionLabelDeleteBO;
import com.pats.qeubeenewsweb.logic.PublicOpinionLabelLogic;
import com.pats.qeubeenewsweb.logic.PublicOpinionLogic;
import com.pats.qeubeenewsweb.mapper.PublicOpinionLabelDao;
import com.pats.qeubeenewsweb.utils.LocalDateTimeUtils;
import lombok.RequiredArgsConstructor;
import org.springframework.cache.annotation.CacheEvict;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

/**
 * <p>Title: PublicOpinionLabelLogicImpl</p>
 * <p>Description: 舆情新闻业务类</p>
 *
 * @author :wenjie.pei
 * @version :1.0.0
 * @since :2020.08.20
 */
@Component
@RequiredArgsConstructor
public class PublicOpinionLabelLogicImpl extends ServiceImpl<PublicOpinionLabelDao, PublicOpinionLabel> implements PublicOpinionLabelLogic {

    private final PublicOpinionLogic publicOpinionLogic;

    /**
     * 舆情标签绑定
     *
     * @param labelBindSetDTO 绑定标签参数列表
     */
    @CacheEvict(value = RedisCacheNamesConst.PUBLIC_OPINION_FIND_BY_ID, key = "#labelBindSetDTO.publicOpinionId")
    @Transactional(rollbackFor = Exception.class, propagation = Propagation.REQUIRED)
    @Override
    public void addLabels(PublicOpinionLabelBindBO labelBindSetDTO) {
        List<PublicOpinionLabel> labelBinds = new ArrayList<>();
        // 根据舆情标签设置参数, 构建用于新增绑定关系 的参数列表
        // 针对每个新增绑定标签, 构建entity, 进行存储
        labelBindSetDTO.getLabels()
            .stream()
            .forEach(label -> {
                // 对于每个绑定关系, 新建绑定关系entity
                PublicOpinionLabel publicOpinionLabel = new PublicOpinionLabel();
                // 设置舆情id
                publicOpinionLabel.setPublicOpinionId(labelBindSetDTO.getPublicOpinionId());
                // 设置该舆情要绑定的标签id
                publicOpinionLabel.setLabelId(label.getId());
                // 将构建好的绑定关系entity, 装载到更新参数列表, 等待批量插入
                labelBinds.add(publicOpinionLabel);
            });

        // 针对每个舆情, 更新舆情的更新时间
        // 构建舆情entity
        PublicOpinion publicOpinion = new PublicOpinion();
        // 设置舆情id
        publicOpinion.setId(labelBindSetDTO.getPublicOpinionId());
        // 设置更新时间
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");
        publicOpinion.setUpdateTime(formatter.format(LocalDateTime.now()));
        // 更新舆情更改时间
        publicOpinionLogic.modifyByCondition(publicOpinion);

        // 更新失败,抛出异常
        if (!saveBatch(labelBinds)) {
            throw new BaseKnownException(10001, "新建失败");
        }
    }

    /**
     * 舆情标签移除
     *
     * @param removeDTO 移除标签参数
     * @return api调用结果
     */
    @CacheEvict(value = RedisCacheNamesConst.PUBLIC_OPINION_FIND_BY_ID, key = "#removeDTO.publicOpinionId", beforeInvocation = true)
    @Transactional(rollbackFor = Exception.class, propagation = Propagation.REQUIRED)
    @Override
    public void removeLabels(PublicOpinionLabelDeleteBO removeDTO) {
        List<Integer> publicOpinionIds = new ArrayList<>();
        List<Integer> labelIds = new ArrayList<>();
        // 获得待删除标签的 舆情id列表
        publicOpinionIds.add(removeDTO.getPublicOpinionId());
        // 获得待删除的标签列表
        if (Objects.nonNull(removeDTO.getLabels())) {
            labelIds.addAll(removeDTO.getLabels());
        }
        // 针对每个舆情, 更新舆情的更新时间
        // 构建舆情entity
        PublicOpinion publicOpinion = new PublicOpinion();
        // 设置舆情id
        publicOpinion.setId(removeDTO.getPublicOpinionId());
        // 设置更新时间
        publicOpinion.setUpdateTime(LocalDateTimeUtils.DATE_TIME_FORMATTER.format(LocalDateTime.now()));
        // 更新舆情更改时间
        publicOpinionLogic.modifyByCondition(publicOpinion);

        // 构建删除条件
        QueryWrapper<PublicOpinionLabel> queryWrapper = new QueryWrapper<>();
        queryWrapper.in(DataBaseSourceConst.COL_PUBLIC_OPINION_LABEL_PUBLIC_OPINION_ID, publicOpinionIds);
        queryWrapper.in(DataBaseSourceConst.COL_PUBLIC_OPINION_LABEL_LABEL_ID, labelIds);

        // 更新失败,抛出异常
        if (!remove(queryWrapper)) {
            throw new BaseKnownException(10003, "删除失败");
        }
    }

}