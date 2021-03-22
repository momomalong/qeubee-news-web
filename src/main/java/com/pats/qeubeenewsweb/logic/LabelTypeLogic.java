package com.pats.qeubeenewsweb.logic;

import com.baomidou.mybatisplus.extension.service.IService;
import com.pats.qeubeenewsweb.entity.bo.LabelTypeDetailBO;
import com.pats.qeubeenewsweb.entity.dto.label.LabelTypeDeleteDTO;
import com.pats.qeubeenewsweb.entity.dto.label.LabelTypeDetailDTO;
import com.pats.qeubeenewsweb.entity.LabelType;
import org.springframework.web.bind.annotation.RequestBody;

import java.util.List;

/**
 * <p>
 * 新闻标签分类表 服务类
 * </p>
 *
 * @author qintai.ma
 * @since 2020-09-01
 */
public interface LabelTypeLogic extends IService<LabelType> {

    /**
     * @param scope 标签所属范围 可选项：news: 舆情 bulletin：公告 null: 全查
     * @return 获取标签类型列表
     */
    List<LabelTypeDetailBO> findByCondition(String scope);

    /**
     * @param labelTypeDetailDTO 创建参数
     * @return 新建分类
     */
    LabelTypeDetailBO create(@RequestBody LabelTypeDetailDTO labelTypeDetailDTO);

    /**
     * @param labelTypeDetailDTO 修改参数
     * @return 修改分类
     */
    LabelTypeDetailBO modify(@RequestBody LabelTypeDetailDTO labelTypeDetailDTO);

    /**
     * 删除分类
     *
     * @param labelTypeDeleteDTO 删除参数
     * @return 是否成功
     */
    Boolean remove(@RequestBody LabelTypeDeleteDTO labelTypeDeleteDTO);
}
