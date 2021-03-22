package com.pats.qeubeenewsweb.entity.dto.apidto;

import com.alibaba.fastjson.annotation.JSONField;
import com.pats.qeubeenewsweb.consts.ApiDtoConsts;
import lombok.Data;


/**
 * api请求返回机构实体
 *
 * @author :mqt
 * @version :1.0.0
 * @since :2020.10.20
 */
@Data
public class IssuerInfoDTO {
    /**
     * 机构code
     */
    @JSONField(name = ApiDtoConsts.INSTITUTION_CODE)
    private String issuerCode;
    /**
     * 唯一标识
     */
    @JSONField(name = ApiDtoConsts.ID)
    private String id;
    /**
     * 机构名称
     */
    @JSONField(name = ApiDtoConsts.ISSUER_NAME_KEY)
    private String issuerName;
    /**
     * 发行人性质
     */
    @JSONField(name = ApiDtoConsts.ISSUER_TYPE)
    private String issuerType;

    /**
     * 所属行业
     */
    @JSONField(name = ApiDtoConsts.SW_SECTOR)
    private String issuerSector;
    /**
     * 所属行业
     */
    @JSONField(name = ApiDtoConsts.SW_SUBSECTOR)
    private String issuerSubsector;

    /**
     * 所在省份
     */
    @JSONField(name = ApiDtoConsts.PROVINCE)
    private String issuerProvince;
}
