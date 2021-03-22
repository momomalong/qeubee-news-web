package com.pats.qeubeenewsweb.mq.consumer;

import java.util.ArrayList;
import java.util.List;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.pats.qeubeenewsweb.consts.RabbitMQPushMsgTypeConst;
import com.pats.qeubeenewsweb.entity.AbnormalTrade;
import com.pats.qeubeenewsweb.mq.provider.QeubeeNewsProvider;
import com.pats.qeubeenewsweb.service.AbnormalTradeRankService;

import org.springframework.stereotype.Component;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

/**
 * <p>Title: QeubeeAbnormalTradeRankReceiver</p>
 * <p>Description: 异常成交记录排行消费者</p>
 * 
 * @author :wenjie.pei
 * @since  :2020.09.17
 * @version :1.0.0
 */
@Component
@RequiredArgsConstructor
@Slf4j
public class QeubeeAbnormalTradeRankReceiver {

    private final QeubeeNewsProvider provider;

    private final AbnormalTradeRankService abnormalTradeService;

    /**
     * 异常成交排行记录消费
     * 
     * @param message   异常成交数据
     */
//    @RabbitListener(queues = RabbitMQConfigConst.RABBIT_MQ_ABNORMAL_TRADE_RANK_QUEUE,
//        executor = TreadExecutorConfigConst.THREAD_POOL_NAME_ABNORMAL_TRADE)
    public void receiveQeubeeAbnormalTrade(String message) {
        try {
            log.info("rabbit abnormal trade rank message consume: {}", message);
            // 转换异常成交记录      
            List<ArrayList> allTrade = JSONArray.parseArray(message, ArrayList.class);
            List<List<AbnormalTrade>> tradeRank = new ArrayList<>();
            // 涨幅
            List<AbnormalTrade> positiveTrade = JSONArray.parseArray(JSON.toJSONString(allTrade.get(0)), AbnormalTrade.class);
            tradeRank.add(positiveTrade);
            // 跌幅
            List<AbnormalTrade> negtiveTrade = JSONArray.parseArray(JSON.toJSONString(allTrade.get(1)), AbnormalTrade.class);
            tradeRank.add(negtiveTrade);
            // 缓存本次排行
            abnormalTradeService.save(tradeRank);
            // 将异常成交记录排行推送到前端
            provider.pushToFront(tradeRank, RabbitMQPushMsgTypeConst.MQ_MSG_TYPE_ABNORMAL_TRADE_RANK);
        } catch (Exception e) {
            log.error(
                "QeubeeAbnormalTradeRankReceiver.receiveQeubeeAbnormalTrade error, param is {}, error message is {}",
                message, e.getMessage());
        }
    }
    
}
