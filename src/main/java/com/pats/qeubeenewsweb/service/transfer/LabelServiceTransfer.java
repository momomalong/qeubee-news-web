package com.pats.qeubeenewsweb.service.transfer;

import com.pats.qeubeenewsweb.entity.bo.LabelDetailBO;
import com.pats.qeubeenewsweb.entity.bo.LabelInsertBatchResponseBO;
import com.pats.qeubeenewsweb.entity.dto.label.LabelDTO;
import com.pats.qeubeenewsweb.entity.dto.label.LabelDeleteDTO;
import com.pats.qeubeenewsweb.entity.dto.label.LabelDetailDTO;
import com.pats.qeubeenewsweb.entity.dto.label.LabelGroupDTO;
import com.pats.qeubeenewsweb.entity.dto.label.LabelGroupQueryDTO;
import com.pats.qeubeenewsweb.entity.dto.label.LabelInsertDTO;
import com.pats.qeubeenewsweb.entity.dto.label.LabelsQueryDTO;
import com.pats.qeubeenewsweb.otherservice.LabelService;
import com.pats.qeubeenewsweb.utils.ApiResultDealUtils;
import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.CollectionUtils;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

/**
 * <p>
 * 标签表 服务类
 * </p>
 *
 * @author qintai.ma
 * @since 2020-09-01
 */
@Service
public class LabelServiceTransfer {

    @Autowired
    private LabelService service;

    public List<LabelDetailBO> findAll() {
        return ApiResultDealUtils.dealResult(service.findAll());
    }

    public List<LabelDetailBO> findByCondition(LabelsQueryDTO labelsQueryDTO) {
        return ApiResultDealUtils.dealResult(service.findByCondition(labelsQueryDTO));
    }

    public List<LabelGroupDTO> findLabelGroup(LabelGroupQueryDTO labelsQueryDTO) {
        return ApiResultDealUtils.dealResult(service.findLabelGroup(labelsQueryDTO));
    }

    public List<LabelInsertBatchResponseBO> create(LabelInsertDTO labelsInsertDTO) {
        return ApiResultDealUtils.dealResult(service.create(labelsInsertDTO));
    }

    public Boolean remove(LabelDeleteDTO labelsDeleteDTO) {
        return ApiResultDealUtils.dealResult(service.remove(labelsDeleteDTO));
    }

    /**
     * 根据id翻译标签 名称
     *
     * @param labels 标签
     * @return 翻译后的集合
     */
    public List<LabelDTO> translationNameById(List<LabelDTO> labels) {
        if (CollectionUtils.isEmpty(labels)) {
            return labels;
        }
        String ids = labels.stream().map(e -> e.getId() + "").collect(Collectors.joining(","));
        if (StringUtils.isNotEmpty(ids)) {
            Map<Integer, LabelDetailBO> labelMap = ApiResultDealUtils.dealResult(service.findByIds(ids))
                    .stream().filter(e -> e.getClassify() == 2).collect(Collectors.toMap(LabelDetailBO::getId, e -> e));
            Iterator<LabelDTO> iterator = labels.iterator();
            while (iterator.hasNext()) {
                LabelDTO label = iterator.next();
                try {
                    LabelDetailBO labelDetailBO = labelMap.get(label.getId());
                    if (labelDetailBO != null) {
                        label.setName(labelDetailBO.getName());
                    } else {
                        iterator.remove();
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }
        return labels;
    }


    public List<LabelDetailBO> updateById(LabelDetailDTO labelDetailDTO) {
        if (labelDetailDTO.getId() != null) {
            List<LabelDetailDTO> list = new ArrayList<>();
            list.add(labelDetailDTO);
            return ApiResultDealUtils.dealResult(service.saveOrUpdateBatch(list));
        }
        return new ArrayList<>();
    }
}
