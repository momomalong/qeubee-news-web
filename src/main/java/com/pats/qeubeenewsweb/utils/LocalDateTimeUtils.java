package com.pats.qeubeenewsweb.utils;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

/**
 * @author mqt
 * @version 1.0
 * @date 2020/12/24 14:13
 */
public class LocalDateTimeUtils {

    public static final String DATE_TIME = "yyyy-MM-dd HH:mm:ss";
    public static final String DATE_TIME1 = "yyyy.MM.dd HH:mm:ss";
    public static final String DATE_TIME2 = "yyyy.MM.dd'T'HH:mm:ss.SSS";
    public static final String DATE = "yyyy-MM-dd";
    public static final DateTimeFormatter DATE_TIME_FORMATTER = DateTimeFormatter.ofPattern(DATE_TIME);
    public static final DateTimeFormatter DATE_TIME_FORMATTER1 = DateTimeFormatter.ofPattern(DATE_TIME1);
    public static final DateTimeFormatter DATE_FORMATTER = DateTimeFormatter.ofPattern(DATE);

    public static LocalDateTime objectToLocalDateTime(Object s) {
        return s == null ? null : LocalDateTime.parse(s + "", DATE_TIME_FORMATTER);
    }

    public static LocalDate objectToLocalDate(Object s) {
        return s == null ? null : LocalDate.parse(s + "", DATE_FORMATTER);
    }

    public static String getNowString() {
        return DATE_TIME_FORMATTER.format(LocalDateTime.now());
    }

}
