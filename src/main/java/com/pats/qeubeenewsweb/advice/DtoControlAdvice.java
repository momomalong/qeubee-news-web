package com.pats.qeubeenewsweb.advice;

import com.pats.qeubeenews.common.dto.SysBaseDTO;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.core.MethodParameter;
import org.springframework.http.HttpInputMessage;
import org.springframework.http.converter.HttpMessageConverter;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.servlet.mvc.method.annotation.RequestBodyAdvice;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.io.IOException;
import java.lang.reflect.Type;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.Objects;

/**
 * <p>Title: DtoControlAdvice</p>
 * <p>Description: 控制器增强，统一处理入参的修改人和增加人 </p>
 * <p>Company: www.h-visions.com</p>
 * <p>create date: 2018/11/7</p>
 *
 * @author :leiming
 * @version :1.0.0
 */
@ControllerAdvice
@RequiredArgsConstructor
@Slf4j
public class DtoControlAdvice implements RequestBodyAdvice {

    @Resource
    private HttpServletRequest request;

    @Override
    public boolean supports(MethodParameter methodParameter, Type targetType, Class<? extends HttpMessageConverter<?>> converterType) {
        return true;
    }

    @Override
    public HttpInputMessage beforeBodyRead(HttpInputMessage inputMessage, MethodParameter parameter, Type targetType, Class<? extends HttpMessageConverter<?>> converterType) throws IOException {
        return inputMessage;
    }

    @Override
    public Object afterBodyRead(Object body, HttpInputMessage inputMessage, MethodParameter parameter, Type targetType, Class<? extends HttpMessageConverter<?>> converterType) {
        //判断最终的对象是否是SysBaseDto的子类
        if (!(body instanceof SysBaseDTO)) {
            return body;
        }
        SysBaseDTO sysBaseDTO = (SysBaseDTO) body;

        // 获取系统时间
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");
        String now = formatter.format(LocalDateTime.now());
        // 传递当前时间
        sysBaseDTO.setCreateTime(now);
        sysBaseDTO.setUpdateTime(now);
        // 从请求中获取用户
        String username = request.getHeader("username");
        if (Objects.isNull(username)) {
            return body;
        }
        log.info("Dto control advice work after body read!");
        return sysBaseDTO;
    }

    @Override
    public Object handleEmptyBody(Object body, HttpInputMessage inputMessage,
                                  MethodParameter parameter,
                                  Type targetType,
                                  Class<? extends HttpMessageConverter<?>> converterType) {
        return body;
    }
}
