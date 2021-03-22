package com.pats.qeubeenewsweb.advice;

import java.util.Arrays;
import java.util.stream.Collectors;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.pats.qeubeenews.common.exception.BaseKnownException;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.stereotype.Component;

import lombok.extern.slf4j.Slf4j;

/**
 * <p>Title: MethodHandlerAdvice</p>
 * <p>Description: 业务方法切面</p>
 * 
 * @author :wenjie.pei
 * @since  :2020.08.24
 * @version :1.0.0
 */
@Aspect
@Component
@Slf4j
public class MethodHandlerAdvice {

    private static final String POINT_CUT_EXPRESSION = "execution(public * com.pats.qeubeenewsweb.service.*.*(..))"
        + " or execution(public * com.pats.qeubeenewsweb.controller.*.*(..))";

    private static final String POINT_CUT_METHOD_NAME = "pointCut()";

    private static final ObjectMapper MAPPER = new ObjectMapper();

    @Pointcut(POINT_CUT_EXPRESSION)
    public void pointCut(){}

    /**
     * <p>方法前置通知</p>
     * <p>进入方法时输出log</p>
     * 
     * @param joinPoint 切面
     */
    @Before(value = POINT_CUT_METHOD_NAME)
    public void before(JoinPoint joinPoint) {
        // 
        String method = joinPoint.getSignature().toShortString();

        log.info("{} is started, parameter is {}", 
            method, 
            Arrays.stream(joinPoint.getArgs())
                .map(item -> {
                    try {
                        return MAPPER.writeValueAsString(item);
                    } catch (JsonProcessingException e) {
                        log.error("{} param can not parse json, param is {}", item);
                        throw new BaseKnownException(null, "json parse exception");
                    }
                }).collect(Collectors.joining(" , ")));
    }
    
}