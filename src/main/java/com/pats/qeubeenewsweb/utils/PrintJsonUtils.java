package com.pats.qeubeenewsweb.utils;

import com.alibaba.fastjson.JSONObject;

/**
 * @author mqt
 * @version 1.0
 * @date 2021/1/27 11:33
 */
public class PrintJsonUtils {

    public static JSONObject ofJson(String msg, StackTraceElement... stackTraceElements) {
        JSONObject jsonObject = new JSONObject();
        jsonObject.put("msg", msg);
        jsonObject.put("stackTrace", stackTraceElements);
        return jsonObject;
    }
}
