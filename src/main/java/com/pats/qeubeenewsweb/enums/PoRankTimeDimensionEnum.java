package com.pats.qeubeenewsweb.enums;

import lombok.AllArgsConstructor;
import lombok.Getter;

/**
 * 舆情排名时间维度
 *
 * @author mqt
 * @version 1.0
 * @date 2020/12/28 15:17
 */
@Getter
@AllArgsConstructor
public enum PoRankTimeDimensionEnum {

    /**
     * 舆情排名时间维度
     */
    DAY("day", 1),
    WEEK("week", 7),
    MONTH("month", 30);
    private final String name;
    private final Integer day;
}
