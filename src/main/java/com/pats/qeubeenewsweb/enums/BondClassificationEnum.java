package com.pats.qeubeenewsweb.enums;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.Getter;
import lombok.NoArgsConstructor;
import org.apache.commons.lang.StringUtils;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

/**
 * 债券分类
 *
 * @author : qintai.ma
 * @since : create in 2020/9/15 19:25
 * @version :1.0.0
 */
@Getter
@AllArgsConstructor
public enum BondClassificationEnum {


    /**
     * 债券分类
     */
    BGB("BGB", "记账式国债"),
    SCB("SCB", "央行票据"),
    LLB("LLB", "地方政府自发自偿"),
    TLB("TLB", "财政部代发代偿"),
    PBB("PBB", "政策性银行债券"),
    CCP("CCP", "中央企业短期融资券"),
    CSP("CSP", "中央企业超短期融资券"),
    LCP("LCP", "地方企业短期融资券"),
    LSP("LSP", "地方企业超短期融资券"),
    CMN("CMN", "中央企业中期票据"),
    LMN("LMN", "地方企业中期票据"),
    CEB("CEB_ENT", "中央企业债"),
    LEB("LEB_ENT", "地方企业债"),
    CEB2("CEB_COP", "公司债"),
    LEB2("LEB_COP", "公司债"),
    PPN("PPN_COP", "非公开私募债"),
    PPN1("PPN", "PPN"),
    AMP("AMP", "专项资产管理计划"),
    LBS("LBS", "信贷资产证券化信托"),
    CBS("CBS", "个人汽车抵押贷款证券化信托"),
    MBS("MBS", "个人住房抵押贷款证券化信托"),
    PSB("PSB", "政策性银行次级债券"),
    CBB("CBB", "商业银行债券"),
    CSB("CSB", "商业银行次级债券"),
    CXB("CXB", "商业银行混合资本债券"),
    NCB("NCB", "非银行金融机构债"),
    SFB("SFB", "特种金融债"),
    SEB("SEB", "证券公司债"),
    SSB("SSB", "证券公司短期融资券"),
    SES("SES", "证券公司次级债"),
    HJB("HJB", "汇金债"),
    CCB("CCB", "集合企业债"),
    COB("COB", "集合票据"),
    SCV("SCV", "可分离可转债"),
    CVB("CVB", "不可分离可转债"),
    SHD("SHD", "股份制银行同业存单"),
    RRD("RRD", "三农机构同业存单"),
    CCD("CCD", "城商行同业存单"),
    FRD("FRD", "外资银行同业存单"),
    MCD("MCD", "五大行同业存单"),
    OTD("OTD", "其他金融机构同业存单"),
    RTD("RTD", "村镇银行同业存单"),
    SPD("SPD", "政策性银行同业存单"),
    CRM("CRM", "信用风险缓释凭证"),
    CLN("CLN", "信用联结票据"),
    RAB("RAB", "铁道债"),
    TET("TET", "二级资本工具"),
    INT("INT", "国际机构债"),
    PDB("PDB", "熊猫债");

    private final String key;
    private final String value;


    /**
     * 翻译枚举，可以多个，逗号隔开
     * 示例："Bond_Subtype_Ent_Cor,Bond_Subtype"
     * Ent_Cor可能为null
     *
     * @param status key
     * @return 结果集
     */
    public static List<BondClassification> translation(String status) {
        List<BondClassification> result = new ArrayList<>();
        if (StringUtils.isEmpty(status)) {
            return result;
        }
        String[] param = status.split(",");
        Map<String, String> map = Arrays.stream(values()).collect(Collectors.toMap(e -> e.key, e -> e.value));
        for (String s : param) {
            String value = map.get(s);
            if (StringUtils.isNotBlank(value)){
                result.add(new BondClassification(s, value));
            }
        }
        return result;
    }

    @Data
    @AllArgsConstructor
    @NoArgsConstructor
    public static class BondClassification implements Serializable {
        private static final long serialVersionUID = 1L;
        private String key;
        private String value;
    }
}
