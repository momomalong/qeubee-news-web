package com.pats.qeubeenewsweb.advice;

import java.io.IOException;

import org.springframework.http.HttpStatus;
import org.springframework.http.client.ClientHttpResponse;
import org.springframework.web.client.ResponseErrorHandler;

/**
 * <p>Title: ApiCallFailHandlerAdvice</p>
 * <p>Description: api调用异常处理</p>
 * 
 * @author :wenjie.pei
 * @since  :2020.09.23
 * @version :1.0.0
 */
public class ApiCallFailHandlerAdvice implements ResponseErrorHandler {

    /**
     *  返回false表示不管response的status是多少都返回没有错
     *  这里可以自己定义那些status code你认为是可以抛Error
     */
    @Override
    public boolean hasError(ClientHttpResponse response) throws IOException {
        return response.getStatusCode() != HttpStatus.REQUEST_TIMEOUT;
    }

    /**
     * 这里面可以实现你自己遇到了Error进行合理的处理
     */
    @Override
    public void handleError(ClientHttpResponse response) throws IOException {
    }
    
}
