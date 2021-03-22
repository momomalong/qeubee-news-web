package com.pats.qeubeenewsweb.enums;

import com.pats.qeubeenewsweb.entity.dto.apidto.Bond2DTO;
import com.pats.qeubeenewsweb.entity.dto.apidto.BondListInfoDTO;
import com.pats.qeubeenewsweb.entity.dto.apidto.CdcBondValuationDTO;
import com.pats.qeubeenewsweb.entity.dto.apidto.CsiBondValuationDTO;
import com.pats.qeubeenewsweb.entity.dto.apidto.InstitutionDTO;
import com.pats.qeubeenewsweb.entity.dto.apidto.IssuerInfoDTO;
import com.pats.qeubeenewsweb.entity.dto.apidto.PBondListInfoDTO;
import com.pats.qeubeenewsweb.entity.dto.apidto.PBondRatingDTO;
import com.pats.qeubeenewsweb.entity.dto.apidto.QbwebLiqudityStatisticIssuerScoreDTO;
import com.pats.qeubeenewsweb.entity.dto.apidto.RecentNthWorkdaysDTO;
import com.pats.qeubeenewsweb.entity.dto.apidto.SdbCdcBondValuationDTO;
import com.pats.qeubeenewsweb.entity.dto.apidto.SdnBondDealEodHistoryDTO;
import lombok.AllArgsConstructor;
import lombok.Getter;

/**
 * ApiName
 *
 * @author : qintai.ma
 * @version :1.0.0
 * @since : create in 2020/9/10 11:38
 */
@Getter
@AllArgsConstructor
public enum CHDApiNameAndDataSourceIdEnum {

    /**
     * 发行人列表
     */
    P_ISSUER_INFO("p_issuer_info", 100, IssuerInfoDTO.class, true),
    INSTITUTION("institution", 100, InstitutionDTO.class, true),

    /**
     * 条件：issuerCode
     * 发行人评分
     * 发行人评分等级
     * 按照issuerCode，取 statisticDate 字段前一个工作日的数据
     * warning：取昨天的可能会出现断数据的情况
     */
    QBWEB_LIQUDITY_STATISTIC_ISSUER_SCORE("qbweb_liqudity_statistic_issuer_score", 122, QbwebLiqudityStatisticIssuerScoreDTO.class, true),

    /**
     * bond_id 作为条件
     */
    BOND_LIST_INFO("bond_list_info", 111, BondListInfoDTO.class, true),
    P_BOND_LIST_INFO_CACHED("p_bond_list_info_cached", 100, PBondListInfoDTO.class, true),
    P_BOND_LIST_INFO("p_bond_list_info", 100, PBondListInfoDTO.class, false),
    /**
     * 工作日
     * qbpro_recent_Nth_workdays_CIB 银行间
     * qbpro_recent_Nth_workdays_SSE 上交所
     * qbpro_recent_Nth_workdays_SZE 深交所
     */
    QBPRO_RECENT_NTH_WORKDAYS_CIB("qbpro_recent_Nth_workdays_CIB", 100, RecentNthWorkdaysDTO.class, false),
    QBPRO_RECENT_NTH_WORKDAYS_SSE("qbpro_recent_Nth_workdays_SSE", 100, RecentNthWorkdaysDTO.class, false),
    QBPRO_RECENT_NTH_WORKDAYS_SZE("qbpro_recent_Nth_workdays_SZE", 100, RecentNthWorkdaysDTO.class, false),

    /**
     * 债项评级
     */
    P_BOND_RATING("p_bond_rating", 100, PBondRatingDTO.class, true),

    /**
     *
     */
    BOND2_CACHED_FOR_QBNEWS("bond2_cached_for_qbnews", 100, Bond2DTO.class, true),
    BOND2("bond2", 100, Bond2DTO.class, false),

    /**
     * 中债估值
     */
    CDC_BOND_VALUATION("cdc_bond_valuation", 100, CdcBondValuationDTO.class, true),

    /**
     * 中正估值
     */
    CSI_BOND_VALUATION("csi_bond_valuation", 100, CsiBondValuationDTO.class, true),

    /**
     * 评分评级(单卷流动性)
     */
    QBWEB_LIQUDITY_STATISTIC_BOND("qbweb_liqudity_statistic_bond", 122, SdbCdcBondValuationDTO.class, true),

    /**
     * 债券成交数据
     */
    SDN_BOND_DEAL_EOD_HISTORY("sdn_bond_deal_eod_history", 420, SdnBondDealEodHistoryDTO.class, true);


    private final String apiName;
    private final Integer dataSourceId;
    private final Class<?> clazz;
    private final Boolean cacheEnable;

    /**
     * 根据apiName和 dataSourceId 返回对应的clazz
     *
     * @param apiName      apiName
     * @param dataSourceId dataSourceId
     * @return clazz
     */
    public static Class<?> keyConversionValue(String apiName, Integer dataSourceId) {
        for (CHDApiNameAndDataSourceIdEnum e : values()) {
            if (e.getDataSourceId().equals(dataSourceId) && e.getApiName().equalsIgnoreCase(apiName)) {
                return e.getClazz();
            }
        }
        return null;
    }

}
