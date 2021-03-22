package com.pats.qeubeenewsweb.entity.bo;

import com.pats.qeubeenewsweb.entity.PublicOpinion;
import com.pats.qeubeenewsweb.entity.PublicOpinionLabel;
import lombok.Data;

import java.io.Serializable;
import java.util.List;

/**
 * <p>Title: PublicOpinionDetailsBO</p>
 * <p>Description: 舆情详情业务BO类</p>
 *
 * @author :wenjie.pei
 * @version :1.0.0
 * @since :2020.08.24
 */
@Data
public class PublicOpinionDetailsBO implements Serializable {

    private static final long serialVersionUID = 3211973313562071736L;

    /**
     * 舆情id
     */
    private Integer id;

    /**
     * 舆情标题
     */
    private String title;

    /**
     * 摘要
     */
    private String summary;

    /**
     * 文章
     */
    private String content;

    /**
     * 舆情涉及债券类型
     */
    private String bondType;

    /**
     * 风险类型
     */
    private String risk;

    /**
     * 新闻来源
     */
    private String source;

    /**
     * 涉及主体
     */
    private String mainBody;

    /**
     * 涉及债券
     */
    private String bondCode;

    /**
     * 涉及债券
     */
    private String referBond;

    /**
     * 提及企业
     */
    private String mentionCom;

    /**
     * 标签列表
     */
    private List<PublicOpinionLabel> labels;

    /**
     * 作者
     */
    private String author;

    /**
     * 新闻原地址
     */
    private String url;

    /**
     * 附件地址
     */
    private String attachment;

    /**
     * 合规性
     */
    private Integer compliance;

    /**
     * 新建时间
     */
    private String createTime;

    /**
     * 修改时间
     */
    private String updateTime;

    /**
     * 相关舆情列表
     */
    private List<PublicOpinion> refPublicOpinion;
    /**
     * 整体评分
     */
    private Integer articleScore;
    /**
     * 发行机构code
     */
    private String issuerCode;
    /**
     * 发行机构名称
     */
    private String issuerName;
    /**
     * 发行机构所在省份
     */
    private String issuerProvince;
    /**
     * 发行机构所属行业
     */
    private String issuerSector;

    /**
     * 提及企业简称
     */
    private String mentionComShortName;

    /**
     * 发行人简称
     */
    private String shortName;
}