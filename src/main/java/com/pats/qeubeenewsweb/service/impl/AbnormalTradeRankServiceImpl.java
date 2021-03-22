package com.pats.qeubeenewsweb.service.impl;

import com.pats.qeubeenewsweb.consts.RedisCacheNamesConst;
import com.pats.qeubeenewsweb.entity.AbnormalTrade;
import com.pats.qeubeenewsweb.service.AbnormalTradeRankService;
import org.springframework.data.redis.core.BoundValueOperations;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * <p>
 * Title: AbnormalTradeRankServiceImpl
 * </p>
 * <p>
 * Description: 异常成交业务实现类
 * </p>
 *
 * @author :wenjie.pei
 * @version :1.0.0
 * @since :2020.09.17
 */
@Service
public class AbnormalTradeRankServiceImpl implements AbnormalTradeRankService {

    @Resource
    private RedisTemplate<String, Object> redisTemplate;

    /**
     * 异常成交记录保存
     *
     * @param abnormalTrade 异常成交记录排行
     */
    @Override
    public void save(List<List<AbnormalTrade>> abnormalTrade) {
        BoundValueOperations<String, Object> valueOperation = redisTemplate.boundValueOps(RedisCacheNamesConst.ABNORMAL_TRADE_RANK);
        valueOperation.set(abnormalTrade);
    }

    /**
     * 获取异常成交记录
     *
     * @return 异常成交记录排行
     */
    @SuppressWarnings("unchecked")
    @Override
    public List<List<AbnormalTrade>> find() {
        return (List<List<AbnormalTrade>>) redisTemplate.opsForValue().get(RedisCacheNamesConst.ABNORMAL_TRADE_RANK);
    }

}
