package com.pats.qeubeenewsweb.service;

import com.alibaba.fastjson.JSONObject;
import com.pats.qeubeenewsweb.enums.CHDApiNameAndDataSourceIdEnum;

import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

/**
 * @Author: qintai.ma
 * @Description: 请求CDH RestfulApi
 * @Date: create in 2020/9/12 13:26
 * @Version :1.0.0
 */
public interface CDHRestfulApiRequestService {


    /**
     * 查询API
     *
     * @param apiName    apiname
     * @param conditions 查询条件
     * @param pageSize   分页大小
     * @param columns    返回列
     * @return 结果集
     */
    List<Map<String, Object>> requestApi(CHDApiNameAndDataSourceIdEnum apiName, String conditions, Integer startPage, Integer pageSize, String... columns);

    default <T> List<T> requestApi(CHDApiNameAndDataSourceIdEnum apiName, String conditions, Integer startPage, Integer pageSize, Class<T> resultClass, String... columns) {
        return requestApi(apiName, conditions, startPage, pageSize, columns)
            .stream()
            .map(e -> new JSONObject(e).toJavaObject(resultClass))
            .collect(Collectors.toList());
    }

}