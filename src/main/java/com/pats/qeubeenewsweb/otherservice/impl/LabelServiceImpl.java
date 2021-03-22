package com.pats.qeubeenewsweb.otherservice.impl;

import com.pats.qeubeenews.common.dto.ResultDTO;
import com.pats.qeubeenews.common.utils.BeansMapper;
import com.pats.qeubeenewsweb.entity.Label;
import com.pats.qeubeenewsweb.entity.bo.LabelDetailBO;
import com.pats.qeubeenewsweb.entity.bo.LabelInsertBatchResponseBO;
import com.pats.qeubeenewsweb.entity.dto.label.LabelDeleteDTO;
import com.pats.qeubeenewsweb.entity.dto.label.LabelDetailDTO;
import com.pats.qeubeenewsweb.entity.dto.label.LabelGroupDTO;
import com.pats.qeubeenewsweb.entity.dto.label.LabelGroupQueryDTO;
import com.pats.qeubeenewsweb.entity.dto.label.LabelInsertDTO;
import com.pats.qeubeenewsweb.entity.dto.label.LabelsQueryDTO;
import com.pats.qeubeenewsweb.logic.LabelLogic;
import com.pats.qeubeenewsweb.otherservice.LabelService;
import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RestController;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/**
 * <p>
 * 标签表 服务实现类
 * </p>
 *
 * @author qintai.ma
 * @since 2020-09-01
 */
@RestController
@Service
public class LabelServiceImpl implements LabelService {

    @Autowired
    private LabelLogic labelLogic;

    @Override
    public ResultDTO<List<LabelDetailBO>> findAll() {
        return ResultDTO.success(BeansMapper.convertList(labelLogic.findAll(), LabelDetailBO.class));
    }

    @Override
    public ResultDTO<List<LabelDetailBO>> findByIds(String ids) {
        if (StringUtils.isNotEmpty(ids)) {
            List<Label> labels = labelLogic.listByIds(Arrays.asList(ids.split(",")));
            return ResultDTO.success(BeansMapper.convertList(labels, LabelDetailBO.class));
        }
        return ResultDTO.success(new ArrayList<>());
    }

    @Override
    public ResultDTO<List<LabelDetailBO>> findByCondition(LabelsQueryDTO labelsQueryDTO) {
        return ResultDTO
            .success(BeansMapper.convertList(labelLogic.findByCondition(labelsQueryDTO), LabelDetailBO.class));
    }

    @Override
    public ResultDTO<List<LabelGroupDTO>> findLabelGroup(LabelGroupQueryDTO labelGroupQueryDTO) {
        return ResultDTO.success(
            BeansMapper.convertList(labelLogic.findLabelGroup(labelGroupQueryDTO), LabelGroupDTO.class));
    }

    @Override
    public ResultDTO<List<LabelInsertBatchResponseBO>> create(LabelInsertDTO labelsInsertDTO) {
        return ResultDTO
            .success(BeansMapper.convertList(labelLogic.create(labelsInsertDTO), LabelInsertBatchResponseBO.class));
    }

    @Override
    public ResultDTO<List<LabelDetailBO>> saveOrUpdateBatch(List<LabelDetailDTO> list) {
        return ResultDTO.success(BeansMapper.convertList(labelLogic.saveOrUpdateBatch(list), LabelDetailBO.class));
    }

    @Override
    public ResultDTO<Boolean> remove(LabelDeleteDTO labelsDeleteDTO) {
        return ResultDTO.success(labelLogic.remove(labelsDeleteDTO));
    }
}
