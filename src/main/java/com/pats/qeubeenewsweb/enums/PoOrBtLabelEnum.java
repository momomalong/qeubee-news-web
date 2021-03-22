package com.pats.qeubeenewsweb.enums;

import lombok.Getter;

import java.io.Serializable;

/**
 * 标签类型
 *
 * @author mqt
 * @version 1.0
 * @date 2021/1/5 14:04
 */
@Getter
public enum PoOrBtLabelEnum implements Serializable {
    /**
     * 标签类型
     */
    bulletin,
    publicOpinion
}
