package com.pats.qeubeenewsweb.consts;

/**
 * <p>Title: TreadExecutorConfigConst</p>
 * <p>Description: 初始化配置常量类</p>
 *
 * @author :wenjie.pei
 * @version :1.0.0
 * @since :2020.09.17
 */
public class TreadExecutorConfigConst {

    /**
     * 线程池配置路径
     */
    public static final String THREAD_POOL_EXECUTOR_CONFIG_PATH = "classpath:config/thread-pool-config.properties";

    /**
     * schedule线程池配置 前缀
     */
    public static final String THREAD_POOL_CONFIG_SCHEDULE = "qeubee.news.treadpool.schedule";

    /**
     * 舆情线程池配置 前缀
     */
    public static final String THREAD_POOL_CONFIG_PUBLIC_OPINION = "qeubee.news.treadpool.publicopinion";

    /**
     * 公告线程池配置 前缀
     */
    public static final String THREAD_POOL_CONFIG_BULLETIN = "qeubee.news.treadpool.bulletin";

    /**
     * 公告债券线程池配置 前缀
     */
    public static final String THREAD_POOL_CONFIG_BULLETIN_BOND = "qeubee.news.treadpool.bulletin.bond";


    /**
     * 异常成交线程池配置 前缀
     */
    public static final String THREAD_POOL_CONFIG_ABNORMAL_TRADE = "qeubee.news.treadpool.abnormaltrade";

    /**
     * schedule线程池名称
     */
    public static final String THREAD_POOL_NAME_SCHEDULE = "scheduleExecutor";

    /**
     * 舆情线程池名称
     */
    public static final String THREAD_POOL_NAME_PUBLIC_OPINION = "publicOpinionExecutor";

    /**
     * 公告线程池名称
     */
    public static final String THREAD_POOL_NAME_BULLETIN = "bulletinExecutor";

    /**
     * 异常成交线程池名称
     */
    public static final String THREAD_POOL_NAME_ABNORMAL_TRADE = "abnormalTradeRankExecutor";

    /**
     * 公告债券线程池名称
     */
    public static final String THREAD_POOL_NAME_BULLETIN_BOND = "bulletinBondExecutor";
}
