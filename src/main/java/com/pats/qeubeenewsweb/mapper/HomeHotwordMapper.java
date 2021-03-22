package com.pats.qeubeenewsweb.mapper;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.pats.qeubeenewsweb.entity.HomeHotword;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * <p>
 * 首页热词 Mapper 接口
 * </p>
 *
 * @author qintai.ma
 * @since 2020-09-01
 */
public interface HomeHotwordMapper extends BaseMapper<HomeHotword> {

    /**
     * 根据条件检索热词 并关联 标签
     * @param queryWrapper 构造条件
     * @return 结果集
     */
    List<HomeHotword> findAllWithLabelName(@Param("ew") QueryWrapper<HomeHotword> queryWrapper);

    /**
     * 统计新的热词
     * 清空热词表，查询出`公告`前十和`舆情`前十的数据新增到热词表（两天内绑定最多的标签，前十条）
     *
     * @return 是否成功
     */
    Boolean statisticsNewHotWords();
}
