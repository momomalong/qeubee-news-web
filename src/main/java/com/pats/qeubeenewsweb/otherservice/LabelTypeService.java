package com.pats.qeubeenewsweb.otherservice;

import com.pats.qeubeenews.common.dto.ResultDTO;
import com.pats.qeubeenewsweb.entity.bo.LabelTypeDetailBO;
import com.pats.qeubeenewsweb.entity.dto.label.LabelTypeDeleteDTO;
import com.pats.qeubeenewsweb.entity.dto.label.LabelTypeDetailDTO;

import java.util.List;

/**
 * <p>
 * 新闻标签分类表 服务类
 * </p>
 *
 * @author qintai.ma
 * @since 2020-09-01
 */
public interface LabelTypeService {

    /**
     * @param scope 标签所属范围 可选项：news: 舆情 bulletin：公告 null: 全查
     * @return 获取标签类型列表
     */
    ResultDTO<List<LabelTypeDetailBO>> findByCondition(String scope);

    /**
     * @param labelTypeDetailDTO 参数
     * @return 新建分类
     */
    ResultDTO<LabelTypeDetailBO> create(LabelTypeDetailDTO labelTypeDetailDTO);

    /**
     * @param labelTypeDetailDTO 参数
     * @return 修改分类
     */
    ResultDTO<LabelTypeDetailBO> modify(LabelTypeDetailDTO labelTypeDetailDTO);

    /**
     * @param labelTypeDeleteDTO 参数
     * @return 删除分类
     */
    ResultDTO<Boolean> remove(LabelTypeDeleteDTO labelTypeDeleteDTO);

}
