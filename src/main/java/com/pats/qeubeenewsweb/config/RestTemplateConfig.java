package com.pats.qeubeenewsweb.config;

import com.pats.qeubeenewsweb.advice.ApiCallFailHandlerAdvice;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.http.client.SimpleClientHttpRequestFactory;
import org.springframework.web.client.RestTemplate;

/**
 * RestTemplate配置类
 *
 * @author mqt
 * @date 2021/1/18 14点29分
 */
@Configuration
public class RestTemplateConfig {

    /**
     * 不能加上@LoadBalanced    加上只能请求同一注册中心的服务
     *
     * @return RestTemplate
     */
    @Bean
    public RestTemplate restTemplate() {
        SimpleClientHttpRequestFactory requestFactory = new SimpleClientHttpRequestFactory();
        requestFactory.setConnectTimeout(20000);
        requestFactory.setReadTimeout(20000);
        RestTemplate restTemplate = new RestTemplate(requestFactory);
        restTemplate.setErrorHandler(new ApiCallFailHandlerAdvice());
        return restTemplate;
    }

}
