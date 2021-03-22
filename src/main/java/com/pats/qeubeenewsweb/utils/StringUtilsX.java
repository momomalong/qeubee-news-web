package com.pats.qeubeenewsweb.utils;

import com.pats.qeubeenewsweb.entity.Base;
import org.apache.commons.lang.StringUtils;

import java.text.DecimalFormat;
import java.util.regex.Pattern;

/**
 * @author mqt
 * @version 1.0
 * @date 2020/12/8 10:31
 */
public class StringUtilsX {


    /**
     * 匹配所有特殊字符
     */
    private static final String ALL_SPECIAL_CHARACTERS_REGEX = "[\n`~!@#$%^&*()+=\\-_|{}':;,\\[\\].<>/?！￥…（）—【】‘；：”“’。， 、？]";

    /**
     * 替换所有特殊字符
     *
     * @param source 字符串
     * @return 结果
     */
    public static String replaceAllSpecialCharacters(String source) {
        if (StringUtils.isBlank(source)) {
            return source;
        }
        return source.replaceAll(ALL_SPECIAL_CHARACTERS_REGEX, "").replace(" ", "");
    }

    /**
     * replaceAll 替换语句截取特殊字符
     *
     * @param content 原文内容
     * @return 截取后字符串
     */
    public static String subStr(String content) {
        if (StringUtils.isEmpty(content)) {
            return "";
        }
        String str;
        char[] chars = content.toCharArray();
        String sub = String.valueOf(chars[0]);
        for (char aChar : chars) {
            str = String.valueOf(aChar);
            boolean isMatch = Pattern.matches(ALL_SPECIAL_CHARACTERS_REGEX, str);
            if (!isMatch) {
                sub = str;
                break;
            }
        }
        return content.substring(content.indexOf(sub));
    }

    /**
     * replaceAll 替换语句截取特殊字符
     *
     * @param content 原文内容
     * @return 截取后字符串
     */
    public static String subStr(String content, Base base) {
        if (StringUtils.isEmpty(content)) {
            return "";
        }
        String str;
        char[] chars = content.toCharArray();
        String sub = String.valueOf(chars[0]);
        for (char aChar : chars) {
            str = String.valueOf(aChar);
            boolean isMatch = Pattern.matches(ALL_SPECIAL_CHARACTERS_REGEX, str);
            if (!isMatch) {
                sub = str;
                break;
            }
        }
        return content.substring(content.indexOf(sub));
    }

    /**
     * 判断对象，转为string
     *
     * @param o 对象
     * @return 结果
     */
    public static String objectToString(Object o) {
        return o == null ? "" : o + "";
    }

    /**
     * 判断对象，转化为double
     *
     * @param o 对象
     * @return 结果
     */
    public static String objectToDouble(Object o) {
        if (o == null || StringUtils.isEmpty(o + "")) {
            return "";
        }
        return new DecimalFormat("0.00").format(Double.parseDouble(o + "") * 100);
    }


    /**
     * 比较两个字符串的相似度
     *
     * @param str      源
     * @param target   目标
     * @param isIgnore 是否忽略大小写
     * @return 相似度
     */
    private static int compare(String str, String target, boolean isIgnore) {
        int[][] d; // 矩阵
        int n = str.length();
        int m = target.length();
        int i; // 遍历str的
        int j; // 遍历target的
        char ch1; // str的
        char ch2; // target的
        int temp; // 记录相同字符,在某个矩阵位置值的增量,不是0就是1
        if (n == 0) {
            return m;
        }
        if (m == 0) {
            return n;
        }
        d = new int[n + 1][m + 1];
        // 初始化第一列
        for (i = 0; i <= n; i++) {
            d[i][0] = i;
        }
        // 初始化第一行
        for (j = 0; j <= m; j++) {
            d[0][j] = j;
        }
        // 遍历str
        for (i = 1; i <= n; i++) {
            ch1 = str.charAt(i - 1);
            // 去匹配target
            for (j = 1; j <= m; j++) {
                ch2 = target.charAt(j - 1);
                if (isIgnore) {
                    if (ch1 == ch2 || ch1 == ch2 + 32 || ch1 + 32 == ch2) {
                        temp = 0;
                    } else {
                        temp = 1;
                    }
                } else {
                    if (ch1 == ch2) {
                        temp = 0;
                    } else {
                        temp = 1;
                    }
                }
                // 左边+1,上边+1, 左上角+temp取最小
                d[i][j] = min(d[i - 1][j] + 1, d[i][j - 1] + 1, d[i - 1][j - 1] + temp);
            }
        }
        return d[n][m];
    }

    private static int min(int one, int two, int three) {
        return (one = Math.min(one, two)) < three ? one : three;
    }

    public static float getSimilarityRatio(String str, String target, boolean isIgnore) {
        float ret;
        int max = Math.max(str.length(), target.length());
        if (max == 0) {
            ret = 1;
        } else {
            ret = 1 - (float) compare(str, target, isIgnore) / max;
        }
        return ret;
    }

}
