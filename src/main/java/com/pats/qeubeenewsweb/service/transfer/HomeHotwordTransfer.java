package com.pats.qeubeenewsweb.service.transfer;

import com.pats.qeubeenewsweb.entity.bo.HotWordDetailBO;
import com.pats.qeubeenewsweb.entity.dto.hotword.HotWordDeleteDTO;
import com.pats.qeubeenewsweb.entity.dto.label.HotWordInsertDTO;
import com.pats.qeubeenewsweb.otherservice.HomeHotwordService;
import com.pats.qeubeenewsweb.utils.ApiResultDealUtils;
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
public class HomeHotwordTransfer {
    @Autowired
    private HomeHotwordService service;

    /**
     * 首页热词获取接口 调用处理
     *
     * @param scope 新闻类别
     * @return 首页热词列表
     */
    public List<HotWordDetailBO> findAll(String scope, Integer limit) {
        return ApiResultDealUtils.dealResult(service.findAll(scope, limit));
    }

    /**
     * 新建首页热词(支持批量)
     *
     * @return
     */
    public List<HotWordDetailBO> create(HotWordInsertDTO hotWordInsertDTO) {
        return ApiResultDealUtils.dealResult(service.create(hotWordInsertDTO));
    }

    /**
     * 删除首页热词(支持批量)
     */
    public Boolean remove(HotWordDeleteDTO hotWordInsertDTO) {
        return ApiResultDealUtils.dealResult(service.remove(hotWordInsertDTO));
    }

}
