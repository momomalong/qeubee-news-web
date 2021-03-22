package com.pats.qeubeenewsweb.consts;

/**
 * <p>Title: ElasticsearchModelConst</p>
 * <p>Description: es 常量类</p>
 * 
 * @author :wenjie.pei
 * @since  :2020.09.13
 * @version :1.0.0
 */
public class ElasticsearchModelConst {
    
    public static final String INDEX_PUBLIC_OPINION = "public_opinion";

    public static final String INDEX_BULLETIN = "bulletin";

    public static final String FIELD_TITLE_KEYWORD = "title.keyword";

    public static final String FIELD_MAIN_BODY_KEYWORD = "mainBody.keyword";

    public static final String FIELD_REFER_BOND_KEYWORD = "referBond.keyword";

    public static final String FIELD_LABEL_ID = "labels.id";

    public static final String FIELD_LABEL_NAME = "labels.name.keyword";

}
