package com.pats.qeubeenewsweb.exception;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;

@Getter
@AllArgsConstructor
@NoArgsConstructor
public class QbException extends RuntimeException {

    private static final long serialVersionUID = -5091624893594839863L;

    public static final Integer SERVER_ERROR_CODE = 10008;

    private Integer code;

    private String errMsg;
    
}
