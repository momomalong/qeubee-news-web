package com.pats.qeubeenewsweb.otherservice;

import com.pats.qeubeenews.common.dto.ResultDTO;
import com.pats.qeubeenewsweb.entity.bo.LabelDetailBO;
import com.pats.qeubeenewsweb.entity.bo.LabelInsertBatchResponseBO;
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
public interface LabelService {

    /**
     * @return 获取全部标签
     */
    ResultDTO<List<LabelDetailBO>> findAll();

    /**
     * 根据ids批量查询
     *
     * @param ids id 逗号拼接
     * @return 结果集
     */
    ResultDTO<List<LabelDetailBO>> findByIds(String ids);

    /**
     * @param labelsQueryDTO 参数
     * @return 获取所有过滤标签
     */
    ResultDTO<List<LabelDetailBO>> findByCondition(LabelsQueryDTO labelsQueryDTO);

    /**
     * 获取所标签组
     *
     * @param labelGroupQueryDTO 参数
     * @return 获取所有过滤标签
     */
    ResultDTO<List<LabelGroupDTO>> findLabelGroup(LabelGroupQueryDTO labelGroupQueryDTO);

    /**
     * @param labelsInsertDTO 参数
     * @return 成功后的数据
     */
    ResultDTO<List<LabelInsertBatchResponseBO>> create(LabelInsertDTO labelsInsertDTO);

    /**
     * 批量新增
     *
     * @param list 参数
     * @return 成功后的数据
     */
    ResultDTO<List<LabelDetailBO>> saveOrUpdateBatch(List<LabelDetailDTO> list);

    /**
     * @param labelsDeleteDTO id
     * @return 状态
     */
    ResultDTO<Boolean> remove(LabelDeleteDTO labelsDeleteDTO);
}
