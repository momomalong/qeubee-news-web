package com.pats.qeubeenewsweb.logic.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.github.pagehelper.util.StringUtil;
import com.pats.qeubeenewsweb.entity.bo.LabelTypeDetailBO;
import com.pats.qeubeenews.common.exception.BaseKnownException;
import com.pats.qeubeenews.common.utils.BeansMapper;
import com.pats.qeubeenewsweb.entity.dto.label.LabelTypeDeleteDTO;
import com.pats.qeubeenewsweb.entity.dto.label.LabelTypeDetailDTO;
import com.pats.qeubeenewsweb.entity.LabelType;
import com.pats.qeubeenewsweb.logic.LabelTypeLogic;
import com.pats.qeubeenewsweb.mapper.LabelTypeMapper;
import org.springframework.stereotype.Service;

import java.time.LocalDateTime;
import java.util.List;
import java.util.stream.Collectors;

/**
 * <p>
 * 新闻标签分类表 服务实现类
 * </p>
 *
 * @author qintai.ma
 * @since 2020-09-01
 */
@Service
public class LabelTypeLogicImpl extends ServiceImpl<LabelTypeMapper, LabelType> implements LabelTypeLogic {

    @Override
    public List<LabelTypeDetailBO> findByCondition(String scope) {
        QueryWrapper<LabelType> wrapper = new QueryWrapper<>();
        // 为NULL全查
        if (StringUtil.isNotEmpty(scope)) {
            wrapper.eq("scope", scope);
        }
        return this.list(wrapper).stream().map(e -> {
            LabelTypeDetailBO bo = BeansMapper.convert(e, LabelTypeDetailBO.class);
            bo.setCreateTime(e.getCreateTime().toString().replace("T", " "));
            bo.setUpdateTime(e.getUpdateTime().toString().replace("T", " "));
            return bo;
        }).collect(Collectors.toList());
    }

    @Override
    public LabelTypeDetailBO create(LabelTypeDetailDTO labelTypeDetailDTO) {
        LabelType labelType = BeansMapper.convert(labelTypeDetailDTO, LabelType.class);
        labelType.setCreateTime(LocalDateTime.now());
        labelType.setUpdateTime(LocalDateTime.now());
        if (this.save(labelType)) {
            // 转换需要的实体
            LabelTypeDetailBO bo = BeansMapper.convert(labelType, LabelTypeDetailBO.class);
            bo.setUpdateTime(labelType.getUpdateTime().toString().replace("T", " "));
            bo.setCreateTime(labelType.getCreateTime().toString().replace("T", " "));
            return bo;
        }
        throw new BaseKnownException(10001, "label type 新增失败");
    }

    @Override
    public LabelTypeDetailBO modify(LabelTypeDetailDTO labelTypeDetailDTO) {
        LabelType labelType = BeansMapper.convert(labelTypeDetailDTO, LabelType.class);
        labelType.setUpdateTime(LocalDateTime.now());
        if (this.updateById(labelType)) {
            Integer typeId = labelType.getId();

            labelType = this.getById(typeId);
            // 转换需要的实体
            LabelTypeDetailBO bo = BeansMapper.convert(labelType, LabelTypeDetailBO.class);
            bo.setUpdateTime(labelType.getUpdateTime().toString().replace("T", " "));
            bo.setCreateTime(labelType.getCreateTime().toString().replace("T", " "));
            return bo;
        }
        throw new BaseKnownException(10002, "label type 新增失败");
    }

    @Override
    public Boolean remove(LabelTypeDeleteDTO labelTypeDeleteDTO) {
        if (this.removeById(labelTypeDeleteDTO.getId())) {
            return true;
        }
        throw new BaseKnownException(10003, "label type 删除失败");
    }
}
