package com.pats.qeubeenewsweb.utils;

import com.pats.qeubeenews.common.dto.ResultDTO;
import com.pats.qeubeenewsweb.exception.ApiCallFailException;
import lombok.extern.slf4j.Slf4j;

/**
 * <p>Title: ApiResultDealUtils</p>
 * <p>Description: api调用结果处理工具类</p>
 *
 * @author :wenjie.pei
 * @version :1.0.0
 * @since :2020.08.21
 */
@Slf4j
public class ApiResultDealUtils {

    /**
     * api调用结果处理
     *
     * @param <T>    实际返回数据类型范型
     * @param result api返回结果统一数据结构
     * @return 实际返回数据
     */
    public static <T> T dealResult(ResultDTO<T> result) {
        // api调用成功, 返回结果
        if (result.isSuccess()) {
            return result.getData();
        }
        // 抛出异常
        log.error("find history is failed, message is {}", result.getMessage());
        throw new ApiCallFailException(result.getCode(), result.getMessage());
    }
}