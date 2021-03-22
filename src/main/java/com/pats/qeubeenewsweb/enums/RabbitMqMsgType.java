package com.pats.qeubeenewsweb.enums;

/**
 * Created by jupeng.wang on 2020/4/15.
 */
public enum RabbitMqMsgType {
    // 订阅
    SUB_NEWS("SUB_NEWS", "wf_qeubee_news_front_send_filter"),

    // 取消订阅
    UNSUB_NEWS("UNSUB_NEWS", "wf_qeubee_news_front_send_filter");

    private String msgType;

    private String filter;

    public String getMsgType() {
        return msgType;
    }

    public String getFilter() {
        return filter;
    }

    RabbitMqMsgType(String msgType, String filter) {
        this.msgType = msgType;
        this.filter = filter;
    }

    public static RabbitMqMsgType getRabbitMqMsgType(String msgType) {
        for (RabbitMqMsgType mqMsgType : RabbitMqMsgType.values()) {
            if (mqMsgType.getMsgType().equals(msgType)) {
                return mqMsgType;
            }
        }
        return null;
    }
}
