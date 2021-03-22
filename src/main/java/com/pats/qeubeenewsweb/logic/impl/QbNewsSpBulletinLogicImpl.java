package com.pats.qeubeenewsweb.logic.impl;

import com.baomidou.mybatisplus.core.conditions.Wrapper;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.pats.qeubeenews.common.exception.BaseKnownException;
import com.pats.qeubeenews.common.utils.BeansMapper;
import com.pats.qeubeenewsweb.consts.DataBaseSourceConst;
import com.pats.qeubeenewsweb.consts.RedisCacheNamesConst;
import com.pats.qeubeenewsweb.entity.QbNewsSpBulletin;
import com.pats.qeubeenewsweb.entity.QbNewsSpBulletinBond;
import com.pats.qeubeenewsweb.entity.bo.NewsSpBulletinBondBO;
import com.pats.qeubeenewsweb.entity.bo.QbNewsSpBulletinBO;
import com.pats.qeubeenewsweb.entity.dto.bulletin.BulletinPageQueryDTO;
import com.pats.qeubeenewsweb.entity.dto.bulletin.BulletinSetDTO;
import com.pats.qeubeenewsweb.logic.IQbNewsSpBulletinBondLogic;
import com.pats.qeubeenewsweb.logic.QbNewsSpBulletinLogic;
import com.pats.qeubeenewsweb.mapper.QbNewsSpBulletinMapper;
import com.pats.qeubeenewsweb.otherservice.IQbNewsSpBulletinBondService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.CachePut;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.stereotype.Service;
import org.springframework.util.CollectionUtils;
import org.springframework.util.StringUtils;

import javax.annotation.Resource;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.*;
import java.util.function.Consumer;
import java.util.stream.Collectors;

@Service
public class QbNewsSpBulletinLogicImpl extends ServiceImpl<QbNewsSpBulletinMapper, QbNewsSpBulletin> implements QbNewsSpBulletinLogic {

    @Autowired
    private IQbNewsSpBulletinBondService bulletinBondLogic;
    @Autowired
    private IQbNewsSpBulletinBondLogic spBulletinBondLogic;
    @Resource
    private RedisTemplate<String, Object> redisTemplate;

    @Override
    @Cacheable(value = RedisCacheNamesConst.BULLETIN_FIND_BY_ID, key = "#id")
    public QbNewsSpBulletinBO findById(Integer id) {
        QbNewsSpBulletin spBulletin = getById(id);
        if (spBulletin != null) {
            QbNewsSpBulletinBO convert = BeansMapper.convert(spBulletin, QbNewsSpBulletinBO.class);
            List<QbNewsSpBulletinBO> list = new ArrayList<>();
            list.add(convert);
            // 查询相关的bond
            this.selectBonds(list);
            return list.get(0);
        }
        return null;
    }

    @Override
    public Page<QbNewsSpBulletinBO> findByPage(BulletinPageQueryDTO pageQuery) {
        QueryWrapper<QbNewsSpBulletin> wrapper = this.constructQueryConditions(pageQuery);
        // 默认按照时间倒叙排序
        wrapper.orderBy(true, false, "create_time");
        //计算分页起始条数
        int pageNum;
        if (pageQuery.getPageNum() <= 0) {
            pageNum = 0;
        } else {
            pageNum = (pageQuery.getPageNum() - 1) * pageQuery.getDataCount();
        }
        //查询条数
        wrapper.last("limit " + pageNum + "," + pageQuery.getDataCount() + "");
        List<QbNewsSpBulletin> result = list(wrapper);
        Page<QbNewsSpBulletinBO> resultPage = new Page<>(pageQuery.getPageNum(), pageQuery.getDataCount());
        if (CollectionUtils.isEmpty(result)) {
            return resultPage;
        }
        List<QbNewsSpBulletinBO> records = BeansMapper.convertList(result, QbNewsSpBulletinBO.class);
        // 查询相关的bond
        this.selectBonds(records);
        resultPage.setRecords(records);
        return resultPage;
    }

    /**
     * 查询相关的bond
     *
     * @param list 参数
     */
    private void selectBonds(List<QbNewsSpBulletinBO> list) {
        if (CollectionUtils.isEmpty(list)) {
            return;
        }
        Set<String> fileIds = list.stream().map(QbNewsSpBulletin::getBulletinId).collect(Collectors.toSet());
        Map<String, List<NewsSpBulletinBondBO>> map = bulletinBondLogic.selectByFileIds(fileIds).getData().stream()
            .collect(Collectors.groupingBy(QbNewsSpBulletinBond::getFileId));
        list.forEach(e -> e.setBonds(Optional.ofNullable(map.get(e.getBulletinId())).orElse(new ArrayList<>())));
    }

    @Override
    @CachePut(value = RedisCacheNamesConst.BULLETIN_FIND_BY_ID, key = "#bulletinOpinionSetDTO.id")
    public QbNewsSpBulletinBO modifyCompliance(BulletinSetDTO bulletinOpinionSetDTO) {
        QbNewsSpBulletin bulletin = new QbNewsSpBulletin();
        bulletin.setId(bulletinOpinionSetDTO.getId());
        bulletin.setCompliance(bulletinOpinionSetDTO.getCompliance());
        bulletin.setUpdateTime(LocalDateTime.now());
        if (super.updateById(bulletin)) {
            return this.findById(bulletinOpinionSetDTO.getId());
        }
        throw new BaseKnownException(10002, "修改失败");
    }

    @Override
    public void updateByBulletinId(QbNewsSpBulletin bulletin, Wrapper<QbNewsSpBulletin> updateWrapper) {
        super.update(bulletin, updateWrapper);
        List<QbNewsSpBulletin> list = super.list(updateWrapper);
        redisTemplate.delete(list.stream().map(e -> RedisCacheNamesConst.BULLETIN_FIND_BY_ID + "::" + e.getId()).collect(Collectors.toList()));
    }

    @Override
    public QueryWrapper<QbNewsSpBulletin> constructQueryConditions(BulletinPageQueryDTO pageQuery) {
        Consumer<QueryWrapper<QbNewsSpBulletin>> consumer = e -> e.eq("1", "1");
        // 关注组和方案组查询参数(里面的数据是bond_key,需要反查一变，拿到对应的bulletin_id)
        List<String> concernGroup = pageQuery.getConcernGroup();
        if (!CollectionUtils.isEmpty(concernGroup)) {
            QueryWrapper<QbNewsSpBulletinBond> bondWrapper = new QueryWrapper<>();
            bondWrapper.in(DataBaseSourceConst.QB_NEWS_SP_BULLETIN_BOND_BOND_KEY, concernGroup);
            bondWrapper.select("DISTINCT file_id");
            List<String> list = spBulletinBondLogic.listObjs(bondWrapper, e -> e + "");
            // 拿到bond关联的bulletin_id
            if (list.size() > 0) {
                consumer = consumer.andThen(e -> e.in(DataBaseSourceConst.COL_BULLETIN_BULLETIN_ID, list));
            }
        }
        // 公告类型
        List<String> type = pageQuery.getType();
        if (!CollectionUtils.isEmpty(type)) {
            consumer = consumer.andThen(e -> e.in(DataBaseSourceConst.COL_BULLETIN_CATE_CODE2, type));
        }
        // 设置时间范围当作筛选条件
        if (!StringUtils.isEmpty(pageQuery.getStartDate()) && !StringUtils.isEmpty(pageQuery.getEndDate())) {
            String endDate = LocalDate.parse(pageQuery.getEndDate()).plusDays(1L).toString();
            consumer = consumer.andThen(e -> e.between(DataBaseSourceConst.COL_BULLETIN_CREATE_TIME, pageQuery.getStartDate(), endDate));
        }
        // 合规性
        if (pageQuery.getCompliance() != null) {
            consumer = consumer.andThen(e -> e.eq(DataBaseSourceConst.COL_BULLETIN_COMPLIANCE, pageQuery.getCompliance()));
        }
        QueryWrapper<QbNewsSpBulletin> wrapper = new QueryWrapper<>();
        // title模糊查询
        String keyword = pageQuery.getKeyword();
        if (!StringUtils.isEmpty(keyword)) {
            consumer = consumer.andThen(e -> e.and(j -> j.like(DataBaseSourceConst.COL_BULLETIN_TITLE, keyword)
                .or().like(DataBaseSourceConst.COL_BULLETIN_ISSUER_NAME, keyword)
                .or().like(DataBaseSourceConst.COL_BULLETIN_CATE_CODE2, keyword)
            ));
            // 查询出债券简称和债券code的like查询（表较大，不适合联表，所以采用这种方式）
            QueryWrapper<QbNewsSpBulletinBond> bondWrapper = new QueryWrapper<>();
            bondWrapper.like(DataBaseSourceConst.QB_NEWS_SP_BULLETIN_BOND_BOND_CODE, keyword)
                .or().like(DataBaseSourceConst.QB_NEWS_SP_BULLETIN_BOND_SHORT_NAME, keyword);
            bondWrapper.select("DISTINCT file_id");
            List<String> list = spBulletinBondLogic.listObjs(bondWrapper, e -> e + "");
            if (!CollectionUtils.isEmpty(list)) {
                wrapper.or(e -> e.in(DataBaseSourceConst.COL_BULLETIN_BULLETIN_ID, list));
            }
        }
        wrapper.or(consumer);
        return wrapper;
    }
}
