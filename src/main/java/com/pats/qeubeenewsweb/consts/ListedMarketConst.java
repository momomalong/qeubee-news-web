package com.pats.qeubeenewsweb.consts;

import lombok.AllArgsConstructor;
import lombok.Getter;

/**
 * 债券市场(优先级按顺序)
 *
 * @author : qintai.ma
 * @version :1.0.0
 * @date : create in 2020/10/12 19:25
 */
@Getter
@AllArgsConstructor
public class ListedMarketConst {

    /**
     * 银行间
     */
    public static final String CIB = "CIB";
    public static final String XIBE = "XIBE";
    /**
     * 上交所
     */
    public static final String SSE = "SSE";
    public static final String XSHG = "XSHG";
    /**
     * 深交所
     */
    public static final String SZSE = "SZE";
    public static final String XSHE = "XSHE";

}
