package com.pats.qeubeenewsweb.service.transfer;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.pats.qeubeenewsweb.consts.RedisCacheNamesConst;
import com.pats.qeubeenewsweb.entity.bo.QbNewsSpBulletinBO;
import com.pats.qeubeenews.common.utils.BeansMapper;
import com.pats.qeubeenewsweb.consts.ApiDtoConsts;
import com.pats.qeubeenewsweb.consts.ListedMarketConst;
import com.pats.qeubeenewsweb.entity.dto.bulletin.BulletinDetailSpDTO;
import com.pats.qeubeenewsweb.entity.dto.bulletin.BulletinPageQueryDTO;
import com.pats.qeubeenewsweb.entity.dto.bulletin.BulletinSetDTO;
import com.pats.qeubeenewsweb.entity.QbNewsSpBulletinBond;
import com.pats.qeubeenewsweb.enums.CHDApiNameAndDataSourceIdEnum;
import com.pats.qeubeenewsweb.otherservice.IQbNewsSpBulletinService;
import com.pats.qeubeenewsweb.service.ApiDataCacheService;
import com.pats.qeubeenewsweb.utils.ApiResultDealUtils;
import com.pats.qeubeenewsweb.utils.StringUtilsX;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.stereotype.Component;
import org.springframework.util.CollectionUtils;

import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.stream.Collectors;

/**
 * @Author: qintai.ma
 * @Description:
 * @Date: create in 2020/8/25 11:26
 * @Version :1.0.0
 */
@Component
public class BulletinSpServiceTransfer {

    @Autowired
    private IQbNewsSpBulletinService bulletinService;

    @Autowired
    private ApiDataCacheService apiRequestService;

    /**
     * 检索公告详情 by id
     *
     * @param id 公告id
     * @return 公告详情
     */
    @Cacheable(value = RedisCacheNamesConst.BULLETIN_FIND_BY_ID, key = "#id")
    public BulletinDetailSpDTO findById(Integer id) {
        QbNewsSpBulletinBO result = ApiResultDealUtils.dealResult(bulletinService.findById(id));
        return BeansMapper.convert(result, BulletinDetailSpDTO.class);
    }

    /**
     * 检索分页公告列表 by condition
     *
     * @param pageQuery 公告检索条件
     * @return 当前也公告列表
     */
    public IPage<BulletinDetailSpDTO> findByPage(BulletinPageQueryDTO pageQuery) {
        final String listedMarketKey = ApiDtoConsts.LISTED_MARKET;
        Page<QbNewsSpBulletinBO> byPage = ApiResultDealUtils.dealResult(bulletinService.findByPage(pageQuery));
        IPage<BulletinDetailSpDTO> convert = byPage.convert(e -> BeansMapper.convert(e, BulletinDetailSpDTO.class));
        // 所有bond_key
        Set<String> bondKeys = convert.getRecords().stream().flatMap(e -> e.getBonds().stream()).map(QbNewsSpBulletinBond::getBondKey).collect(Collectors.toSet());
        // 查询Listed_Market
        String conditions = bondKeys.stream().collect(Collectors.joining("','", ApiDtoConsts.BOND_KEY + " in ('", "')"));
        // 因为以bond_key查询会有多个，所以以Bond_Key分组
        Map<String, List<Map<String, Object>>> map = apiRequestService.requestApi(CHDApiNameAndDataSourceIdEnum.BOND_LIST_INFO, conditions, bondKeys.size(), ApiDtoConsts.BOND_KEY, listedMarketKey)
            .stream().collect(Collectors.groupingBy(e -> e.get(ApiDtoConsts.BOND_KEY) + ""));
        // 设置Listed_Market
        convert.getRecords().forEach(e -> e.getBonds().forEach(t -> {
            List<Map<String, Object>> objectMap = map.get(t.getBondKey());
            if (!CollectionUtils.isEmpty(objectMap)) {
                if (objectMap.size() > 1) {
                    // 按照优先级取一个市场
                    Map<String, Map<String, Object>> mapMap = objectMap.stream().collect(Collectors.toMap(a -> a.get(listedMarketKey) + "", a -> a));
                    if (!CollectionUtils.isEmpty(mapMap.get(ListedMarketConst.CIB))) {
                        t.setListedMarket(ListedMarketConst.CIB);
                    } else if (!CollectionUtils.isEmpty(mapMap.get(ListedMarketConst.SSE))) {
                        t.setListedMarket(ListedMarketConst.SSE);
                    } else if (!CollectionUtils.isEmpty(mapMap.get(ListedMarketConst.SZSE))) {
                        t.setListedMarket(ListedMarketConst.SZSE);
                    }
                } else {
                    Object listedMarket = objectMap.get(0).get(listedMarketKey);
                    t.setListedMarket(StringUtilsX.objectToString(listedMarket));
                }
            }
        }));
        return convert;
    }


    /**
     * 公告合规设置
     *
     * @param bulletinOpinionSetDTO 合规设置参数
     * @return 公告id
     */
    public Boolean modifyCompliance(BulletinSetDTO bulletinOpinionSetDTO) {
        return ApiResultDealUtils.dealResult(bulletinService.modifyCompliance(bulletinOpinionSetDTO));
    }

}
