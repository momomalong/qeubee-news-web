package com.pats.qeubeenewsweb.consts;

/**
 * redis names,      表名:业务方法名:TTL,        TTL为0或不写代表不设置,单位为s
 *
 * @author : qintai.ma
 * @version :1.0.0
 * @date : create in 2020/8/28 16:05
 */
public class RedisCacheNamesConst {

    /**
     * 超时时间，需要设置在key后面
     */
    public static final long TTL = 18000;

    /**
     * 公告ById 查询
     */
    public static final String BULLETIN_FIND_BY_ID = "wf:clsnews:bulletin:findById:" + TTL;

    /**
     * 公告分页 查询
     */
    public static final String BULLETIN_FIND_BY_PAGE = "wf:clsnews:bulletin:findByPage:" + TTL;

    /**
     * 舆情find Bonds 查询债券详情缓存key
     */
    public static final String PUBLIC_OPINION_FIND_BONDS = "wf:clsnews:public_opinion:findBonds:";

    /**
     * 舆情find by id 查询缓存key
     */
    public static final String PUBLIC_OPINION_FIND_BY_ID = "wf:clsnews:public_opinion:findById:" + TTL;

    /**
     * 公告列表 缓存key
     */
    public static final String BULLETIN_SP_GET_TYPES = "wf:clsnews:Bulletin_Sp:getTypes:" + 7200;

    /**
     * 不合规舆情缓存 key
     */
    public static final String NON_COMPLIANCE_PUBLIC_OPINION = "{wf:clsnews:rankinglist}.non_compliance_public_opinion";

    /**
     * 手动排行榜
     */
    public static final String MANUAL_RANKING_LIST = "{wf:clsnews:rankinglist}.manual_ranking_list";

    /**
     * 舆情分布 排名
     */
    public static final String GET_PO_DISTRIBUTION = "wf:clsnews:getPoOrder:7200";

    /**
     * redis 异常成交记录排行
     * key
     */
    public static final String ABNORMAL_TRADE_RANK = "wf:clsnews:abnormal_trade_rank";

    /**
     * 重新统计热词（幂等性key）
     */
    public static final String STATISTICS_NEW_HOT_WORDS_SCHEDULE = "wf:clsnews:statisticsNewHotWordsSchedule:statisticsNewHotWords";
    /**
     * 更新缓存（幂等性key）
     */
    public static final String REFRESH_CACHE = "wf:clsnews:refresh:cache";
    /**
     * 更新bond缓存（幂等性key）
     */
    public static final String REFRESH_BOND_CACHE = "wf:clsnews:refresh:cache:bond";
    /**
     * 启动时补充简称数据 publicOpinionShortName
     */
    public static final String PUBLIC_OPINION_SHORT_NAME = "wf:clsnews:publicOpinionShortName:run";

}
