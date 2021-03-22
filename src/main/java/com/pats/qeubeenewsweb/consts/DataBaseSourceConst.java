package com.pats.qeubeenewsweb.consts;

/**
 * <p>Title: DataBaseSourceConst</p>
 * <p>Description: 数据库资源常量</p>
 *
 * @author :wenjie.pei
 * @version :1.0.0
 * @since :2020.08.19
 */
public class DataBaseSourceConst {

    /**
     * id
     */
    public static final String ID = "id";

    /**
     * qb_news_search_history table
     */
    public static final String TBL_QB_NEWS_SEARCH_HISTORY = "qb_news_search_history";

    /**
     * qb_news_search_history columns
     */
    public static final String COL_SEARCH_HISTORY_KEYWORD = "keyword";
    public static final String COL_SEARCH_HISTORY_USER_ID = "user_id";
    public static final String COL_SEARCH_HISTORY_CREATE_TIME = "create_time";
    public static final String COL_SEARCH_HISTORY_UPDATE_TIME = "update_time";
    public static final String COL_SEARCH_HISTORY_SCOPE = "scope";

    /**
     * qb_news_search_public_opinion table
     */
    public static final String TBL_QB_NEWS_PUBLIC_OPINION = "qb_news_public_opinion";

    /**
     * qb_news_search_public_opinion columns
     */
    public static final String COL_PUBLIC_OPINION_NEWS_ID = "news_id";
    public static final String COL_PUBLIC_OPINION_TITLE = "title";
    public static final String COL_PUBLIC_OPINION_SUMMARY = "summary";
    public static final String COL_PUBLIC_OPINION_CONTENT = "content";
    public static final String COL_PUBLIC_OPINION_RISK = "risk";
    public static final String COL_PUBLIC_OPINION_SOURCE = "source";
    public static final String COL_PUBLIC_OPINION_MAIN_BODY = "main_body";
    public static final String COL_PUBLIC_OPINION_REFER_BOND = "refer_bond";
    public static final String COL_PUBLIC_OPINION_BOND_CODE = "bond_code";
    public static final String COL_PUBLIC_OPINION_BOND_TYPE = "bond_type";
    public static final String COL_PUBLIC_OPINION_BOND_ID = "bond_id";
    public static final String COL_PUBLIC_OPINION_MENTION_COM = "mention_com";
    public static final String COL_PUBLIC_OPINION_AUTHOR = "author";
    public static final String COL_PUBLIC_OPINION_URL = "url";
    public static final String COL_PUBLIC_OPINION_ATTACHMENT = "attachment";
    public static final String COL_PUBLIC_OPINION_COMPLIANCE = "compliance";
    public static final String COL_PUBLIC_OPINION_CREATE_TIME = "create_time";
    public static final String COL_PUBLIC_OPINION_UPDATE_TIME = "update_time";
    public static final String COL_PUBLIC_OPINION_ARTICLE_SCORE = "article_score";
    public static final String COL_PUBLIC_OPINION_ISSUER_CODE = "issuer_code";
    public static final String COL_PUBLIC_OPINION_ISSUER_NAME = "issuer_name";
    public static final String COL_PUBLIC_OPINION_BOND_KEY = "bond_key";
    public static final String COL_PUBLIC_OPINION_MENTION_COM_SHORT_NAME = "mention_com_short_name";
    public static final String COL_PUBLIC_OPINION_SHORT_NAME = "short_name";


    /**
     * qb_news_search_public_opinion_label table
     */
    public static final String TBL_QB_NEWS_PUBLIC_OPINIO_LABEL = "qb_news_public_opinion_label";

    /**
     * qb_news_search_public_opinion_label column
     */
    public static final String COL_PUBLIC_OPINION_LABEL_PUBLIC_OPINION_ID = "public_opinion_id";
    public static final String COL_PUBLIC_OPINION_LABEL_LABEL_ID = "label_id";

    /**
     * qb_news_sp_bulletin column
     */
    public static final String COL_BULLETIN_TITLE = "title";
    public static final String COL_BULLETIN_SUMMARY = "summary";
    public static final String COL_BULLETIN_CONTENT = "content";
    public static final String COL_BULLETIN_AUTHOR = "author";
    public static final String COL_BULLETIN_SOURCE = "source";
    public static final String COL_BULLETIN_URL = "url";
    public static final String COL_BULLETIN_ATTACHMENT = "attachment";
    public static final String COL_BULLETIN_COMPLIANCE = "compliance";
    public static final String COL_BULLETIN_CREATE_TIME = "create_time";
    public static final String COL_BULLETIN_UPDATE_TIME = "update_time";
    public static final String COL_BULLETIN_BULLETIN_ID = "bulletin_id";
    public static final String COL_BULLETIN_ISSUER_NAME = "issuer_name";
    public static final String COL_BULLETIN_CATE_CODE2 = "cate_code2";

    /**
     * qb_news_bulletin_com_ref column
     */
    public static final String COL_BULLETIN_COM_REF_BULLETIN_ID = "bulletin_id";
    public static final String COL_BULLETIN_COM_REF_COM_ID = "com_id";
    public static final String COL_BULLETIN_COM_REF_NAME = "name";
    public static final String COL_BULLETIN_COM_REF_ICONS = "icons";
    public static final String COL_BULLETIN_COM_REF_LEVELS = "levels";
    public static final String COL_BULLETIN_COM_REF_NATURE = "nature";
    public static final String COL_BULLETIN_COM_REF_LIQUIDITY = "liquidity";

    /**
     * qb_news_bulletin_label column
     */
    public static final String COL_BULLETIN_LABEL_BULLETIN_ID = "bulletin_id";
    public static final String COL_BULLETIN_LABEL_LABEL_ID = "label_id";


    /**
     * qb_news_public_opinion_ranking_list table
     */
    public static final String TBL_QB_NEWS_PUBLIC_OPINIO_RANKING_LIST = "qb_news_public_opinion_ranking_list";

    /**
     * qb_news_public_opinion_ranking_list column
     */
    public static final String COL_RANKING_LIST_PUBLIC_OPINION_ID = "public_opinion_id";
    public static final String COL_RANKING_LIST_TITLE = "title";
    public static final String COL_RANKING_LIST_READING_AMOUNT = "reading_amount";
    public static final String COL_RANKING_LIST_SORT = "sort";
    public static final String COL_RANKING_LIST_TIME_DIMENSION = "time_dimension";
    public static final String COL_RANKING_LIST_TYPE = "type";

    /**
     * qb_news_home_hotword table
     */
    public static final String TBL_QB_NEWS_HOME_HOTWORD = "qb_news_home_hotword";

    /**
     * qb_news_home_hotword  column
     */
    public static final String COL_HOME_HOTWORD_LABEL_ID = "label_id";
    public static final String COL_HOME_HOTWORD_SCOPE = "hotword.scope";

    /**
     * qb_news_label  column
     */
    public static final String QB_NEWS_LABEL_ID = "id";
    public static final String QB_NEWS_LABEL_CLASSIFY = "classify";
    public static final String QB_NEWS_LABEL_TYPE_ID = "type_id";
    public static final String QB_NEWS_LABEL_NAME = "name";

    /**
     * qb_news_label_type column
     */
    public static final String QB_NEWS_LABELTYPE_ID = "id";
    public static final String QB_NEWS_LABEL_TYPE_SCOPE = "scope";
    public static final String QB_NEWS_LABELTYPE_NAME = "name";
    public static final String QB_NEWS_LABEL_TYPE_CLASSIFY = "classify";

    /**
     * qb_news_sp_bulletin_bond column
     */
    public static final String QB_NEWS_SP_BULLETIN_BOND_FILE_ID = "file_id";
    public static final String QB_NEWS_SP_BULLETIN_BOND_BOND_KEY = "bond_key";
    public static final String QB_NEWS_SP_BULLETIN_BOND_BOND_CODE = "bond_code";
    public static final String QB_NEWS_SP_BULLETIN_BOND_SHORT_NAME = "short_name";
    public static final String QB_NEWS_SP_BULLETIN_BOND_CREATE_TIME = "create_time";

    /**
     * 舆情entity
     */
    public static final String ENTITY_PUBLIC_OPINION = "publicOpinion";
    public static final String FIELD_PUBLIC_OPINION_TITLE = "title";
    public static final String FIELD_PUBLIC_OPINION_SUMMARY = "summary";
    public static final String FIELD_PUBLIC_OPINION_REFER_BOND = "referBond";
    public static final String FIELD_PUBLIC_OPINION_MAIN_BODY = "mainBody";
    public static final String FIELD_PUBLIC_OPINION_COMPLIANCE = "compliance";
    public static final String FIELD_PUBLIC_OPINION_LABEL = "label";
    public static final String FIELD_PUBLIC_OPINION_LABEL_ID = "labels.id";
    public static final String FIELD_PUBLIC_OPINION_LABEL_NAME = "labels.name";

    /**
     * 公告entity
     */
    public static final String ENTITY_BULLETIN = "bulletin";
    public static final String FIELD_BULLETIN_TITLE = "title";
    public static final String FIELD_BULLETIN_SUMMARY = "summary";
    public static final String FIELD_BULLETIN_REFER_BOND = "referBond";
    public static final String FIELD_BULLETIN_MAIN_BODY = "mainBody";
    public static final String FIELD_BULLETIN_COMPLIANCE = "compliance";
    public static final String FIELD_BULLETIN_LABEL = "label";
    public static final String FIELD_BULLETIN_LABEL_ID = "labels.id";
    public static final String FIELD_BULLETIN_LABEL_NAME = "labels.name";

    /**
     * qb_news_label_bond_issuer_info
     */
    public static final String COL_BOND_ISSUER_INFO_ISSUER_PROVINCE = "issuer_province";
    public static final String COL_BOND_ISSUER_INFO_ISSUER_SECTOR = "issuer_sector";
    public static final String COL_BOND_ISSUER_INFO_ISSUER_SUBSECTOR = "issuer_subsector";

    /**
     * qb_news_public_opinion column
     */
    public static final String QB_NEWS_PUBLIC_OPINION_ISSUER_NAME = "issuer_name";

    /**
     * qb_news_public_opinion_label column
     */
    public static final String QB_NEWS_PUBLIC_OPINION_LABEL_PUBLIC_OPINION_ID = "public_opinion_id";

    /**
     * spider_file_category
     */
    public static final String SPIDER_FILE_CATEGORY_PID = "pid";
    public static final String SPIDER_FILE_CATEGORY_CODE = "code";
    public static final String SPIDER_FILE_CATEGORY_NAME = "name";
    public static final String SPIDER_FILE_CATEGORY_DELFLAG = "delflag";

}