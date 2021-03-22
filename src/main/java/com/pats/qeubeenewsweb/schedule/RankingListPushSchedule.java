package com.pats.qeubeenewsweb.schedule;

import com.pats.qeubeenewsweb.consts.RabbitMQPushMsgTypeConst;
import com.pats.qeubeenewsweb.consts.TreadExecutorConfigConst;
import com.pats.qeubeenewsweb.mq.provider.QeubeeNewsProvider;
import com.pats.qeubeenewsweb.service.RankingListWebService;

import org.springframework.scheduling.annotation.Async;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

/**
 * <p>Title: RankingListPushSchedule</p>
 * <p>Description: 阅读排行榜定时推送任务</p>
 * 
 * @author :wenjie.pei
 * @since  :2020.09.03
 * @version :1.0.0
 */
@Component
@RequiredArgsConstructor
@Slf4j
public class RankingListPushSchedule {

    private final RankingListWebService rankingListService;

    private final QeubeeNewsProvider qeubeeNewsProvider;

    /**
     * 舆情定时推送任务
     */
    @Async(TreadExecutorConfigConst.THREAD_POOL_NAME_SCHEDULE)
    @Scheduled(cron = "0 0/10 * * * ?")
    public void pushRankingList() {
        rankingListService.updateAndfindRankingList();
        log.info("ranking list push message is started");
        // 更新并推送排行数据
        qeubeeNewsProvider.pushToFront(
            rankingListService.findRankingList(), 
            RabbitMQPushMsgTypeConst.MQ_MSG_TYPE_RANKING_LIST);
    }

    /**
     * 舆情排行定时存储
     */
    @Async(TreadExecutorConfigConst.THREAD_POOL_NAME_SCHEDULE)
    @Scheduled(cron = "0 50 23 * * ?")
    public void saveRankingList() {
        log.info("ranking list is saved");
        // 持久化排行数据
        rankingListService.saveRankingList();
    }

}