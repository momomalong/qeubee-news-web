package com.pats.qeubeenewsweb.service;

import com.alibaba.fastjson.JSONObject;
import com.pats.qeubeenewsweb.entity.dto.apidto.ApiRefreshDTO;
import com.pats.qeubeenewsweb.entity.dto.apidto.BondListInfoDTO;
import com.pats.qeubeenewsweb.entity.dto.apidto.CDHRequestDTO;
import com.pats.qeubeenewsweb.enums.CHDApiNameAndDataSourceIdEnum;

import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

/**
 * Api接口
 *
 * @author :mqt
 * @version :1.0.0
 * @since :2020.10.20
 */
public interface ApiDataCacheService {
    /**
     * 查询API
     *
     * @param requestDTO 请求参数
     * @return 结果集
     */
    default List<Map<String, Object>> request(CDHRequestDTO requestDTO) {
        List<Object> request = this.request(requestDTO, Object.class);
        return request.parallelStream()
            .map(e -> JSONObject.parseObject(JSONObject.toJSONString(e)).getInnerMap())
            .collect(Collectors.toList());
    }

    <E> List<E> request(CDHRequestDTO requestDTO, Class<E> clazz);


    /**
     * 通过ID 查询发行人 (以前接口，为了保证原有接口功能不变，在这里新加)
     *
     * @param values 值
     * @param field  条件字段
     * @return 详细信息
     */
    Map<String, Map<String, Object>> getPublisherByField(String values, String field);

    /**
     * 按照ID 查询 (以前接口，为了保证原有接口功能不变，在这里新加)
     *
     * @param values 值
     * @return 结果集
     */
    default Map<String, Map<String, Object>> getPublisherByIds(String values) {
        return getPublisherByField(values, "id in");
    }

    default List<Map<String, Object>> requestApi(CHDApiNameAndDataSourceIdEnum apiName, String conditions, Integer pageSize, String... columns) {
        // 构建请求参数
        CDHRequestDTO requestParam = new CDHRequestDTO(apiName, conditions, 1, pageSize, columns);
        return request(requestParam);
    }

    /**
     * 更新缓存
     *
     * @param map 可根据apiName dataSourceId 指定更新，判断不成功则更新全部
     */
    void refresh( ApiRefreshDTO map);

    /**
     * 根据债券简称获取债券详细信息（batch）
     * p_bond_list_info
     *
     * @param bondName 债券名称
     * @return 结果集 K：name V：详细信息
     */
    Map<String, BondListInfoDTO> getBondInfoByShortNames(String bondName);
}
