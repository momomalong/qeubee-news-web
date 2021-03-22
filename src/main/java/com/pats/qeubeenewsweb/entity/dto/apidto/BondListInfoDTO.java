package com.pats.qeubeenewsweb.entity.dto.apidto;

import com.alibaba.fastjson.annotation.JSONField;
import lombok.Data;

/**
 * api请求返回债券实体
 *
 * @author :mqt
 * @version :1.0.0
 * @since :2020.10.20
 */
@Data
public class BondListInfoDTO {
    @JSONField(name = "BOND_ID")
    private String bondId;
    @JSONField(name = "Bond_Key")
    private String bondKey;
    /**
     * 债券市场
     */
    @JSONField(name = "Listed_Market")
    private String listedMarket;

    @JSONField(name = "Short_Name")
    private String shortName;

}
