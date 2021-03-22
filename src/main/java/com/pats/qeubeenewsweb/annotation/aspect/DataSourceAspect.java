package com.pats.qeubeenewsweb.annotation.aspect;

import com.pats.qeubeenewsweb.annotation.DataSource;
import com.pats.qeubeenewsweb.config.DataSourceRoutingKeyHolder;
import lombok.extern.slf4j.Slf4j;
import org.apache.commons.lang.StringUtils;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.reflect.MethodSignature;
import org.springframework.core.annotation.Order;
import org.springframework.stereotype.Component;

/**
 * 拦截注解 @DataSource
 *
 * @author mqt
 * @version 1.0
 * @date 2020/12/3 10:40
 */
@Order(-1)
@Slf4j
@Aspect
@Component
public class DataSourceAspect {

    @Around("@annotation(dataSource) || @within(dataSource)")
    public Object dataSourceProcess(ProceedingJoinPoint jp, DataSource dataSource) throws Throwable {
        Object proceed = null;
        try {
            MethodSignature signature = (MethodSignature) jp.getSignature();
            DataSource dataSource1 = signature.getMethod().getAnnotation(DataSource.class);
            if (dataSource1 == null) {
                dataSource1 = signature.getMethod().getClass().getAnnotation(DataSource.class);
            }
            if (dataSource1 != null && StringUtils.isNotBlank(dataSource1.dataSourceName())) {
                // 切换数据源
                log.info("Switch data source ：{}", dataSource1.dataSourceName());
                DataSourceRoutingKeyHolder.setRoutingKey(dataSource1.dataSourceName());
            }
            proceed = jp.proceed();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            // 删除数据源
            DataSourceRoutingKeyHolder.removeRoutingKey();
        }
        return proceed;
    }
}
