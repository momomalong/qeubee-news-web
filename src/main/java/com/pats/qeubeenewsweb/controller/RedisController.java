package com.pats.qeubeenewsweb.controller;

import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.util.CollectionUtils;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;
import java.util.List;
import java.util.Set;

/**
 * @author mqt
 * @version 1.0
 * @date 2021/1/15 13:19
 */
@RestController
@RequestMapping("/redis")
public class RedisController {


    @Resource
    private RedisTemplate<String, Object> redisTemplate;

    @DeleteMapping
    public Long delete(@RequestBody List<String> key) {
        return redisTemplate.delete(key);
    }

    @DeleteMapping("/pattern")
    public Long deleteByEx(String pattern) {
        Set<String> keys = redisTemplate.keys(pattern);
        if (CollectionUtils.isEmpty(keys)) {
            return 0L;
        }
        return redisTemplate.delete(keys);
    }
}
