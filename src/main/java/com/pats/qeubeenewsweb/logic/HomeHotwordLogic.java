package com.pats.qeubeenewsweb.logic;

import com.baomidou.mybatisplus.extension.service.IService;
import com.pats.qeubeenewsweb.entity.bo.HotWordDetailBO;
import com.pats.qeubeenewsweb.entity.dto.hotword.HotWordDeleteDTO;
import com.pats.qeubeenewsweb.entity.dto.label.HotWordInsertDTO;
import com.pats.qeubeenewsweb.entity.HomeHotword;

import java.util.List;

/**
 * <p>
 * 首页热词 服务类
 * </p>
 *
 * @author qintai.ma
 * @since 2020-09-01
 */
public interface HomeHotwordLogic extends IService<HomeHotword> {

    /**
     * 获取首页热词
     *
     * @param scope 新闻类别
     * @param limit 截取数量
     * @return 热词列表
     */
    List<HotWordDetailBO> findAll(String scope, Integer limit);

    /**
     * 新建首页热词(支持批量)
     *
     * @param hotWordInsertDTO 新增参数
     * @return 结果
     */
    List<HotWordDetailBO> create(HotWordInsertDTO hotWordInsertDTO);

    /**
     * 删除首页热词(支持批量)
     *
     * @param hotWordInsertDTO 删除参数
     * @return 是否成功
     */
    Boolean remove(HotWordDeleteDTO hotWordInsertDTO);

    /**
     * 统计新的热词
     * 清空热词表，查询出`公告`前十和`舆情`前十的数据新增到热词表（两天内绑定最多的标签，前十条）
     *
     * @return 是否成功
     */
    Boolean statisticsNewHotWords();
}
