package com.pats.qeubeenewsweb.service.impl;

import com.alibaba.fastjson.JSONObject;
import com.pats.qeubeenewsweb.entity.dto.apidto.CDHRequestDTO;
import com.pats.qeubeenewsweb.entity.dto.apidto.CDHResponsDTO;
import com.pats.qeubeenewsweb.enums.CHDApiNameAndDataSourceIdEnum;
import com.pats.qeubeenewsweb.service.CDHRestfulApiRequestService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/**
 * @author : qintai.ma
 * @version :1.0.0
 * @since : create in 2020/9/12 13:30
 */
@Service
@Slf4j
public class CDHRestfulApiRequestServiceImpl implements CDHRestfulApiRequestService {

    @Autowired
    private RestTemplate restTemplate;

    @Value("${restfulapi.cdh}")
    private String url;


    @Override
    public List<Map<String, Object>> requestApi(CHDApiNameAndDataSourceIdEnum apiName, String conditions, Integer startPage, Integer pageSize, String... columns) {
        log.info("API request name:{}, API request dataSourceId:{}", apiName.getApiName(), apiName.getDataSourceId());
        // 构建请求参数
        CDHRequestDTO requestParam = new CDHRequestDTO(apiName, conditions, startPage, pageSize, columns);
        try {
            CDHResponsDTO body = restTemplate.postForEntity(url, requestParam, CDHResponsDTO.class).getBody();
            if (body == null || body.getResultTable() == null) {
                return new ArrayList<>();
            }
            return body.getResultTable();
        } catch (Exception e) {
            log.error("msg:{},StackTrace:{}", e.getMessage(), JSONObject.toJSONString(e.getStackTrace()));
        }
        return new ArrayList<>();
    }
}