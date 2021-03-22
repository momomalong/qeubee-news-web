package com.pats.qeubeenewsweb.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.pats.qeubeenewsweb.consts.RabbitMQPushMsgTypeConst;
import com.pats.qeubeenewsweb.consts.RedisCacheNamesConst;
import com.pats.qeubeenewsweb.entity.QbNewsSpBulletin;
import com.pats.qeubeenewsweb.entity.dto.PageDTO;
import com.pats.qeubeenewsweb.entity.dto.bulletin.BulletinDetailSpDTO;
import com.pats.qeubeenewsweb.entity.dto.bulletin.BulletinPageQueryDTO;
import com.pats.qeubeenewsweb.entity.dto.bulletin.BulletinSetDTO;
import com.pats.qeubeenewsweb.entity.dto.bulletin.SpBulletinTypeDTO;
import com.pats.qeubeenewsweb.logic.QbNewsSpBulletinLogic;
import com.pats.qeubeenewsweb.mapper.QbNewsSpBulletinMapper;
import com.pats.qeubeenewsweb.mq.provider.QeubeeNewsProvider;
import com.pats.qeubeenewsweb.service.BulletinSpWebService;
import com.pats.qeubeenewsweb.service.ISpiderFileCategoryService;
import com.pats.qeubeenewsweb.service.transfer.BulletinSpServiceTransfer;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

/**
 * @author : qintai.ma
 * @version :1.0.0
 * @since : create in 2020/8/25 11:25
 */
@Service
public class BulletinSpWebServiceImpl implements BulletinSpWebService {

    @Autowired
    private BulletinSpServiceTransfer serviceTransfer;

    @Autowired
    private QeubeeNewsProvider qeubeeNewsProvider;

    @Autowired
    private QbNewsSpBulletinLogic logic;

    @Autowired
    private QbNewsSpBulletinMapper qbNewsSpBulletinMapper;

    @Autowired
    private ISpiderFileCategoryService spiderFileCategoryService;

    /**
     * 检索分页公告列表 by condition
     *
     * @param pageQuery 公告检索条件
     * @return 当前也公告列表
     */
    @Override
    public PageDTO<BulletinDetailSpDTO> findByPage(BulletinPageQueryDTO pageQuery) {
        PageDTO<BulletinDetailSpDTO> pageDTO = new PageDTO<>();
        List<String> concernGroup = pageQuery.getConcernGroup();
        // 当关注组不为null，但length=0时直接返回
        if (concernGroup != null && concernGroup.size() == 0) {
            pageDTO.setPages(0L);
            pageDTO.setSize(0L);
            pageDTO.setTotal(0L);
            pageDTO.setCurrent(0L);
            pageDTO.setRecords(new ArrayList<>());
            return pageDTO;
        }

        IPage<BulletinDetailSpDTO> result = serviceTransfer.findByPage(pageQuery);
        pageDTO.setRecords(new ArrayList<>(result.getRecords()));
        pageDTO.setCurrent(result.getCurrent());
        pageDTO.setSize(result.getSize());
        pageDTO.setTotal(result.getTotal());
        pageDTO.setPages(result.getPages());
        return pageDTO;

    }

    /**
     * 检索公告详情 by id
     *
     * @param id 公告id
     * @return 公告详情
     */
    @Override
    public BulletinDetailSpDTO findById(Integer id) {
        return serviceTransfer.findById(id);
    }

    /**
     * 公告合规设置
     *
     * @param bulletinSetDTO 合规设置参数
     * @return 公告id
     */
    @Override
    public Boolean modifyCompliance(BulletinSetDTO bulletinSetDTO) {
        Boolean result = serviceTransfer.modifyCompliance(bulletinSetDTO);
        if (result) {
            // 向前端推送消息
            qeubeeNewsProvider.pushToFront(bulletinSetDTO.getId(), RabbitMQPushMsgTypeConst.MQ_MSG_TYPE_BULLETIN_COMPLIANCE);
        }
        return result;
    }

    /**
     * 检索公告列表总条数
     *
     * @param pageQuery 公告检索条件
     * @return 公告列表总条数
     */
    @Override
    public Integer findTotal(BulletinPageQueryDTO pageQuery) {
        QueryWrapper<QbNewsSpBulletin> wrapper = logic.constructQueryConditions(pageQuery);
        return qbNewsSpBulletinMapper.selectCount(wrapper);
    }

    @Override
    @Cacheable(value = RedisCacheNamesConst.BULLETIN_SP_GET_TYPES)
    public List<SpBulletinTypeDTO> getTypes() {
        return spiderFileCategoryService.findAllList();
    }

}
