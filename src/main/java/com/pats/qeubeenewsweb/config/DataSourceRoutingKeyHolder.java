package com.pats.qeubeenewsweb.config;

/**
 * 存储当前线程使用的数据源
 *
 * @author mqt
 * @version 1.0
 * @date 2020/12/2 17:28
 */
public class DataSourceRoutingKeyHolder {

    private final static ThreadLocal<String> ROUTING_KEY = new ThreadLocal<>();

    public static void setRoutingKey(String k) {
        ROUTING_KEY.set(k);
    }

    public static String getRoutingKey() {
        return ROUTING_KEY.get();
    }

    public static void removeRoutingKey() {
        ROUTING_KEY.remove();
    }
}
