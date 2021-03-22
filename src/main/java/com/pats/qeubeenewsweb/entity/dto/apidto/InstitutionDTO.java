package com.pats.qeubeenewsweb.entity.dto.apidto;

import com.alibaba.fastjson.annotation.JSONField;
import com.pats.qeubeenewsweb.consts.ApiDtoConsts;
import lombok.Data;

/**
 * @author mqt
 * @version 1.0
 * @date 2021/1/8 13:16
 */
@Data
public class InstitutionDTO {

    /**
     * 机构code
     */
    @JSONField(name = ApiDtoConsts.INSTITUTION_CODE)
    private String institutionCode;
    /**
     * 唯一标识
     */
    @JSONField(name = ApiDtoConsts.ID)
    private String id;
    /**
     * 机构全称
     */
    @JSONField(name = ApiDtoConsts.FULL_NAME_C)
    private String fullName;
    /**
     * 机构简称
     */
    @JSONField(name = ApiDtoConsts.SHORT_NAME_C)
    private String shortName;

    /**
     * 所属行业
     */
    @JSONField(name = ApiDtoConsts.SW_SECTOR1)
    private String issuerSector;
    /**
     * 所属行业
     */
    @JSONField(name = ApiDtoConsts.SW_SUBSECTOR1)
    private String issuerSubsector;

    /**
     * 所在省份
     */
    @JSONField(name = ApiDtoConsts.PROVINCE1)
    private String issuerProvince;
}
