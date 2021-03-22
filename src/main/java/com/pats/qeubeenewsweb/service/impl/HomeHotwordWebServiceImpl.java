package com.pats.qeubeenewsweb.service.impl;

import com.pats.qeubeenews.common.utils.BeansMapper;
import com.pats.qeubeenewsweb.entity.dto.hotword.HotWordDeleteDTO;
import com.pats.qeubeenewsweb.entity.dto.label.HotWordInsertDTO;
import com.pats.qeubeenewsweb.consts.RabbitMQPushMsgTypeConst;
import com.pats.qeubeenewsweb.entity.dto.hotword.HotWordDTO;
import com.pats.qeubeenewsweb.mq.provider.QeubeeNewsProvider;
import com.pats.qeubeenewsweb.service.HomeHotwordWebService;
import com.pats.qeubeenewsweb.service.transfer.HomeHotwordTransfer;
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
public class HomeHotwordWebServiceImpl implements HomeHotwordWebService {
    @Autowired
    private HomeHotwordTransfer transfer;

    @Autowired
    private QeubeeNewsProvider qeubeeNewsProvider;

    /**
     * 首页热词获取接口 调用处理
     *
     * @param scope 新闻类别
     * @return 首页热词列表
     */
    @Override
    public List<HotWordDTO> findAll(String scope, Integer limit) {
        return BeansMapper.convertList(transfer.findAll(scope, limit), HotWordDTO.class);
    }

    /**
     * 新建首页热词(支持批量)
     *
     * @return
     */
    @Override
    public List<HotWordDTO> create(HotWordInsertDTO hotWordInsertDTO) {
        List<HotWordDTO> result = BeansMapper.convertList(transfer.create(hotWordInsertDTO), HotWordDTO.class);
        // 重新推送热词
        qeubeeNewsProvider.pushToFront(
            this.findAll(null, 10),
            RabbitMQPushMsgTypeConst.MQ_MSG_TYPE_HOTWORD);
        return result;
    }

    /**
     * 删除首页热词(支持批量)
     *
     * @return
     */
    @Override
    public Boolean remove(HotWordDeleteDTO hotWordInsertDTO) {
        Boolean result = transfer.remove(hotWordInsertDTO);
        // 重新推送热词
        qeubeeNewsProvider.pushToFront(
            this.findAll(null, 10),
            RabbitMQPushMsgTypeConst.MQ_MSG_TYPE_HOTWORD);
        return result;
    }

}
