package com.pats.qeubeenewsweb.config;

import com.pats.qeubeenewsweb.consts.TreadExecutorConfigConst;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;
import org.springframework.scheduling.annotation.EnableAsync;
import org.springframework.scheduling.concurrent.CustomizableThreadFactory;
import org.springframework.scheduling.concurrent.ThreadPoolTaskExecutor;

import java.util.concurrent.Executor;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/**
 * <p>Title: TreadPoolExecutorConfig</p>
 * <p>Description: TreadPoolExecutorConfig</p>
 *
 * @author: wenjie.pei
 * @version: 1.0.0
 * @since : 1.0.0
 */
@Configuration
@EnableAsync
@PropertySource(value = TreadExecutorConfigConst.THREAD_POOL_EXECUTOR_CONFIG_PATH)
public class TreadPoolExecutorConfig {

    /**
     * 定时任务线程池
     */
    @ConfigurationProperties(prefix = TreadExecutorConfigConst.THREAD_POOL_CONFIG_SCHEDULE)
    @Bean
    public Executor scheduleExecutor() {
        ThreadPoolTaskExecutor executor = new ThreadPoolTaskExecutor();
        executor.setRejectedExecutionHandler(new ThreadPoolExecutor.AbortPolicy());
        executor.initialize();
        return executor;
    }

    /**
     * 舆情消费线程池
     */
    @ConfigurationProperties(prefix = TreadExecutorConfigConst.THREAD_POOL_CONFIG_PUBLIC_OPINION)
    @Bean
    public Executor publicOpinionExecutor() {
        ThreadPoolTaskExecutor executor = new ThreadPoolTaskExecutor();
        executor.setRejectedExecutionHandler(new ThreadPoolExecutor.DiscardOldestPolicy());
        executor.initialize();
        return executor;
    }

    /**
     * 公告消费线程池
     */
    @ConfigurationProperties(prefix = TreadExecutorConfigConst.THREAD_POOL_CONFIG_BULLETIN)
    @Bean
    public Executor bulletinExecutor() {
        ThreadPoolTaskExecutor executor = new ThreadPoolTaskExecutor();
        executor.setRejectedExecutionHandler(new ThreadPoolExecutor.DiscardOldestPolicy());
        executor.initialize();
        return executor;
    }

    /**
     * 公告债券消费线程池
     */
    @ConfigurationProperties(prefix = TreadExecutorConfigConst.THREAD_POOL_CONFIG_BULLETIN_BOND)
    @Bean
    public Executor bulletinBondExecutor() {
        ThreadPoolTaskExecutor executor = new ThreadPoolTaskExecutor();
        executor.setRejectedExecutionHandler(new ThreadPoolExecutor.DiscardOldestPolicy());
        executor.initialize();
        return executor;
    }

    /**
     * 异常成交消费线程池
     */
    @ConfigurationProperties(prefix = TreadExecutorConfigConst.THREAD_POOL_CONFIG_ABNORMAL_TRADE)
    @Bean
    public Executor abnormalTradeRankExecutor() {
        ThreadPoolTaskExecutor executor = new ThreadPoolTaskExecutor();
        executor.setRejectedExecutionHandler(new ThreadPoolExecutor.DiscardOldestPolicy());
        executor.initialize();
        return executor;
    }

    @Bean
    public Executor runExecutor() {
        LinkedBlockingQueue<Runnable> workQueue = new LinkedBlockingQueue<>();
        CustomizableThreadFactory factory = new CustomizableThreadFactory("Common-thread-");
        return new ThreadPoolExecutor(3, 5, 1, TimeUnit.MINUTES, workQueue, factory);
    }

}