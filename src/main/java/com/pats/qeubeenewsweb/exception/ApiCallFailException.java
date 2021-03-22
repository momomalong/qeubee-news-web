package com.pats.qeubeenewsweb.exception;

import java.util.Objects;

import com.pats.qeubeenews.common.interfaces.BaseErrorCode;
import com.pats.qeubeenewsweb.consts.CommonConst;

import lombok.Getter;

/**
 * <p>Title: ApiCallFailException</p>
 * <p>Description: api调用失败异常</p>
 * 
 * @author :wenjie.pei
 * @since  :2020.08.21
 * @version :1.0.0
 */
@Getter
public class ApiCallFailException extends RuntimeException {

    private static final long serialVersionUID = -7536759710145659741L;
    
    private Integer code;

    private String message;

    public ApiCallFailException() {
        this.code = -1;
        message = CommonConst.API_CALL_FAIL_MSG_PREFIX + ", 报错信息未设置";
    }

    public ApiCallFailException(Integer errorCode, String errorMessage) {
        this.code = errorCode;
        this.message = CommonConst.API_CALL_FAIL_MSG_PREFIX + (Objects.isNull(errorMessage) ? "" : errorMessage);
    }

    public ApiCallFailException(BaseErrorCode result) {
        super(result.toString());
        this.code = result.getCode();
        this.message = CommonConst.API_CALL_FAIL_MSG_PREFIX + result.getMessage();
    }
}