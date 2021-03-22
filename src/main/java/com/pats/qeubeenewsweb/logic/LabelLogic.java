package com.pats.qeubeenewsweb.logic;

import com.baomidou.mybatisplus.extension.service.IService;
import com.pats.qeubeenewsweb.entity.Label;
import com.pats.qeubeenewsweb.entity.LabelGroup;
import com.pats.qeubeenewsweb.entity.dto.label.LabelDeleteDTO;
import com.pats.qeubeenewsweb.entity.dto.label.LabelDetailDTO;
import com.pats.qeubeenewsweb.entity.dto.label.LabelGroupQueryDTO;
import com.pats.qeubeenewsweb.entity.dto.label.LabelInsertDTO;
import com.pats.qeubeenewsweb.entity.dto.label.LabelsQueryDTO;

import java.util.List;

/**
 * <p>
 * 标签表 服务类
 * </p>
 *
 * @author qintai.ma
 * @since 2020-09-01
 */
public interface LabelLogic extends IService<Label> {

    /**
     * @return 获取所有标签
     */
    List<Label> findAll();

    /**
     * 获取所有过滤标签
     *
     * @param labelsQueryDTO 参数
     * @return 获取所有过滤标签
     */
    List<Label> findByCondition(LabelsQueryDTO labelsQueryDTO);

    /**
     * 获取所标签组
     *
     * @param labelGroupQueryDTO 参数
     * @return 获取所有过滤标签
     */
    List<LabelGroup> findLabelGroup(LabelGroupQueryDTO labelGroupQueryDTO);

    /**
     * 批量新建标签
     *
     * @param labelsInsertDTO 参数
     * @return 成功后的数据
     */
    List<Label> create(LabelInsertDTO labelsInsertDTO);

    /**
     * 批量新增
     *
     * @param list 参数
     * @return 成功后的数据
     */
    List<Label> saveOrUpdateBatch(List<LabelDetailDTO> list);

    /**
     * 删除标签
     *
     * @param labelsDeleteDTO id
     * @return 状态
     */
    Boolean remove(LabelDeleteDTO labelsDeleteDTO);


}
