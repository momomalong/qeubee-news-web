package com.pats.qeubeenewsweb.otherservice.impl;

import com.pats.qeubeenewsweb.entity.bo.HotWordDetailBO;
import com.pats.qeubeenews.common.dto.ResultDTO;
import com.pats.qeubeenewsweb.entity.dto.hotword.HotWordDeleteDTO;
import com.pats.qeubeenewsweb.entity.dto.label.HotWordInsertDTO;
import com.pats.qeubeenewsweb.otherservice.HomeHotwordService;
import com.pats.qeubeenewsweb.logic.HomeHotwordLogic;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * <p>
 * 首页热词 服务实现类
 * </p>
 *
 * @author qintai.ma
 * @since 2020-09-01
 */
@Service
public class HomeHotwordServiceImpl implements HomeHotwordService {
    @Autowired
    private HomeHotwordLogic logic;

    /**
     * 根据新闻类别获取首页热词
     *
     * @param scope 新闻类别
     * @return 热词列表
     */
    @Override
    public ResultDTO<List<HotWordDetailBO>> findAll(String scope, Integer limit) {
        return ResultDTO.success(logic.findAll(scope, limit));
    }

    /**
     * 新建首页热词(支持批量)
     *
     * @param hotWordInsertDTO 参数
     * @return 结果集
     */
    @Override
    public ResultDTO<List<HotWordDetailBO>> create(HotWordInsertDTO hotWordInsertDTO) {
        return ResultDTO.success(logic.create(hotWordInsertDTO));
    }

    /**
     * 删除首页热词(支持批量)
     *
     * @param hotWordInsertDTO 参数
     * @return 结果集
     */
    @Override
    public ResultDTO<Boolean> remove(HotWordDeleteDTO hotWordInsertDTO) {
        return ResultDTO.success(logic.remove(hotWordInsertDTO));
    }

    @Override
    public ResultDTO<Boolean> statisticsNewHotWords() {
        return ResultDTO.success(logic.statisticsNewHotWords());
    }

}
