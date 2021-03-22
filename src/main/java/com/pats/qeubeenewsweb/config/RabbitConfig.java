package com.pats.qeubeenewsweb.config;

import org.springframework.amqp.core.*;
import org.springframework.amqp.rabbit.config.SimpleRabbitListenerContainerFactory;
import org.springframework.amqp.rabbit.connection.CachingConnectionFactory;
import org.springframework.amqp.rabbit.core.RabbitTemplate;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Executors;

/**
 * rabbit mq config
 *
 * @author : wenjie.pei
 * @version : 1.0.0
 * @since : 2020.06.11
 */
@Configuration
public class RabbitConfig {

    public RabbitConfig(SimpleRabbitListenerContainerFactory simpleRabbitListenerContainerFactory) {
        simpleRabbitListenerContainerFactory.setContainerCustomizer(e -> e.setTaskExecutor(Executors.newFixedThreadPool(5)));
    }

    /**
     * 新闻 exchange
     */
    @Value("${rabbit.qeubee.exchange.newsTopicExchange}")
    private String newsTopicExchange;

    /**
     * 前端消息推送 exchange
     */
    @Value("${rabbit.qeubee.exchange.gatewayNewsExchange}")
    private String gatewayNewsExchange;

    /**
     * 异常成交消息推送 exchange
     */
    @Value("${rabbit.qeubee.exchange.abnormalTradeRank}")
    private String abnormalTradeRankExchange;

    /**
     * 舆情 队列
     */
    @Value("${rabbit.qeubee.queue.labelBackQueue}")
    private String labelBackQueue;

    /**
     * label 队列
     */
    @Value("${rabbit.qeubee.queue.labelQueue}")
    private String labelQueue;

    /**
     * 公告 队列
     */
    @Value("${rabbit.qeubee.queue.bulletinQueue}")
    private String bulletinQueue;

    /**
     * 公告 队列
     */
    @Value("${rabbit.qeubee.queue.bulletinBondQueue}")
    private String bulletinBondQueue;

    /**
     * 异常成交消费 队列
     */
    @Value("${rabbit.qeubee.queue.qbNewsAbnormalTradeRankQueue}")
    private String qbNewsAbnormalTradeRankQueue;

    /**
     * label back 路由Key
     */
    @Value("${rabbit.qeubee.routingkey.labelBackRoutingKey}")
    private String labelBackRoutingKey;
    /**
     * LABEL topic 路由Key
     */
    @Value("${rabbit.qeubee.routingkey.labelRoutingKey}")
    private String labelRoutingKey;

    /**
     * 公告topic 路由key
     */
    @Value("${rabbit.qeubee.routingkey.bulletinRoutingKey}")
    private String bulletinRoutingKey;

    @Value("${rabbit.qeubee.routingkey.bulletinBondRoutingKey}")
    private String bulletinBondRoutingKey;

    @Value("${rabbit.qeubee.exchange.poExchange}")
    private String poExchange;

    @Value("${rabbit.qeubee.queue.poNewsQueue}")
    private String poNewsQueue;

    @Bean
    public RabbitTemplate rabbitTemplate(CachingConnectionFactory connectionFactory) {
        // set extra CachingConnectionFactory config here
        // set extra RabbitTemplate config here
        return new RabbitTemplate(connectionFactory);
    }

    /**
     * 新闻 topic 交换机
     */
    @Bean
    public TopicExchange newsTopicExchange() {
        return new TopicExchange(newsTopicExchange);
    }

    /**
     * 前端推送 交换机
     */
    @Bean
    public FanoutExchange gatewayNewsExchange() {
        return new FanoutExchange(gatewayNewsExchange, false, false);
    }

    /**
     * 异常成交 交换机
     */
    @Bean
    public FanoutExchange abnormalTradeRankExchange() {
        return new FanoutExchange(abnormalTradeRankExchange, false, false);
    }

    /**
     * 舆情数据源 交换机
     */
    @Bean
    public FanoutExchange publicOpinionSourceExchange() {
        return new FanoutExchange(poExchange, false, false);
    }

    /**
     * py服务返回的数据 消息队列
     */
    @Bean
    public Queue labelBackQueue() {
        return new Queue(labelBackQueue, false, false, false);
    }

    /**
     * 新闻label 舆情 消息队列
     */
    @Bean
    public Queue labelQueue() {
        return new Queue(labelQueue, false, false, false);
    }

    /**
     * 新闻label 舆情 消息队列
     */
    @Bean
    public Queue publicOpinionSourceQueue() {
        return new Queue(poNewsQueue, false, false, false);
    }

    /**
     * 新闻 公告 消息队列
     */
    @Bean
    public Queue bulletinQueue() {
        Map<String, Object> map = new HashMap<>(4);
        map.put("x-expires", 1000 * 5);
        map.put("x-message-ttl", 1000 * 10);
        return new Queue(bulletinQueue, false, false, true, map);
    }

    /**
     * 新闻 公告 消息队列
     */
    @Bean
    public Queue bulletinBondQueue() {
        Map<String, Object> map = new HashMap<>(4);
        map.put("x-expires", 1000 * 5);
        map.put("x-message-ttl", 1000 * 10);
        return new Queue(bulletinBondQueue, false, false, true, map);
    }

    /**
     * 异常成交 消息队列
     */
    @Bean
    public Queue qbNewsAbnormalTradeRankQueue() {
        Map<String, Object> map = new HashMap<>(4);
        map.put("x-expires", 1000 * 60 * 10);
        map.put("x-message-ttl", 1000 * 60 * 10);
        return new Queue(qbNewsAbnormalTradeRankQueue, false, false, true, map);
    }

    /**
     * 舆情数据源绑定
     */
    @Bean
    public Binding bindingExchangePublicOpinionSource(Queue publicOpinionSourceQueue, FanoutExchange publicOpinionSourceExchange) {
        return BindingBuilder.bind(publicOpinionSourceQueue).to(publicOpinionSourceExchange);
    }

    /**
     * 舆情队列 绑定 exchange
     */
    @Bean
    public Binding bindingExchangePublicOpinion(Queue labelBackQueue, TopicExchange newsTopicExchange) {
        return BindingBuilder.bind(labelBackQueue).to(newsTopicExchange).with(labelBackRoutingKey);
    }

    /**
     * 舆情 Label 队列 绑定 exchange
     */
    @Bean
    public Binding bindingExchangePublicOpinionLabel(Queue labelQueue, TopicExchange newsTopicExchange) {
        return BindingBuilder.bind(labelQueue).to(newsTopicExchange).with(labelRoutingKey);
    }

    /**
     * 公告队列 绑定 exchange
     */
    @Bean
    public Binding bindingExchangeBulletin(Queue bulletinQueue, TopicExchange newsTopicExchange) {
        return BindingBuilder.bind(bulletinQueue).to(newsTopicExchange).with(bulletinRoutingKey);
    }

    /**
     * 公告队列 绑定 exchange
     */
    @Bean
    public Binding bindingExchangeBulletinBond(Queue bulletinBondQueue, TopicExchange newsTopicExchange) {
        return BindingBuilder.bind(bulletinBondQueue).to(newsTopicExchange).with(bulletinBondRoutingKey);
    }

    /**
     * 异常成交队列 绑定 exchange
     */
    @Bean
    public Binding bindingExchangeTradeRank(Queue qbNewsAbnormalTradeRankQueue, FanoutExchange abnormalTradeRankExchange) {
        return BindingBuilder.bind(qbNewsAbnormalTradeRankQueue).to(abnormalTradeRankExchange);
    }

}