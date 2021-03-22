package com.pats.qeubeenewsweb.config;

import com.alibaba.fastjson.support.spring.FastJsonRedisSerializer;
import com.fasterxml.jackson.annotation.JsonTypeInfo;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.SerializationFeature;
import com.fasterxml.jackson.datatype.jsr310.JavaTimeModule;
import com.pats.qeubeenewsweb.consts.RedisCacheNamesConst;
import lombok.extern.slf4j.Slf4j;
import org.springframework.cache.annotation.EnableCaching;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.data.redis.cache.RedisCacheConfiguration;
import org.springframework.data.redis.cache.RedisCacheManager;
import org.springframework.data.redis.cache.RedisCacheWriter;
import org.springframework.data.redis.connection.RedisConnectionFactory;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.data.redis.core.StringRedisTemplate;
import org.springframework.data.redis.serializer.Jackson2JsonRedisSerializer;
import org.springframework.data.redis.serializer.RedisSerializationContext;
import org.springframework.data.redis.serializer.StringRedisSerializer;

import java.lang.reflect.Field;
import java.time.Duration;
import java.util.HashMap;
import java.util.Map;

/**
 * @author : qintai.ma
 * @version :1.0.0
 * @date : create in 2020/9/12 17:00
 */
@Slf4j
@EnableCaching
@Configuration
public class RedisConfig {

    /**
     * redis template 实例化配置
     */
    @Bean
    public RedisTemplate<Object, Object> redisTemplate(
        RedisConnectionFactory redisConnectionFactory) {
        RedisTemplate<Object, Object> template = new RedisTemplate<>();
        //使用fastjson序列化
        FastJsonRedisSerializer<?> fastJsonRedisSerializer = new FastJsonRedisSerializer<>(Object.class);
        // value值的序列化采用fastJsonRedisSerializer
        template.setValueSerializer(fastJsonRedisSerializer);
        template.setHashValueSerializer(fastJsonRedisSerializer);
        // key的序列化采用StringRedisSerializer
        template.setKeySerializer(new StringRedisSerializer());
        template.setHashKeySerializer(new StringRedisSerializer());
        template.setConnectionFactory(redisConnectionFactory);
        return template;
    }

    /**
     * string redis template 实例化配置
     *
     * @param redisConnectionFactory 1
     * @return 1
     */
    @Bean
    public StringRedisTemplate stringRedisTemplate(
        RedisConnectionFactory redisConnectionFactory) {
        StringRedisTemplate template = new StringRedisTemplate();
        template.setConnectionFactory(redisConnectionFactory);
        return template;
    }

    /**
     * 最新版，设置redis缓存过期时间
     */
    @Bean
    public RedisCacheManager cacheManager(RedisConnectionFactory redisConnectionFactory) {
        // 自定义redisCache
        /*return new CustomRedisCacheManager(
            RedisCacheWriter.nonLockingRedisCacheWriter(redisConnectionFactory),
            // 默认策略，未配置的 key 会使用这个,0:不配置
            this.getRedisCacheConfigurationWithTtl(null),
            // 指定 key 策略
            this.getRedisCacheConfigurationMap()
        );*/
        return new RedisCacheManager(
            RedisCacheWriter.nonLockingRedisCacheWriter(redisConnectionFactory),
            // 默认策略，未配置的 key 会使用这个,0:不配置
            this.getRedisCacheConfigurationWithTtl(null),
            // 指定 key 策略
            this.getRedisCacheConfigurationMap()
        );
    }

    /**
     * @return redis所有需要设置TLL的Map
     */
    private Map<String, RedisCacheConfiguration> getRedisCacheConfigurationMap() {
        Map<String, RedisCacheConfiguration> redisCacheConfigurationMap = new HashMap<>(16);
        Field[] fields = RedisCacheNamesConst.class.getFields();
        String key = "";
        for (Field field : fields) {
            try {
                key = field.get(RedisCacheNamesConst.class).toString();
                String ttl = key.substring(key.lastIndexOf(":") + 1);
                if ("0".equals(ttl)) {
                    continue;
                }
                redisCacheConfigurationMap.put(key, this.getRedisCacheConfigurationWithTtl(Long.parseLong(ttl)));
            } catch (IllegalAccessException e) {
                log.error(e.getMessage());
            } catch (NumberFormatException e) {
                log.warn("Please set the correct TTL for '{}', does not support operation expressions, 0 means no timeout", key);
            }
        }
        return redisCacheConfigurationMap;
    }

    /**
     * @param seconds 超时时间，单位：s
     * @return RedisCacheConfiguration
     */
    private RedisCacheConfiguration getRedisCacheConfigurationWithTtl(Long seconds) {
        Jackson2JsonRedisSerializer<Object> jackson2JsonRedisSerializer = new Jackson2JsonRedisSerializer<>(Object.class);
        ObjectMapper om = new ObjectMapper();
        om.activateDefaultTyping(om.getPolymorphicTypeValidator(), ObjectMapper.DefaultTyping.NON_FINAL, JsonTypeInfo.As.PROPERTY);
        // 解决jackson2无法反序列化LocalDateTime的问题
        om.disable(SerializationFeature.WRITE_DATES_AS_TIMESTAMPS);
        om.registerModule(new JavaTimeModule());
        jackson2JsonRedisSerializer.setObjectMapper(om);

        RedisCacheConfiguration redisCacheConfiguration = RedisCacheConfiguration.defaultCacheConfig();
        redisCacheConfiguration = redisCacheConfiguration.serializeValuesWith(RedisSerializationContext.SerializationPair.fromSerializer(jackson2JsonRedisSerializer));
        if (seconds != null && seconds != 0) {
            redisCacheConfiguration = redisCacheConfiguration.entryTtl(Duration.ofSeconds(seconds));
        }
        return redisCacheConfiguration;
    }
}

