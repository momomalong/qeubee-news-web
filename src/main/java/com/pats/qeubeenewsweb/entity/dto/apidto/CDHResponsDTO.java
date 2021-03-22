package com.pats.qeubeenewsweb.entity.dto.apidto;

import lombok.Data;

import java.util.List;
import java.util.Map;

/**
 * CHD返回实体
 *
 * @author :qintai.ma
 * @version :1.0.0
 * @since :2020.9.10
 */
@Data
public class CDHResponsDTO {

    private Integer code;
    private String message;
    private Integer startPage;
    private Integer pageSize;
    private List<Map<String, Object>> resultTable;
}
