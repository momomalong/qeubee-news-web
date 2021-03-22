package com.pats.qeubeenewsweb.service;

import com.pats.qeubeenewsweb.entity.dto.hotword.HotWordDeleteDTO;
import com.pats.qeubeenewsweb.entity.dto.label.HotWordInsertDTO;
import com.pats.qeubeenewsweb.entity.dto.hotword.HotWordDTO;

import java.util.List;

/**
 * <p>
 * 首页热词 服务类
 * </p>
 *
 * @author qintai.ma
 * @since 2020-09-01
 */
public interface HomeHotwordWebService {

    /**
     * 首页热词获取接口 调用处理
     *
     * @param scope 新闻类别
     * @return 首页热词列表
     */
    List<HotWordDTO> findAll(String scope, Integer limit);

    /**
     * 新建首页热词(支持批量)
     *
     * @return
     */
    List<HotWordDTO> create(HotWordInsertDTO hotWordInsertDTO);

    /**
     * 删除首页热词(支持批量)
     */
    Boolean remove(HotWordDeleteDTO hotWordInsertDTO);

}
