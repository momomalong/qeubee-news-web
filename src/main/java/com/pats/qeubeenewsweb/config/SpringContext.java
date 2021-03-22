package com.pats.qeubeenewsweb.config;

import org.springframework.beans.BeansException;
import org.springframework.context.ApplicationContext;
import org.springframework.context.ApplicationContextAware;
import org.springframework.lang.NonNull;
import org.springframework.stereotype.Component;

/**
 * 上下文
 *
 * @author mqt
 * @version 1.0
 * @date 2020/12/3 15:59
 */
@Component
public class SpringContext implements ApplicationContextAware {
    private static ApplicationContext applicationContext;

    /**
     * 设置上下文
     *
     * @param applicationContext 上下文
     * @throws BeansException 1
     */
    @Override
    public void setApplicationContext(@NonNull ApplicationContext applicationContext) throws BeansException {
        SpringContext.applicationContext = applicationContext;
    }

    /**
     * 获取Bean
     *
     * @param clazz 需要Bean的class
     * @param <T>   泛型
     * @return Bean
     */
    public static <T> T getBean(Class<T> clazz) {
        return applicationContext.getBean(clazz);
    }

    public static Object getBean(String beanName) {
        return applicationContext.getBean(beanName);
    }

    public static <T> T getBean(String beanName, Class<T> clazz) {
        return applicationContext.getBean(beanName, clazz);
    }
}
