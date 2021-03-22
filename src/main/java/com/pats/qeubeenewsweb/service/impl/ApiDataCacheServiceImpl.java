package com.pats.qeubeenewsweb.service.impl;

import com.pats.qeubeenews.common.exception.BaseKnownException;
import com.pats.qeubeenewsweb.config.ApiDataCache;
import com.pats.qeubeenewsweb.consts.ApiDtoConsts;
import com.pats.qeubeenewsweb.consts.ListedMarketConst;
import com.pats.qeubeenewsweb.entity.dto.apidto.ApiRefreshDTO;
import com.pats.qeubeenewsweb.entity.dto.apidto.BondListInfoDTO;
import com.pats.qeubeenewsweb.entity.dto.apidto.CDHRequestDTO;
import com.pats.qeubeenewsweb.enums.CHDApiNameAndDataSourceIdEnum;
import com.pats.qeubeenewsweb.service.ApiDataCacheService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.CollectionUtils;
import org.springframework.util.StringUtils;

import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

/**
 * Api接口
 * 注意：只能做简单的  = 和 in 查询
 *
 * @author :mqt
 * @version :1.0.0
 * @since :2020.10.20
 */
@Service
@Slf4j
public class ApiDataCacheServiceImpl implements ApiDataCacheService {

    @Autowired
    private ApiDataCache apiDataCache;

    @Override
    public <E> List<E> request(CDHRequestDTO requestDTO, Class<E> clazz) {
        Integer startPage = requestDTO.getStartPage();
        Integer pageSize = requestDTO.getPageSize();
        String conditions = requestDTO.getConditions();

        // 判断表是否存在，不存在直接返回
        Class<?> apiDtoClass = CHDApiNameAndDataSourceIdEnum.keyConversionValue(requestDTO.getApiName(), requestDTO.getDataSourceId());
        if (apiDtoClass == null) {
            log.info("name不存在，直接返回，name：{}，DataSourceId{}", requestDTO.getApiName(), requestDTO.getDataSourceId());
            throw new BaseKnownException(10013, "无有效版本API");
        }
        // 拿到对应的cache集合
        List<?> list = apiDataCache.getCacheList(requestDTO.getApiName());
        if (CollectionUtils.isEmpty(list)) {
            return new ArrayList<>();
        }
        // 判断返回类型是否正确
        if (!clazz.isInstance(list.get(0))) {
            throw new BaseKnownException(10013, "请传入正确的返回值泛型，或者请检查API与返回值泛型是否相对应");
        }
        // 判断是否附加条件查询
        if (!StringUtils.isEmpty(conditions)) {
            // 查询条件的MAP（因为以前的条件是作为sql拼接查询的）
            List<String> whereKey = new ArrayList<>();
            Map<String, List<String>> inWhere = new HashMap<>(16);
            // 实体类对应API的字段
            Map<String, Field> fieldMap = ApiDataCache.getClassJsonFieldNames(apiDtoClass);
            Map<String, String> equalWhere = new HashMap<>(16);
            Arrays.asList(conditions.replace("'", "").replace("\"", "").split(" and "))
                    .forEach(e -> {
                        String key;
                        if (e.contains("=")) {
                            String[] split = e.split("=", 2);
                            key = this.validField(fieldMap, split[0].trim());
                            equalWhere.put(key, split[1].trim());
                        } else {
                            String[] ins = e.split(" in ", 2);
                            if (ins.length == 1) {
                                ins = e.split(" IN ", 2);
                            }
                            String s = ins[1].trim().replace("(", "").replace(")", "");
                            key = this.validField(fieldMap, ins[0].trim());
                            inWhere.put(key, Arrays.asList(s.split(",")));
                        }
                        // 判断是否存在非法字段
                        if (key == null) {
                            throw new BaseKnownException(10032, "请求中包含非法查询条件:" + conditions);
                        }
                        // key到这里是能使用的
                        whereKey.add(key);
                    });
            // 开始过滤需要的数据
            list = list.parallelStream().filter(e -> {
                try {
                    for (String key : whereKey) {
                        String eqValue = equalWhere.get(key);
                        List<String> inValue = inWhere.get(key);
                        // 经过前面的过滤，key 100% 能取到Field
                        Field field = fieldMap.get(key);
                        String s = field.get(e) + "";
                        // 数据值与条件值不相等（过滤掉）eqValue 和 inValue肯定有一个有值
                        boolean b = eqValue != null && !eqValue.equals(s) || !CollectionUtils.isEmpty(inValue) && !inValue.contains(s);
                        // P_BOND_LIST_INFO的bond_id拼接有 .sh 之类的，需要拆分比较,但是不能改变原有的等值查询，故再比较一次
                        if (requestDTO.getApiName().equals(CHDApiNameAndDataSourceIdEnum.P_BOND_LIST_INFO.getApiName())
                                && "bond_id".equalsIgnoreCase(key) && s.contains(".") && b) {

                            s = s.split("\\.")[0];
                            b = eqValue != null && !eqValue.equals(s) || !CollectionUtils.isEmpty(inValue) && !inValue.contains(s);
                        }
                        if (b) {
                            return false;
                        }
                    }
                } catch (Exception ignored) {
                }
                return true;
            }).collect(Collectors.toList());
        }
        // 计算分页
        int size = list.size();
        int startNum = Math.max((startPage - 1) * pageSize, 0);
        if (startNum >= size) {
            return new ArrayList<>();
        }
        int endNum = Math.max(Math.min(startPage * pageSize, size), 0);
        // 前面已经判断过类型，所以此处可以强转
        return (List<E>) new ArrayList<>(list.subList(startNum, endNum));
    }


    /**
     * 判断是否存在非法字段
     *
     * @param fieldMap 合法字段
     * @param key      校验字段
     * @return 不合法返回null，会不区分大小写并改变为合法字段
     */
    private String validField(Map<String, Field> fieldMap, String key) {
        if (fieldMap.get(key) == null) {
            // 当字段非法时，不区分大小写在验证一次
            for (String key1 : fieldMap.keySet()) {
                if (key1.equalsIgnoreCase(key)) {
                    return key1;
                }
            }
            return null;
        }
        return key;

    }

    /**
     * (以前接口，为了保证原有接口功能不变，在这里新加)
     *
     * @param values 值
     * @param field  条件字段
     * @return 结果集
     */
    @Override
    public Map<String, Map<String, Object>> getPublisherByField(String values, String field) {
        if (values == null || values.trim().isEmpty() || org.apache.commons.lang.StringUtils.isEmpty(field)) {
            return new HashMap<>(0);
        }
        String[] split = values.split(",");
        String conditions = Arrays.stream(split).map(String::trim)
                .collect(Collectors.joining("','", field + " ('", "')"));
        // 构建请求参数
        CDHRequestDTO requestParam = new CDHRequestDTO(CHDApiNameAndDataSourceIdEnum.P_ISSUER_INFO, conditions, split.length);
        // 发起post请求批量查询发行人详细信息
        return this.request(requestParam).stream().collect(Collectors.toMap(e -> e.get("ID") + "", e -> e));
    }

    @Override
    public void refresh(ApiRefreshDTO map) {
        String apiName = map.getApiName();
        String dataSourceId = map.getDataSourceId();
        if (StringUtils.isEmpty(apiName) || StringUtils.isEmpty(dataSourceId)) {
            // 更新全部缓存
            apiDataCache.apiDataCacheRefresh(null);
            return;
        }
        for (CHDApiNameAndDataSourceIdEnum value : CHDApiNameAndDataSourceIdEnum.values()) {
            if (value.getCacheEnable()
                    && value.getApiName().equalsIgnoreCase(apiName + "")
                    && value.getDataSourceId().equals(Integer.parseInt(dataSourceId + ""))) {
                apiDataCache.apiDataCacheRefresh(value);
                break;
            }
        }

    }

    @Override
    public Map<String, BondListInfoDTO> getBondInfoByShortNames(String bondName) {
        Map<String, BondListInfoDTO> result = new HashMap<>(16);
        if (StringUtils.isEmpty(bondName)) {
            return result;
        }
        //调用api,返回对应债券名称的债券明细集
        CDHRequestDTO cdhRequestDTO = new CDHRequestDTO(CHDApiNameAndDataSourceIdEnum.BOND_LIST_INFO,
                ApiDtoConsts.SHORT_NAME + " in (" + bondName + ")",
                5000);
        List<BondListInfoDTO> bondInformation = this.request(cdhRequestDTO, BondListInfoDTO.class);
        //接口返回结果为空，则直接返回
        if (CollectionUtils.isEmpty(bondInformation)) {
            return result;
        }
        //以Short_Name分组
        Map<String, List<BondListInfoDTO>> map = bondInformation.parallelStream().collect(Collectors.groupingBy(BondListInfoDTO::getShortName));
        //遍历排序,返回最高优先级债券
        for (Map.Entry<String, List<BondListInfoDTO>> entry : map.entrySet()) {
            String shortName = entry.getKey();
            //获取entry集合的value集合
            List<BondListInfoDTO> value = entry.getValue();
            if (CollectionUtils.isEmpty(value)) {
                continue;
            }
            //将其以Listed_Market分组
            Map<String, List<BondListInfoDTO>> mapMap = value.stream().collect(Collectors.groupingBy(BondListInfoDTO::getListedMarket));
            BondListInfoDTO infoDTO;
            if (mapMap.containsKey(ListedMarketConst.CIB)) {
                infoDTO = mapMap.get(ListedMarketConst.CIB).get(0);
            } else if (mapMap.containsKey(ListedMarketConst.SSE)) {
                infoDTO = mapMap.get(ListedMarketConst.SSE).get(0);
            } else {
                infoDTO = mapMap.getOrDefault(ListedMarketConst.SZSE, value).get(0);
            }
            result.put(shortName, infoDTO);
        }
        return result;
    }
}