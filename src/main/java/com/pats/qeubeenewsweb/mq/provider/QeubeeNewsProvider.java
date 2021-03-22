package com.pats.qeubeenewsweb.mq.provider;

import com.alibaba.fastjson.JSONObject;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.pats.qeubeenewsweb.mq.QeubeeNewsMessage;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.amqp.rabbit.core.RabbitTemplate;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;

/**
 * <p>
 * Title: QeubeeNewsProvider
 * </p>
 * <p>
 * Description: 前端消息推送
 * </p>
 *
 * @author :wenjie.pei
 * @version :1.0.0
 * @since :2020.09.15
 */
@Component
@RequiredArgsConstructor
@Slf4j
public class QeubeeNewsProvider {

    private final RabbitTemplate rabbitTemplate;

    @Value("${rabbit.qeubee.exchange.gatewayNewsExchange}")
    private String exchange;

    /**
     * 向前端推送 message
     *
     * @param data    数据
     * @param msgType 消息类型
     */
    public void pushToFront(Object data, String msgType) {
        try {
            log.info("QeubeeNewsProvider.pushToFront is started, param is {} {}", msgType, data);
            QeubeeNewsMessage message = new QeubeeNewsMessage(msgType, data);
            log.info(JSONObject.toJSONString(message));
            // 推送阅读排行数据
            rabbitTemplate.setEncoding("UTF-8");
            ObjectMapper mapper = new ObjectMapper();
            rabbitTemplate.convertAndSend(exchange, null, mapper.writeValueAsBytes(message));
        } catch (Exception e) {
            log.error("Error occurred while push rabbit message, {}", e.getMessage());
        }
    }

}
