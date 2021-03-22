package com.pats.qeubeenewsweb.enums;

import lombok.AllArgsConstructor;
import lombok.Getter;

/**
 * 整体情绪等级
 *
 * @author : zhaoyong.huang
 * @version :1.0.0
 * @date : create in 2020/12/25 16:04
 */
@Getter
@AllArgsConstructor
public enum MoodEnum {

    /**
     * 情绪等级，低于30为消极，高于70为积极，其余为中性
     */
    LEVEL1(1, 0, 35," #f9483A",""),

    LEVEL2(2, 36, 64,"",""),

    LEVEL3(3, 65, 100,"green","");

    /**
     * 等级
     */
    private final Integer rank;
    /**
     * 情绪值起
     */
    private final Integer moodStart;
    /**
     * 情绪值结束
     */
    private final Integer moodEnd;
    /**
     * 颜色
     */
    private final String color;
    /**
     *
     * 背景色与透明度
     */
    private final String RGB;

    /**
     * 情绪级别判断
     *
     * @param mood 情绪值
     * @return 情绪等级
     */
    public static Integer getRank(Integer mood) {
        for (MoodEnum value : values()) {
            if (value.getMoodStart() <= mood && value.getMoodEnd() >= mood) {
                return value.getRank();
            }
        }
        return 0;
    }

    /**
     * @param rank 情绪等级
     * @return 分数
     */
    public static MoodEnum getMoodByRank(Integer rank) {
        for (MoodEnum value : values()) {
            if (value.getRank().equals(rank)) {
                return value;
            }
        }
        return LEVEL2;
    }
}
