package com.pats.qeubeenewsweb.config;

import lombok.extern.slf4j.Slf4j;
import org.apache.qpid.client.AMQConnectionFactory;
import org.apache.qpid.url.URLSyntaxException;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.jms.core.JmsTemplate;

/**
 * qpid 配置类
 *
 * @author mqt
 * @date 2021/01/19 14点24分
 */
@Configuration
@Slf4j
public class QpidConfig {

    @Value("${qpid.url}")
    private String url;

    @Bean
    public AMQConnectionFactory connectionFactory() {
        AMQConnectionFactory connectionFactory = new AMQConnectionFactory();
        try {
            connectionFactory.setConnectionURLString(url);
        } catch (URLSyntaxException var3) {
            log.error("Connection qpid failed,url:{}", url, var3);
        }
        return connectionFactory;
    }

    @Bean
    public JmsTemplate jmsTemplate(AMQConnectionFactory connectionFactory) {
        return new JmsTemplate(connectionFactory);
    }
}
