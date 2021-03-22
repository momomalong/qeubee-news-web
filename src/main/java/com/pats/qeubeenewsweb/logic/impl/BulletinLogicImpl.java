package com.pats.qeubeenewsweb.logic.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.pats.qeubeenewsweb.entity.bo.BulletinDetailBO;
import com.pats.qeubeenewsweb.entity.bo.BulletinPageBO;
import com.pats.qeubeenewsweb.entity.bo.RefBulletinsBO;
import com.pats.qeubeenews.common.exception.BaseKnownException;
import com.pats.qeubeenews.common.utils.BeansMapper;
import com.pats.qeubeenewsweb.consts.RedisCacheNamesConst;
import com.pats.qeubeenewsweb.entity.dto.bulletin.BulletinLabelBindDeleteDTO;
import com.pats.qeubeenewsweb.entity.dto.bulletin.BulletinLabelBindSetDTO;
import com.pats.qeubeenewsweb.entity.dto.bulletin.BulletinPageQueryDTO;
import com.pats.qeubeenewsweb.entity.dto.bulletin.BulletinSetDTO;
import com.pats.qeubeenewsweb.entity.dto.label.LabelDTO;
import com.pats.qeubeenewsweb.entity.Bulletin;
import com.pats.qeubeenewsweb.entity.BulletinLabel;
import com.pats.qeubeenewsweb.logic.BulletinLabelLogic;
import com.pats.qeubeenewsweb.logic.BulletinLogic;
import com.pats.qeubeenewsweb.mapper.BulletinDao;
import com.pats.qeubeenewsweb.utils.PageHelperUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.CachePut;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.CollectionUtils;

import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Optional;
import java.util.stream.Collectors;

import static com.pats.qeubeenewsweb.consts.DataBaseSourceConst.COL_BULLETIN_LABEL_BULLETIN_ID;
import static com.pats.qeubeenewsweb.consts.DataBaseSourceConst.COL_BULLETIN_LABEL_LABEL_ID;

/**
 * <p>
 * 服务实现类
 * </p>
 *
 * @author qintai.ma
 * @since 2020-08-25
 */
@Component
public class BulletinLogicImpl extends ServiceImpl<BulletinDao, Bulletin> implements BulletinLogic {

    @Autowired
    private BulletinLabelLogic bulletinLabelLogic;

    @Autowired
    private BulletinDao bulletinDao;

    @Override
    @Cacheable(value = RedisCacheNamesConst.BULLETIN_FIND_BY_ID, key = "#id")
    public BulletinDetailBO findById(Integer id) {
        // 公告详情
        Bulletin bulletin = this.getById(id);
        if (bulletin == null) {
            return new BulletinDetailBO();
        }
        BulletinDetailBO result = BeansMapper.convert(bulletin, BulletinDetailBO.class);
        result.setCompliance(bulletin.getCompliance());

        // 关联标签id集合
        List<Integer> ids = new ArrayList<>();
        // 标签列表
        QueryWrapper<BulletinLabel> labelWrapper = new QueryWrapper<>();
        labelWrapper.eq(COL_BULLETIN_LABEL_BULLETIN_ID, id);
        List<LabelDTO> labelDetailBOList = Optional.ofNullable(bulletinLabelLogic.list(labelWrapper))
            .orElse(new ArrayList<>())
            .stream().map(e -> {
                LabelDTO bo = new LabelDTO();
                bo.setId(e.getLabelId());
                ids.add(e.getBulletinId());
                return bo;
            }).collect(Collectors.toList());
        result.setLabels(labelDetailBOList);

        // 关联公告详情
        if (!CollectionUtils.isEmpty(ids)) {
            labelWrapper.clear();
            labelWrapper.in(COL_BULLETIN_LABEL_LABEL_ID, ids);
            labelWrapper.ne(COL_BULLETIN_LABEL_BULLETIN_ID, id);
            List<Integer> relatedIds = bulletinLabelLogic.list(labelWrapper).stream().map(BulletinLabel::getBulletinId).collect(Collectors.toList());
            if (CollectionUtils.isEmpty(relatedIds)) {
                return result;
            }
            List<RefBulletinsBO> refBulletinsBoS = super.listByIds(relatedIds)
                .stream().map(e -> new RefBulletinsBO(e.getId(), e.getTitle(), e.getCreateTime())).collect(Collectors.toList());
            result.setRefBulletins(refBulletinsBoS);
        }
        return result;
    }

    /**
     * redis key规则：对象toString生成MD5值
     */
    @Override
    public Page<BulletinPageBO> findByPage(BulletinPageQueryDTO pageQuery) {
        com.github.pagehelper.Page<BulletinPageBO> page = PageHelperUtil.ofPage(pageQuery, BulletinPageBO.class);

        // 关注组和方案组查询参数
        List<String> list = Optional.ofNullable(pageQuery.getConcernGroup()).orElse(new ArrayList<>());
        list.addAll(Optional.ofNullable(pageQuery.getSchemas()).orElse(new ArrayList<>()));
        pageQuery.setConcernGroup(list);

        // 执行查询
        List<BulletinPageBO> result = bulletinDao.findByPage(pageQuery);
        Page<BulletinPageBO> resultPage = new Page<>(page.getPageNum(), page.getPageSize(), page.getTotal());
        resultPage.setRecords(new ArrayList<>(page.getResult()));
        if (CollectionUtils.isEmpty(result)) {
            return resultPage;
        }

        // 查询相关标签
        List<Integer> ids = result.stream().map(BulletinPageBO::getId).collect(Collectors.toList());
        if (!CollectionUtils.isEmpty(ids)) {
            QueryWrapper<BulletinLabel> wrapper = new QueryWrapper<>();
            wrapper.in(COL_BULLETIN_LABEL_BULLETIN_ID, ids);
            Map<Integer, List<BulletinLabel>> bulletinLabelMap = bulletinLabelLogic.list(wrapper).stream().collect(Collectors.groupingBy(BulletinLabel::getBulletinId));
            resultPage.getRecords().forEach(e -> {
                // 转为返回的对象
                List<LabelDTO> boList = bulletinLabelMap.get(e.getId()).stream().map(t -> {
                    LabelDTO bo = new LabelDTO();
                    bo.setId(t.getLabelId());
                    return bo;
                }).collect(Collectors.toList());
                e.setLabels(boList);
            });
        }
        return resultPage;
    }

    @Override
    @CachePut(value = RedisCacheNamesConst.BULLETIN_FIND_BY_ID, key = "#bulletinOpinionSetDTO.id")
    public BulletinDetailBO modifyCompliance(BulletinSetDTO bulletinOpinionSetDTO) {
        Bulletin bulletin = new Bulletin();
        bulletin.setId(bulletinOpinionSetDTO.getId());
        bulletin.setCompliance(bulletinOpinionSetDTO.getCompliance());
        bulletin.setUpdateTime(LocalDateTime.now());
        if (super.updateById(bulletin)) {
            return this.findById(bulletinOpinionSetDTO.getId());
        }
        throw new BaseKnownException(10002, "修改失败");
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    @CachePut(value = RedisCacheNamesConst.BULLETIN_FIND_BY_ID, key = "#labelBindSetDTO.id")
    public BulletinDetailBO addLabels(BulletinLabelBindSetDTO labelBindSetDTO) {
        if (bulletinLabelLogic.addLabelsByBulletinId(labelBindSetDTO)) {
            Bulletin bulletin = new Bulletin();
            bulletin.setId(labelBindSetDTO.getId());
            bulletin.setUpdateTime(LocalDateTime.now());
            super.updateById(bulletin);
            return this.findById(labelBindSetDTO.getId());
        }
        throw new BaseKnownException(10001, "新增失败");
    }


    @Override
    @Transactional(rollbackFor = Exception.class)
    @CachePut(value = RedisCacheNamesConst.BULLETIN_FIND_BY_ID, key = "#labelBindSetDTO.id")
    public BulletinDetailBO removeLabels(BulletinLabelBindDeleteDTO labelBindSetDTO) {
        boolean b = bulletinLabelLogic.removeLabelsByBulletinId(labelBindSetDTO);
        if (b) {
            Bulletin bulletin = new Bulletin();
            bulletin.setId(labelBindSetDTO.getId());
            bulletin.setUpdateTime(LocalDateTime.now());
            super.updateById(bulletin);
            return this.findById(labelBindSetDTO.getId());
        }
        throw new BaseKnownException(10003, "删除失败");
    }

}
