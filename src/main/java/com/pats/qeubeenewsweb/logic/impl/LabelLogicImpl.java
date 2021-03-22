package com.pats.qeubeenewsweb.logic.impl;

import com.alibaba.fastjson.JSONObject;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.pats.qeubeenews.common.exception.BaseKnownException;
import com.pats.qeubeenews.common.utils.BeansMapper;
import com.pats.qeubeenewsweb.entity.Label;
import com.pats.qeubeenewsweb.entity.LabelGroup;
import com.pats.qeubeenewsweb.entity.bo.LabelGroupQueryBO;
import com.pats.qeubeenewsweb.entity.dto.label.LabelDeleteDTO;
import com.pats.qeubeenewsweb.entity.dto.label.LabelDetailDTO;
import com.pats.qeubeenewsweb.entity.dto.label.LabelGroupQueryDTO;
import com.pats.qeubeenewsweb.entity.dto.label.LabelInsertBatchDTO;
import com.pats.qeubeenewsweb.entity.dto.label.LabelInsertDTO;
import com.pats.qeubeenewsweb.entity.dto.label.LabelsQueryDTO;
import com.pats.qeubeenewsweb.logic.LabelLogic;
import com.pats.qeubeenewsweb.mapper.LabelGroupMapper;
import com.pats.qeubeenewsweb.mapper.LabelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Map;
import java.util.Optional;
import java.util.stream.Collectors;

/**
 * <p>
 * 标签表 服务实现类
 * </p>
 *
 * @author qintai.ma
 * @since 2020-09-01
 */
@Service
public class LabelLogicImpl extends ServiceImpl<LabelMapper, Label> implements LabelLogic {

    @Autowired
    private LabelGroupMapper labelGroupMapper;


    @Override
    public List<Label> findAll() {
        return this.list();
    }

    @Override
    public List<Label> findByCondition(LabelsQueryDTO dto) {
        Map<String, Object> map = JSONObject.parseObject(JSONObject.toJSONString(dto)).getInnerMap();
        return this.listByMap(map);
    }

    @Override
    public List<LabelGroup> findLabelGroup(LabelGroupQueryDTO labelGroupQueryDTO) {
        return labelGroupMapper.findByLabelType(BeansMapper.convert(labelGroupQueryDTO, LabelGroupQueryBO.class));
    }

    @Override
    public List<Label> create(LabelInsertDTO labelsInsertDTO) {
        // 转为数据库对应的实体类
        List<Label> list = Optional.ofNullable(labelsInsertDTO.getLabels()).orElse(new ArrayList<>())
            .stream()
            .map(LabelInsertBatchDTO::ofQbNewsLabelEntityBuilder)
            .flatMap(Collection::stream)
            .collect(Collectors.toList());
        // 批量新增
        if (this.saveBatch(list)) {
            return list;
        }
        throw new BaseKnownException(10001, "标签新增失败");
    }

    @Override
    public List<Label> saveOrUpdateBatch(List<LabelDetailDTO> list) {
        List<Label> labels = BeansMapper.convertList(list, Label.class);
        LocalDateTime now = LocalDateTime.now();
        // 设置更新时间
        labels.forEach(e -> {
            if (e.getId() == null) {
                e.setCreateTime(now);
            }
            e.setUpdateTime(now);
        });
        super.saveOrUpdateBatch(labels);
        return labels;
    }

    @Override
    public Boolean remove(LabelDeleteDTO labelsDeleteDTO) {
        if (this.removeByIds(labelsDeleteDTO.getIds())) {
            return true;
        }
        throw new BaseKnownException(10003, "标签删除失败");
    }

}
