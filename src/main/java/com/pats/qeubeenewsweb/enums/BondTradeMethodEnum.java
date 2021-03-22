package com.pats.qeubeenewsweb.enums;

import lombok.AllArgsConstructor;
import lombok.Getter;

import javax.validation.constraints.NotNull;

/**
 * @author mqt
 * @version 1.0
 * @date 2021/1/25 15:17
 */
@Getter
@AllArgsConstructor
public enum BondTradeMethodEnum {

    /**
     * 债券成交方式
     */

    GVN("1", "GVN"),
    TKN("2", "TKN"),
    TRD("3", "TRD"),
    CHG("4", "CHG");

    private final String key;
    private final String value;

    public static String conversionValueByKey(@NotNull String key) {
        for (BondTradeMethodEnum value : values()) {
            if (value.key.equals(key)) {
                return value.value;
            }
        }
        return "";
    }
}
