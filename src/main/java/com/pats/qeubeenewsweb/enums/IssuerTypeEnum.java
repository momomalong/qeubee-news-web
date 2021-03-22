package com.pats.qeubeenewsweb.enums;

import lombok.AllArgsConstructor;
import lombok.Getter;

/**
 * 发行人性质
 *
 * @author : qintai.ma
 * @since : create in 2020/9/18 19:25
 * @version :1.0.0
 */
@Getter
@AllArgsConstructor
public enum IssuerTypeEnum {
    /**
     * 发行人性质
     */
    SHCP("SHCP", "国有控股"),
    SOCP("SOCP", "国有独资"),
    SOEP("SOEP", "国有企业"),
    PVCP("PVCP", "民营企业"),
    FICP("FICP", "外资企业"),
    SFJV("SFJV", "中外合资企业"),
    HMTC("HMTC", "港澳台资企业"),
    SICP("SICP", "国有参股企业"),
    NAPS("NAPS", "自然人"),
    SASA("SASA", "中央国资委"),
    PSAC("PSAC", "省级国资委"),
    CSAC("CSAC", "市区级国资委"),
    GOVT("GOVT", "国务院"),
    CTOF("CTOF", "中央机构"),
    PGOV("PGOV", "省级地方政府"),
    CGOV("CGOV", "市区级地方政府"),
    SOOG("SOOG", "国有机关或团体"),
    GPOG("GPOG", "集体机关或团体"),
    PVOG("PVOG", "私人机关或团体");

    private final String key;
    private final String value;

    public static String translation(String key) {
        for (IssuerTypeEnum value : values()) {
            if (value.key.equals(key)) {
                return value.value;
            }
        }
        return "";
    }
}
