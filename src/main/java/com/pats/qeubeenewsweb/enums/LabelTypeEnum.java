package com.pats.qeubeenewsweb.enums;

import lombok.AllArgsConstructor;
import lombok.Getter;

/**
 * 标签类型
 *
 * @author : zhaoyong.huang
 * @version :1.0.0
 * @date : create in 2020/11/27 17:04
 */
@Getter
@AllArgsConstructor
public enum LabelTypeEnum {

    /**
     * 标签类型
     */
    B_ISSUER(61,"发行人"),
    BOND(62,"债券"),
    ISSUER(63,"发行人"),
    RISK(2,"风险事件"),
    USER_CREATE(66,"用户创建"),
    B_FULL_ISSUER(68,"发行人全称"),
    PO_FULL_ISSUER(69,"发行人全称");

    private final Integer typeId;
    private final String name;
}
