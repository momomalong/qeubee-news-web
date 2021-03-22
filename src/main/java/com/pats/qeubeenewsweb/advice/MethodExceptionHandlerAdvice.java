package com.pats.qeubeenewsweb.advice;

import org.aopalliance.intercept.MethodInterceptor;
import org.aopalliance.intercept.MethodInvocation;

/**
 * <p>
 * Title: MethodExceptionHandlerAdvice
 * </p>
 * <p>
 * Description: 方法抛出异常切面处理
 * </p>
 * 
 * @author :wenjie.pei
 * @since :2020.08.26
 * @version :1.0.0
 */
public class MethodExceptionHandlerAdvice implements MethodInterceptor {

    /**
     * 拦截到方法抛出异常后, 封装返回消息处理
     */
    @Override
    public Object invoke(MethodInvocation method) throws Throwable {
        
        return null;
    }
    
}