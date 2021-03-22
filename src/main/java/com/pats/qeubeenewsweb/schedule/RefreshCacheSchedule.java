package com.pats.qeubeenewsweb.schedule;

import com.pats.qeubeenewsweb.config.ApiDataCache;
import com.pats.qeubeenewsweb.consts.RedisCacheNamesConst;
import com.pats.qeubeenewsweb.consts.TreadExecutorConfigConst;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.scheduling.annotation.Async;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

import javax.annotation.Resource;
import java.util.concurrent.TimeUnit;

/**
 * 定时更新API缓存
 *
 * @author mqt
 * @date 2020/11/27 17:11
 */
@Slf4j
@Component
public class RefreshCacheSchedule {

    @Resource
    private RedisTemplate<String, Object> redisTemplate;

    @Autowired
    private ApiDataCache apiDataCache;

    /**
     * 更新缓存（会清空当前热词）
     */
    @Async(TreadExecutorConfigConst.THREAD_POOL_NAME_SCHEDULE)
    @Scheduled(cron = "0 45 5 * * ?")
    public void refreshCache() {
        log.info("准备执行【更新缓存】 定时任务");
        long l = System.currentTimeMillis();
        Boolean aBoolean = redisTemplate.opsForValue()
            .setIfAbsent(RedisCacheNamesConst.REFRESH_CACHE, 1, 1L, TimeUnit.HOURS);
        log.info("设置redis key, 结果：{}", aBoolean);
        if (aBoolean == null || !aBoolean) {
            return;
        }
        log.info("开始执行【更新缓存】 定时任务");
        apiDataCache.apiDataCacheRefresh(null);
        log.info("结束执行【更新缓存】 定时任务，用时：{}", System.currentTimeMillis() - l);
    }
}
