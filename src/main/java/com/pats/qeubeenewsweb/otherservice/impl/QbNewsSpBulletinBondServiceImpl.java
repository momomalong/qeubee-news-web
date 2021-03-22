package com.pats.qeubeenewsweb.otherservice.impl;

import com.pats.qeubeenewsweb.entity.bo.NewsSpBulletinBondBO;
import com.pats.qeubeenews.common.dto.ResultDTO;
import com.pats.qeubeenews.common.utils.BeansMapper;
import com.pats.qeubeenewsweb.logic.IQbNewsSpBulletinBondLogic;
import com.pats.qeubeenewsweb.otherservice.IQbNewsSpBulletinBondService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Collection;
import java.util.List;

/**
 * <p>
 * 服务实现类
 * </p>
 *
 * @author mqt
 * @since 2020-09-24
 */
@Service
public class QbNewsSpBulletinBondServiceImpl implements IQbNewsSpBulletinBondService {

    @Autowired
    private IQbNewsSpBulletinBondLogic logic;

    @Override
    public ResultDTO<List<NewsSpBulletinBondBO>> selectByFileIds(Collection<?> fileIds) {
        return ResultDTO.success(BeansMapper.convertList(logic.selectByFileIds(fileIds), NewsSpBulletinBondBO.class));
    }
}
