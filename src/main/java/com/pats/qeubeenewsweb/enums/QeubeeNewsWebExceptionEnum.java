package com.pats.qeubeenewsweb.enums;

import com.pats.qeubeenews.common.interfaces.BaseErrorCode;

import lombok.AllArgsConstructor;
import lombok.Getter;

/**
 * <p>Title: QeubeeNewsWebExceptionEnum</p>
 * <p>Description: qeubee news web系统的异常code枚举类</p>
 * 
 * @author :wenjie.pei
 * @since  :2020.08.21
 * @version :1.0.0
 */
@AllArgsConstructor
@Getter
public enum QeubeeNewsWebExceptionEnum implements BaseErrorCode {

    // 服务api调用失败异常
    SERVICE_API_CALL_FAILURE(10001);

    private Integer code;

    @Override
    public String getMessage() {
        return this.toString();
    }
    
}