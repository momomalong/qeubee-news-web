package com.pats.qeubeenewsweb.config;

import com.pats.qeubeenews.common.advice.ControllerExceptionHandler;
import com.pats.qeubeenews.common.advice.QeubeeNewsApiResultHandler;
import com.pats.qeubeenews.common.advice.ResultFactory;
import com.pats.qeubeenews.common.component.QeubeeNewsI18nInternational;
import com.pats.qeubeenews.common.utils.QeubeeNewsExceptionMapper;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

/**
 * <p>Title: AuthConfig</p>
 * <p>Description: 统一配置，可以重写其中的类来实现特定的策略</p>
 *
 * @author :wenjie.pei
 * @version :1.0.0
 * @since :2020.08.17
 */
@Configuration
public class CommonConfig {

    @Value("${spring.messages.basename}")
    private String basename;

    @Value("${spring.messages.cache-duration}")
    private long cacheMillis;

    @Value("${spring.messages.encoding}")
    private String encoding;

    /**
     * @return 国际化类
     */
    @Bean
    QeubeeNewsI18nInternational getQeubeeNewsI18nInternational() {
        return new QeubeeNewsI18nInternational(basename, cacheMillis, encoding);
    }

    /**
     * @return 异常信息处理类
     */
    @Bean
    QeubeeNewsExceptionMapper getQeubeeNewsExceptionMapper() {
        return new QeubeeNewsExceptionMapper();
    }

    /**
     * @param qeubeeNewsI18nInternational 国际化bean
     * @param qeubeeNewsExceptionMapper   异常映射类
     * @return 异常转换类
     */
    @Bean
    ResultFactory getResultVOFactory(QeubeeNewsI18nInternational qeubeeNewsI18nInternational,
                                     QeubeeNewsExceptionMapper qeubeeNewsExceptionMapper) {
        return new ResultFactory(qeubeeNewsI18nInternational, qeubeeNewsExceptionMapper);
    }

    /**
     * @param resultVOFactory 异常转换类
     * @return 全局统一异常处理bean
     */
    @Bean
    ControllerExceptionHandler getControllerExceptionHandler(ResultFactory resultVOFactory) {
        return new ControllerExceptionHandler(resultVOFactory);
    }

    /**
     * @return 全局统一结果处理类
     */
    @Bean
    QeubeeNewsApiResultHandler getMichiApiResultHandler() {
        return new QeubeeNewsApiResultHandler();
    }


}
