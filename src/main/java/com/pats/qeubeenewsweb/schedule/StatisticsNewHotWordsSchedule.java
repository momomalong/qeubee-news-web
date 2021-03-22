package com.pats.qeubeenewsweb.schedule;

import com.pats.qeubeenewsweb.consts.RedisCacheNamesConst;
import com.pats.qeubeenewsweb.consts.TreadExecutorConfigConst;
import com.pats.qeubeenewsweb.otherservice.HomeHotwordService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.scheduling.annotation.Async;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

import javax.annotation.Resource;
import java.util.concurrent.TimeUnit;

/**
 * @author : qintai.ma
 * @version :1.0.0
 * @date : create in 2020/9/12 16:41
 */
@Component
@Slf4j
public class StatisticsNewHotWordsSchedule {

    @Autowired
    private HomeHotwordService hotwordService;

    @Resource
    private RedisTemplate<String, Object> redisTemplate;

    /**
     * 统计新的热词（会清空当前热词）
     */
    @Async(TreadExecutorConfigConst.THREAD_POOL_NAME_SCHEDULE)
    @Scheduled(cron = "0 0 9,15 * * ?")
    public void statisticsNewHotWords() {
        log.info("准备执行【统计新的热词】 定时任务");
        Boolean aBoolean = redisTemplate.opsForValue()
            .setIfAbsent(RedisCacheNamesConst.STATISTICS_NEW_HOT_WORDS_SCHEDULE, 1, 1L, TimeUnit.HOURS);
        log.info("设置redis key, 结果：{}", aBoolean);
        if (aBoolean == null || !aBoolean) {
            return;
        }
        log.info("开始执行【统计新的热词】 定时任务");
        hotwordService.statisticsNewHotWords();
        log.info("结束执行【统计新的热词】 定时任务");
    }


}
