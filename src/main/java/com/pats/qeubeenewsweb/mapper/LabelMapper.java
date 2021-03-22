package com.pats.qeubeenewsweb.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.pats.qeubeenewsweb.entity.Label;
import com.pats.qeubeenewsweb.entity.dto.label.LabelAndLabelTypeDTO;
import com.pats.qeubeenewsweb.entity.dto.label.LabelBondsDTO;
import com.pats.qeubeenewsweb.entity.dto.label.LabelDTO;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * <p>
 * 标签表 Mapper 接口
 * </p>
 *
 * @author qintai.ma
 * @since 2020-09-01
 */
public interface LabelMapper extends BaseMapper<Label> {

    /**
     * 债卷名称查询
     *
     * @param id 舆情id
     * @return 债卷名称
     */
    List<LabelBondsDTO> findBonds(Integer id);

    /**
     * 风险标签集
     *
     * @param id id
     * @return 风险标签集
     */
    List<LabelDTO> findRiskLabel(@Param(value = "id") String id);

    /**
     * 通过标签的scope属性获取所有标签与标签类型
     *
     * @param scope             标签所属范围
     * @param labelClassify     标签合规性
     * @param labelTypeClassify 标签类型合规性
     * @return 所有标签结果集
     */
    List<LabelAndLabelTypeDTO> findByScope(@Param("scope") String scope,
                                           @Param("labelClassify") int labelClassify,
                                           @Param("labelTypeClassify") int labelTypeClassify,
                                           @Param("labelName") String labelName,
                                           @Param("start") int start,
                                           @Param("end") int end);

    /**
     * 查询所有债券信息
     *
     * @return 结果集
     */
    List<LabelBondsDTO> findBondsInfo();
}
