package com.pats.qeubeenewsweb.service;

import com.pats.qeubeenewsweb.entity.Label;
import com.pats.qeubeenewsweb.entity.bo.LabelDetailBO;
import com.pats.qeubeenewsweb.entity.bo.LabelInsertBatchResponseBO;
import com.pats.qeubeenewsweb.entity.dto.label.LabelAndLabelTypeDTO;
import com.pats.qeubeenewsweb.entity.dto.label.LabelDTO;
import com.pats.qeubeenewsweb.entity.dto.label.LabelDeleteDTO;
import com.pats.qeubeenewsweb.entity.dto.label.LabelDetailDTO;
import com.pats.qeubeenewsweb.entity.dto.label.LabelGroupDTO;
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
public interface LabelWebService {
    /**
     * @return 获取全部标签
     */
    List<LabelDetailBO> findAll();

    /**
     * @param labelsQueryDTO 参数
     * @return 获取所有过滤标签
     */
    List<LabelDetailBO> findByCondition(LabelsQueryDTO labelsQueryDTO);

    /**
     * 获取所标签组
     *
     * @param labelGroupQueryDTO 参数
     * @return 获取所有过滤标签
     */
    List<LabelGroupDTO> findLabelGroup(LabelGroupQueryDTO labelGroupQueryDTO);

    /**
     * @param labelsInsertDTO 参数
     * @return 成功后的数据
     */
    List<LabelInsertBatchResponseBO> create(LabelInsertDTO labelsInsertDTO);

    /**
     * @param labelDetailDTO 参数
     * @return 成功后的值
     */
    List<LabelDetailBO> updateById(LabelDetailDTO labelDetailDTO);

    /**
     * @param labelsDeleteDTO id
     * @return 状态
     */
    Boolean remove(LabelDeleteDTO labelsDeleteDTO);

    /**
     * 通过标签名称获取标签，没有则新增再获取
     *
     * @param labelName 标签名
     * @return 标签集
     */
    List<Label> processIsInsertLabel(List<LabelDTO> labelName);

    /**
     * 通过标签的scope属性获取所有标签与标签类型
     * @param scope 标签所属范围
     * @return 所有标签结果集
     */
    List<LabelAndLabelTypeDTO> findByScope(String scope,int labelClassify,int labelTypeClassify,String labelName,int start,int end);

}
