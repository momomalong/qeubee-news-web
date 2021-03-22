package com.pats.qeubeenewsweb.service.impl;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.pats.qeubeenewsweb.consts.ApiDtoConsts;
import com.pats.qeubeenewsweb.consts.DataBaseSourceConst;
import com.pats.qeubeenewsweb.consts.RedisCacheNamesConst;
import com.pats.qeubeenewsweb.entity.Label;
import com.pats.qeubeenewsweb.entity.QbNewsLabelBondIssuerInfo;
import com.pats.qeubeenewsweb.entity.dto.apidto.Bond2DTO;
import com.pats.qeubeenewsweb.entity.dto.apidto.BondListInfoDTO;
import com.pats.qeubeenewsweb.entity.dto.apidto.CDHRequestDTO;
import com.pats.qeubeenewsweb.entity.dto.apidto.InstitutionDTO;
import com.pats.qeubeenewsweb.entity.dto.apidto.PBondListInfoDTO;
import com.pats.qeubeenewsweb.entity.dto.apidto.RemainingDateDTO;
import com.pats.qeubeenewsweb.entity.dto.apidto.SdbCdcBondValuationDTO;
import com.pats.qeubeenewsweb.entity.dto.apidto.SdnBondDealEodHistoryDTO;
import com.pats.qeubeenewsweb.entity.dto.label.BondTradeDTO;
import com.pats.qeubeenewsweb.entity.dto.label.LabelBondsDTO;
import com.pats.qeubeenewsweb.enums.BondTradeMethodEnum;
import com.pats.qeubeenewsweb.enums.CHDApiNameAndDataSourceIdEnum;
import com.pats.qeubeenewsweb.enums.LabelTypeEnum;
import com.pats.qeubeenewsweb.mapper.LabelMapper;
import com.pats.qeubeenewsweb.mapper.QbNewsLabelBondIssuerInfoMapper;
import com.pats.qeubeenewsweb.service.ApiDataCacheService;
import com.pats.qeubeenewsweb.service.CDHRestfulApiRequestService;
import com.pats.qeubeenewsweb.service.IQbNewsLabelBondIssuerInfoService;
import com.pats.qeubeenewsweb.service.transfer.PublicOpinionServiceTransfer;
import com.pats.qeubeenewsweb.utils.PrintJsonUtils;
import com.pats.qeubeenewsweb.utils.StringUtilsX;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.data.redis.core.ValueOperations;
import org.springframework.stereotype.Service;
import org.springframework.util.CollectionUtils;
import org.springframework.util.StringUtils;
import org.springframework.web.client.RestTemplate;

import javax.annotation.Resource;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Optional;
import java.util.Set;
import java.util.StringJoiner;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import java.util.stream.Collectors;

import static com.pats.qeubeenewsweb.consts.ApiDtoConsts.BOND_KEY;
import static com.pats.qeubeenewsweb.consts.ApiDtoConsts.BOND_KEY1;
import static com.pats.qeubeenewsweb.consts.ApiDtoConsts.BOND_SCORE;
import static com.pats.qeubeenewsweb.consts.ApiDtoConsts.BOND_SCORE_LEVEL;

/**
 * <p>
 * 债券标签发行人信息表 服务实现类
 * </p>
 *
 * @author mqt
 * @since 2021-01-13
 */
@Service
@Slf4j
public class QbNewsLabelBondIssuerInfoServiceImpl extends ServiceImpl<QbNewsLabelBondIssuerInfoMapper, QbNewsLabelBondIssuerInfo> implements IQbNewsLabelBondIssuerInfoService {

    @Resource
    private Executor runExecutor;

    @Autowired
    private ApiDataCacheService apiDataCacheService;

    @Autowired
    private LabelMapper labelMapper;

    @Autowired
    private CDHRestfulApiRequestService cdhRestfulApiRequestService;

    @Autowired
    private PublicOpinionServiceTransfer publicOpinionTransfer;

    @Resource
    private RedisTemplate<String, Object> redisTemplate;

    @Autowired
    private RestTemplate restTemplate;

    @Value("${restfulapi.bondRemainingDate}")
    private String url;

    @Override
    public void insertByLabels(List<Label> lbs) {
        // 拿到债券标签
        StringJoiner bondNames = new StringJoiner("','", "'", "'");
        List<Integer> ids = new ArrayList<>();
        List<Label> bondLabel = lbs.parallelStream().distinct().filter(e -> {
            if (e.getTypeId().equals(LabelTypeEnum.BOND.getTypeId())) {
                ids.add(e.getId());
                bondNames.add(e.getName());
                return true;
            }
            return false;
        }).collect(Collectors.toList());
        if (CollectionUtils.isEmpty(bondLabel)) {
            return;
        }
        QueryWrapper<QbNewsLabelBondIssuerInfo> queryWrapper = new QueryWrapper<>();
        queryWrapper.in(DataBaseSourceConst.COL_PUBLIC_OPINION_LABEL_LABEL_ID, ids);
        queryWrapper.select(DataBaseSourceConst.COL_PUBLIC_OPINION_LABEL_LABEL_ID);
        List<Integer> idsX = super.listObjs(queryWrapper, e -> Integer.valueOf(e + ""));
        bondLabel = bondLabel.parallelStream().filter(e -> !idsX.contains(e.getId())).collect(Collectors.toList());
        if (CollectionUtils.isEmpty(bondLabel)) {
            return;
        }
        Map<String, BondListInfoDTO> infosMap = apiDataCacheService.getBondInfoByShortNames(bondNames.toString());
        List<QbNewsLabelBondIssuerInfo> bondInfos = new ArrayList<>();
        // 通过bond key查询bond2的信息，拿到issuerCode
        String bondKeys = infosMap.values().parallelStream().map(BondListInfoDTO::getBondKey).collect(Collectors.joining("','", "'", "'"));
        String conditions = String.format("%s in (%s)", BOND_KEY, bondKeys);
        Map<String, String> bond2Map = apiDataCacheService.request(new CDHRequestDTO(CHDApiNameAndDataSourceIdEnum.BOND2, conditions, infosMap.size()), Bond2DTO.class)
                .parallelStream().collect(Collectors.toMap(Bond2DTO::getBondKey, Bond2DTO::getIssuerCode));
        // 通过issuerCode查询发行人详细信息
        String issuerCodes = bond2Map.values().parallelStream().distinct().collect(Collectors.joining("','", "'", ""));
        conditions = String.format("%s in (%s)", ApiDtoConsts.INSTITUTION_CODE1, issuerCodes);
        List<InstitutionDTO> request = apiDataCacheService.request(new CDHRequestDTO(CHDApiNameAndDataSourceIdEnum.INSTITUTION, conditions, bond2Map.size()), InstitutionDTO.class);
        Map<String, InstitutionDTO> issuerInfoMap = request.parallelStream().collect(Collectors.toMap(InstitutionDTO::getInstitutionCode, e -> e, (k1, k2) -> k1));
        // 循环转换
        for (Label label : bondLabel) {
            String name = label.getName();
            BondListInfoDTO dto = infosMap.get(name);
            if (dto == null) {
                continue;
            }
            String bondKey = dto.getBondKey();
            QbNewsLabelBondIssuerInfo info = QbNewsLabelBondIssuerInfo.builder()
                    .labelId(label.getId())
                    .bondKey(bondKey)
                    .listedMarket(dto.getListedMarket())
                    .build();
            if (bond2Map.containsKey(bondKey) && issuerInfoMap.containsKey(bond2Map.get(bondKey))) {
                String issuerCode = bond2Map.get(bondKey);
                InstitutionDTO issuerInfo = issuerInfoMap.get(issuerCode);
                info.setIssuerCode(issuerCode);
                info.setIssuerName(issuerInfo.getShortName());
                info.setIssuerProvince(issuerInfo.getIssuerProvince());
                info.setIssuerSector(issuerInfo.getIssuerSector());
                info.setIssuerSubsector(issuerInfo.getIssuerSubsector());
            }
            bondInfos.add(info);
        }
        if (!CollectionUtils.isEmpty(bondInfos)) {
            super.saveBatch(bondInfos);
        }
    }

    @Override
    public List<String> findAllProvinces() {
        QueryWrapper<QbNewsLabelBondIssuerInfo> wrapper = new QueryWrapper<>();
        wrapper.select(DataBaseSourceConst.COL_BOND_ISSUER_INFO_ISSUER_PROVINCE);
        wrapper.groupBy(DataBaseSourceConst.COL_BOND_ISSUER_INFO_ISSUER_PROVINCE);
        return super.listObjs(wrapper).stream().map(Object::toString).filter(e -> !StringUtils.isEmpty(e)).collect(Collectors.toList());
    }

    @Override
    public List<Map<String, Object>> findAllSectors() {
        QueryWrapper<QbNewsLabelBondIssuerInfo> wrapper = new QueryWrapper<>();
        String[] columns = {DataBaseSourceConst.COL_BOND_ISSUER_INFO_ISSUER_SECTOR, DataBaseSourceConst.COL_BOND_ISSUER_INFO_ISSUER_SUBSECTOR};
        wrapper.select(columns);
        wrapper.groupBy(columns);
        List<Map<String, Object>> maps = super.listMaps(wrapper);
        Map<String, List<Map<String, Object>>> collect = maps.stream()
                .filter(e -> !StringUtils.isEmpty(StringUtilsX.objectToString(e.get(DataBaseSourceConst.COL_BOND_ISSUER_INFO_ISSUER_SECTOR))))
                .collect(Collectors.groupingBy(e -> StringUtilsX.objectToString(e.get(DataBaseSourceConst.COL_BOND_ISSUER_INFO_ISSUER_SECTOR))));
        List<Map<String, Object>> result = new ArrayList<>();
        for (Map.Entry<String, List<Map<String, Object>>> entry : collect.entrySet()) {
            String key = entry.getKey();
            Set<String> value = entry.getValue().stream()
                    .map(e -> e.get(DataBaseSourceConst.COL_BOND_ISSUER_INFO_ISSUER_SUBSECTOR) + "")
                    .filter(e -> !StringUtils.isEmpty(e))
                    .collect(Collectors.toSet());
            Map<String, Object> map = new HashMap<>(4);
            map.put("issuerSector", key);
            map.put("issuerSubsector", value);
            result.add(map);
        }
        return result;
    }

    @Override
    public List<String> mainSectors() {
        QueryWrapper<QbNewsLabelBondIssuerInfo> wrapper = new QueryWrapper<>();
        String issuerSector = DataBaseSourceConst.COL_BOND_ISSUER_INFO_ISSUER_SECTOR;
        wrapper.ne(issuerSector, "");
        wrapper.select(issuerSector);
        wrapper.groupBy(issuerSector);
        return super.listObjs(wrapper, Object::toString);
    }

    @Override
    public void processDetailBonds() {
        List<LabelBondsDTO> labelBonds = labelMapper.findBondsInfo();
        if (CollectionUtils.isEmpty(labelBonds)) {
            return;
        }
        int subNum = 50;
        int size = labelBonds.size();
        for (int i = 0; i < size; i += subNum) {
            int toIndex = i + subNum;
            if (toIndex >= size) {
                toIndex = size - 1;
            }
            List<LabelBondsDTO> labelBonds1 = new ArrayList<>(labelBonds.subList(i, toIndex));
            runExecutor.execute(() -> this.processDetailBond(labelBonds1));
        }

    }

    @Override
    public void processDetailBond(List<LabelBondsDTO> labelBonds) {
        if (CollectionUtils.isEmpty(labelBonds)) {
            return;
        }
        // 先设置所有默认值
        labelBonds.forEach(e -> {
            e.setRemainingDate("");
            e.setBondCode("");
            e.setBondScore("");
            e.setBondScoreLevel("");
            /*e.setValYield("");
            e.setYieldToMaturity("");*/
        });

        // 今天，同于判断成交时间
        LocalDate now = LocalDate.now();
        // bondKry 和 listMarket
        List<String> list = new ArrayList<>();
        String bondKeys = labelBonds.stream().map(e -> {
            String bondKey = e.getBondKey();
            String listedMarket = e.getListedMarket();
            list.add(bondKey + listedMarket);
            return bondKey;
        }).collect(Collectors.joining("','", " in ('", "')"));

        log.info("getRemainingDate:{}" , JSON.toJSONString(list));
        //获取剩余日期
        Map<String, List<RemainingDateDTO>> remainingDate = this.getRemainingDate(list);
        //api查询条件
        CDHRequestDTO cdhRequestDTO = new CDHRequestDTO(CHDApiNameAndDataSourceIdEnum.P_BOND_LIST_INFO, BOND_KEY + bondKeys, 5000);
        // 债券详情，以bond_key分组，将其作为key
        Map<String, List<PBondListInfoDTO>> bondKey = apiDataCacheService.request(cdhRequestDTO, PBondListInfoDTO.class).parallelStream().collect(Collectors.groupingBy(e -> e.getBondKey() + ""));
        // 查询当前债券相关交易数据
        CDHRequestDTO requestDTO = new CDHRequestDTO(CHDApiNameAndDataSourceIdEnum.SDN_BOND_DEAL_EOD_HISTORY, BOND_KEY1 + bondKeys, 5000);
        Map<String, List<SdnBondDealEodHistoryDTO>> apiResult = apiDataCacheService.request(requestDTO, SdnBondDealEodHistoryDTO.class).parallelStream().collect(Collectors.groupingBy(e -> e.getBondKey() + ""));
        //获取单卷流动性
        cdhRequestDTO.setApi(CHDApiNameAndDataSourceIdEnum.QBWEB_LIQUDITY_STATISTIC_BOND, "bondKey" + bondKeys, 5000);
        //以bondKey为条件，然后以bondKey进行数据分组bondLiqudityMap
        Map<String, List<SdbCdcBondValuationDTO>> collect = apiDataCacheService.request(cdhRequestDTO, SdbCdcBondValuationDTO.class).parallelStream().collect(Collectors.groupingBy(e -> e.getBondKey() + ""));
        //获取中债估值
        String conditions = BOND_KEY + bondKeys;
        cdhRequestDTO.setApi(CHDApiNameAndDataSourceIdEnum.CDC_BOND_VALUATION, conditions, 5000);
        //以bondKey为条件查询接口，然后以bondKey进行数据分组bondLiqudityMap
        //Map<String, List<CdcBondValuationDTO>> cdcBond = apiDataCacheService.request(cdhRequestDTO, CdcBondValuationDTO.class).parallelStream().collect(Collectors.groupingBy(e -> e.getBondKey() + ""));
        //获取中证估值
        cdhRequestDTO.setApi(CHDApiNameAndDataSourceIdEnum.CSI_BOND_VALUATION, conditions, 5000);
        //以bondKey为条件查询接口，然后以bondKey进行数据分组bondLiqudityMap
        //Map<String, List<CsiBondValuationDTO>> csiBond = apiDataCacheService.request(cdhRequestDTO, CsiBondValuationDTO.class).parallelStream().collect(Collectors.groupingBy(e -> e.getBondKey() + ""));
        //获取发行人整体流动性,将债卷的ISSUER_CODE值作为key存入集合
        Map<String, Map<String, Object>> issuerCodeMap = new HashMap<>(16);
        labelBonds.forEach(item -> issuerCodeMap.put(item.getIssuerCode(), new HashMap<>(16)));
        Map<String, Map<String, Object>> mapMap = publicOpinionTransfer.processFluidity(issuerCodeMap);
        // 设置值
        for (LabelBondsDTO bondDetail : labelBonds) {
            String bk = bondDetail.getBondKey();
            String listedMarket = bondDetail.getListedMarket();
            // 处理剩余日期
            if (remainingDate.containsKey(bk)) {
                //负数显示已到期
                String o = StringUtilsX.objectToString(remainingDate.get(bk).get(0).getRestMaturity());
                bondDetail.setRemainingDate(o.startsWith("-") ? "已到期" : o);
            }
            // 设置bond_code
            List<PBondListInfoDTO> mapList = bondKey.get(bk);
            if (!CollectionUtils.isEmpty(mapList)) {
                boolean flag = true;
                // 按照市场优先级取值
                for (PBondListInfoDTO dto : mapList) {
                    if (listedMarket.equals(dto.getListedMarket())) {
                        bondDetail.setBondCode(dto.getBondId());
                        flag = false;
                        break;
                    }
                }
                // 如果没取到，取第一个
                if (flag) {
                    bondDetail.setBondCode(StringUtilsX.objectToString(mapList.get(0).getBondId()));
                }
            }

            // 处理3M成交数据
            List<BondTradeDTO> tradeData = new ArrayList<>();
            if (!CollectionUtils.isEmpty(apiResult)) {
                List<SdnBondDealEodHistoryDTO> data = apiResult.get(bk);
                if (!CollectionUtils.isEmpty(data)) {
                    // 取同一市场时间最新的一笔交易
                    Map<String, SdnBondDealEodHistoryDTO> map = data.stream()
                            .filter(t -> t.getListedMarket().equals(listedMarket) && !t.getTradeMethod().equals(BondTradeMethodEnum.CHG.getKey()))
                            .collect(Collectors.toMap(SdnBondDealEodHistoryDTO::getTradeMethod, t -> t, (t1, t2) -> {
                                if (0 < (t1.getMarketDataTime().compareTo(t2.getMarketDataTime()))) {
                                    return t1;
                                }
                                return t2;
                            }));
                    // 转换结果
                    map.values().forEach(t -> {
                        BondTradeDTO target = new BondTradeDTO();
                        LocalDateTime marketDataTime = t.getMarketDataTime();
                        LocalDate date = marketDataTime.toLocalDate();
                        target.setMarketDataTime(date.toString());
                        // 如果是当天则展示 HH:mm:ss  否则展示 yyyy-MM-dd
                        if (date.compareTo(now) == 0) {
                            target.setMarketDataTime(marketDataTime.toLocalTime().toString());
                        }
                        target.setTradeMethod(BondTradeMethodEnum.conversionValueByKey(t.getTradeMethod()));
                        target.setTradePrice(t.getTradePrice());
                        tradeData.add(target);
                    });
                }
            }
            // 设置3M成交数据
            bondDetail.setTradeData(tradeData);
            //单卷流动性
            List<SdbCdcBondValuationDTO> bondFluidity = collect.get(bk);
            //空表示前一天没获取到当前标签数据，调用接口查询最新一天数据
            if (CollectionUtils.isEmpty(bondFluidity)) {
                List<SdbCdcBondValuationDTO> listMap = cdhRestfulApiRequestService.requestApi(CHDApiNameAndDataSourceIdEnum.QBWEB_LIQUDITY_STATISTIC_BOND,
                        "bondKey = '" + bk + "' and listedMarket = '" + listedMarket + "' order by statisticDate desc",
                        1, 1, SdbCdcBondValuationDTO.class, BOND_SCORE, BOND_SCORE_LEVEL, "listedMarket");
                bondFluidity = Optional.ofNullable(listMap).orElse(new ArrayList<>());
            }
            //设置默认单券流动性和流动性评级
            for (SdbCdcBondValuationDTO map : bondFluidity) {
                if (map.getListedMarket().equals(listedMarket)) {
                    bondDetail.setBondScore(StringUtilsX.objectToDouble(map.getBondScore()));
                    bondDetail.setBondScoreLevel(StringUtilsX.objectToString(map.getBondScoreLevel()));
                    break;
                }
            }
            //中债估值
            /*List<CdcBondValuationDTO> cdcMapList = cdcBond.get(bk);
            if (CollectionUtils.isEmpty(cdcMapList)) {
                List<CdcBondValuationDTO> listMap = cdhRestfulApiRequestService.requestApi(CHDApiNameAndDataSourceIdEnum.CDC_BOND_VALUATION,
                    "" + BOND_KEY + " = '" + bk + "' and " + LISTED_MARKET + " = '" + listedMarket + "' order by Valuate_Date desc",
                    1, 1, CdcBondValuationDTO.class, VAL_YIELD, LISTED_MARKET);
                cdcMapList = Optional.ofNullable(listMap).orElse(new ArrayList<>());
            }
            for (CdcBondValuationDTO map : cdcMapList) {
                if (map.getListedMarket().equals(listedMarket)) {
                    bondDetail.setValYield(StringUtilsX.objectToString(map.getValYield()));
                    break;
                }
            }*/

            //中证估值
            /*List<CsiBondValuationDTO> csiMapList = csiBond.get(bk);
            if (CollectionUtils.isEmpty(csiMapList)) {
                List<CsiBondValuationDTO> listMap = cdhRestfulApiRequestService.requestApi(CHDApiNameAndDataSourceIdEnum.CSI_BOND_VALUATION,
                    "" + BOND_KEY + " = '" + bk + "' order by Date desc", 1, 1, CsiBondValuationDTO.class, YIELD_TO_MATURITY);
                csiMapList = Optional.ofNullable(listMap).orElse(new ArrayList<>());
            }
            if (!CollectionUtils.isEmpty(csiMapList)) {
                bondDetail.setYieldToMaturity(StringUtilsX.objectToString(csiMapList.get(0).getYieldToMaturity()));
            }*/

            //设置发行人流动性
            Map<String, Object> map = mapMap.get(bondDetail.getIssuerCode());
            bondDetail.setScore(StringUtilsX.objectToDouble(map.get(ApiDtoConsts.SCORE)));
            bondDetail.setScoreLevel(StringUtilsX.objectToString(map.get(ApiDtoConsts.SCORELEVEL)));
        }
        Map<String, LabelBondsDTO> map = labelBonds.parallelStream()
                .collect(Collectors.toMap(e -> RedisCacheNamesConst.PUBLIC_OPINION_FIND_BONDS + e.getId() + "", e -> e));
        // 全部存储到Redis
        ValueOperations<String, Object> ops = redisTemplate.opsForValue();
        ops.multiSet(map);
        map.keySet().forEach(e -> redisTemplate.expire(e, 1, TimeUnit.DAYS));
    }

    /**
     * 获取剩余日期
     *
     * @param list 调用api传入的参数集
     * @return 获取剩余日期
     */
    private Map<String, List<RemainingDateDTO>> getRemainingDate(List<String> list) {
        // 构建请求参数
        RemainingDateDTO[] result = {};
        try {
            JSONObject jsonObject = new JSONObject();
            jsonObject.put("bondKeyListedMarketList", list);
            result = Optional.ofNullable(restTemplate.postForEntity(url, jsonObject, RemainingDateDTO[].class).getBody()).orElse(result);
        } catch (Exception e) {
            log.error("error:{}", PrintJsonUtils.ofJson(e.getMessage(), e.getStackTrace()));
        }
        return Arrays.stream(result).collect(Collectors.groupingBy(e -> e.getBondKey() + ""));
    }

}
