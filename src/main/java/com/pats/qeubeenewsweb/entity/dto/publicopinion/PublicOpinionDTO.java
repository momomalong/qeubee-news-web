package com.pats.qeubeenewsweb.entity.dto.publicopinion;

import com.pats.qeubeenews.common.dto.SysBaseDTO;
import com.pats.qeubeenewsweb.consts.DataBaseSourceConst;
import com.pats.qeubeenewsweb.entity.dto.label.LabelDTO;
import com.pats.qeubeenewsweb.enums.BondClassificationEnum;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
import lombok.EqualsAndHashCode;

import java.util.List;
import java.util.Map;

/**
 * <p>Title: PublicOpinionDTO</p>
 * <p>Description: 舆情新闻返回类型</p>
 *
 * @author :wenjie.pei
 * @version :1.0.0
 * @since :2020.08.17
 */
@ApiModel(value = "舆情新闻对象")
@Data
@EqualsAndHashCode(callSuper = true)
public class PublicOpinionDTO extends SysBaseDTO {

    private static final long serialVersionUID = 5074771359797297130L;

    /**
     * 舆情标题
     */
    @ApiModelProperty(value = "舆情标题")
    private String title;

    /**
     * 舆情涉及债券类型
     */
    @ApiModelProperty(value = "舆情涉及债券code")
    private String bondCode;

    /**
     * 舆情涉及债券类型
     */
    @ApiModelProperty(value = "舆情涉及债券类型")
    private String bondType;
    /**
     * 债券类型翻译好的集合
     */
    @ApiModelProperty(value = "债券类型翻译好的集合")
    private List<BondClassificationEnum.BondClassification> bondTypeList;

    /**
     * 舆情涉及债券类型
     */
    @ApiModelProperty(value = "舆情涉及债券id")
    private String bondId;

    /**
     * 风险类型
     */
    @ApiModelProperty(value = "风险等级")
    private String risk;

    /**
     * 新闻来源
     */
    @ApiModelProperty(value = "新闻来源")
    private String source;

    /**
     * 涉及主体
     */
    @ApiModelProperty(value = "涉及主体")
    private String mainBody;
    /**
     * 涉及主体
     */
    @ApiModelProperty(value = "涉及主体")
    private String mainBodyDetail;

    /**
     * 涉及债券
     */
    @ApiModelProperty(value = "涉及证券")
    private String referBond;

    /**
     * 提及企业
     */
    @ApiModelProperty(value = "提及企业")
    private String mentionCom;
    /**
     * 提及企业
     */
    @ApiModelProperty(value = "提及企业")
    private List<Map<String, Object>> mentionComDetail;

    /**
     * 标签列表
     */
    @ApiModelProperty(value = "标签列表")
    private List<LabelDTO> labels;

    /**
     * 作者
     */
    @ApiModelProperty(value = "作者")
    private String author;

    /**
     * 合规性
     */
    @ApiModelProperty(value = "合规性", example = "1")
    private Integer compliance;


    /**
     * bond_key
     */
    @ApiModelProperty(value = "bond_key")
    private String referBondKey;

    /**
     * listedmarket
     */
    @ApiModelProperty(value = "listedmarket")
    private String referBondlistedmarket;
    /**
     * 整体评分
     */
    @ApiModelProperty(value = DataBaseSourceConst.COL_PUBLIC_OPINION_ARTICLE_SCORE)
    private Integer articleScore;
    /**
     * 发行机构code
     */
    @ApiModelProperty(value = DataBaseSourceConst.COL_PUBLIC_OPINION_ISSUER_CODE)
    private String issuerCode;
    /**
     * 发行机构名称
     */
    @ApiModelProperty(value = DataBaseSourceConst.COL_PUBLIC_OPINION_ISSUER_NAME)
    private String issuerName;

    /**
     * 提及企业简称
     */
    @ApiModelProperty(value = DataBaseSourceConst.COL_PUBLIC_OPINION_MENTION_COM_SHORT_NAME)
    private String mentionComShortName;

    /**
     * 发行人简称
     */
    @ApiModelProperty(value = DataBaseSourceConst.COL_PUBLIC_OPINION_SHORT_NAME)
    private String shortName;
}