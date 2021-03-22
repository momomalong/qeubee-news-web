package com.pats.qeubeenewsweb.consts;

/**
 * <p>Title: RabbitMQPushMsgTypeConst</p>
 * <p>Description: mq消息推送类型常量类</p>
 *
 * @author :wenjie.pei
 * @version :1.0.0
 * @since :2020.09.15
 */
public class RabbitMQPushMsgTypeConst {

    /**
     * 舆情
     */
    public static final String MQ_MSG_TYPE_PUBLIC_OPINION = "publicOpinion";
    /**
     * 舆情label 推送
     */
    public static final String MQ_MSG_TYPE_PUBLIC_OPINION_LABEL = "publicOpinionLabel";

    /**
     * 公告
     */
    public static final String MQ_MSG_TYPE_BULLETIN = "bulletin";

    /**
     * 热词
     */
    public static final String MQ_MSG_TYPE_HOTWORD = "hotword";

    /**
     * 标签
     */
    public static final String MQ_MSG_TYPE_LABEL = "label";

    /**
     * 排行榜
     */
    public static final String MQ_MSG_TYPE_RANKING_LIST = "rankinglist";

    /**
     * 舆情合规性设置
     */
    public static final String MQ_MSG_TYPE_PUBLIC_OPINION_COMPLIANCE = "POCompliance";

    /**
     * 公告合规性设置
     */
    public static final String MQ_MSG_TYPE_BULLETIN_COMPLIANCE = "BCompliance";

    /**
     * 异常成交排行
     */
    public static final String MQ_MSG_TYPE_ABNORMAL_TRADE_RANK = "abnormalTradeRank";

}
