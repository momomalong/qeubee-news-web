package com.pats.qeubeenewsweb.entity;

import com.alibaba.fastjson.annotation.JSONField;
import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import com.baomidou.mybatisplus.extension.activerecord.Model;
import com.pats.qeubeenewsweb.consts.DataBaseSourceConst;
import com.pats.qeubeenewsweb.consts.EntitySourceConst;
import lombok.Data;
import lombok.EqualsAndHashCode;
import org.apache.ibatis.type.Alias;

import java.util.List;


/**
 * <p>Title: PublicOpinion</p>
 * <p>Description: 舆情entity类</p>
 *
 * @author :wenjie.pei
 * @version :1.0.0
 * @since :2020.08.20
 */
@Alias(value = EntitySourceConst.ENTITY_PUBLIC_OPINION)
@Data
@EqualsAndHashCode(callSuper = true)
@TableName(value = DataBaseSourceConst.TBL_QB_NEWS_PUBLIC_OPINION)
public class PublicOpinion extends Model<PublicOpinion> {

    private static final long serialVersionUID = 8738000088983369398L;

    /**
     * 舆情id
     */
    @TableId(type = IdType.AUTO)
    private Integer id;

    /**
     * 新闻id
     */
    @TableField(value = DataBaseSourceConst.COL_PUBLIC_OPINION_NEWS_ID)
    private String newsId;

    /**
     * 标题
     */
    @TableField(value = DataBaseSourceConst.COL_PUBLIC_OPINION_TITLE)
    private String title;

    /**
     * 摘要
     */
    @TableField(value = DataBaseSourceConst.COL_PUBLIC_OPINION_SUMMARY)
    private String summary;

    /**
     * 文章
     */
    @TableField(value = DataBaseSourceConst.COL_PUBLIC_OPINION_CONTENT)
    private String content;

    /**
     * 风险类型
     */
    @TableField(value = DataBaseSourceConst.COL_PUBLIC_OPINION_RISK)
    private String risk;

    /**
     * 来源
     */
    @TableField(value = DataBaseSourceConst.COL_PUBLIC_OPINION_SOURCE)
    private String source;

    /**
     * 涉及主体
     */
    @TableField(value = DataBaseSourceConst.COL_PUBLIC_OPINION_MAIN_BODY)
    private String mainBody;

    /**
     * 相关债券
     */
    @TableField(value = DataBaseSourceConst.COL_PUBLIC_OPINION_REFER_BOND)
    private String referBond;

    /**
     * 债券代码
     */
    @TableField(value = DataBaseSourceConst.COL_PUBLIC_OPINION_BOND_CODE)
    private String bondCode;

    /**
     * 债券类型
     */
    @TableField(value = DataBaseSourceConst.COL_PUBLIC_OPINION_BOND_TYPE)
    private String bondType;

    /**
     * 债券id
     */
    @TableField(value = DataBaseSourceConst.COL_PUBLIC_OPINION_BOND_ID)
    private String bondId;

    /**
     * 提及企业
     */
    @TableField(value = DataBaseSourceConst.COL_PUBLIC_OPINION_MENTION_COM)
    private String mentionCom;

    /**
     * 标签列表
     */
    @TableField(exist = false)
    private List<PublicOpinionLabel> labels;

    /**
     * 作者
     */
    @TableField(value = DataBaseSourceConst.COL_PUBLIC_OPINION_AUTHOR)
    private String author;

    /**
     * 新闻原地址
     */
    @TableField(value = DataBaseSourceConst.COL_PUBLIC_OPINION_URL)
    private String url;

    /**
     * 附件地址
     */
    @TableField(value = DataBaseSourceConst.COL_PUBLIC_OPINION_ATTACHMENT)
    private String attachment;

    /**
     * 合规性
     */
    @TableField(value = DataBaseSourceConst.COL_PUBLIC_OPINION_COMPLIANCE)
    private Integer compliance;

    /**
     * 新建时间
     */
    @TableField(value = DataBaseSourceConst.COL_PUBLIC_OPINION_CREATE_TIME)
    private String createTime;

    /**
     * 修改时间
     */
    @TableField(value = DataBaseSourceConst.COL_PUBLIC_OPINION_UPDATE_TIME)
    private String updateTime;
    /**
     * 整体评分
     */
    @TableField(value = DataBaseSourceConst.COL_PUBLIC_OPINION_ARTICLE_SCORE)
    private Integer articleScore;
    /**
     * 发行机构code
     */
    @TableField(value = DataBaseSourceConst.COL_PUBLIC_OPINION_ISSUER_CODE)
    private String issuerCode;
    /**
     * 发行机构名称
     */
    @TableField(value = DataBaseSourceConst.COL_PUBLIC_OPINION_ISSUER_NAME)
    private String issuerName;

    /**
     * 债券键
     */
    @JSONField(name = DataBaseSourceConst.COL_PUBLIC_OPINION_BOND_KEY)
    private String bondKey;

    /**
     * 提及企业简称
     */
    @TableField(value = DataBaseSourceConst.COL_PUBLIC_OPINION_MENTION_COM_SHORT_NAME)
    private String mentionComShortName;

    /**
     * 发行人简称
     */
    @TableField(value = DataBaseSourceConst.COL_PUBLIC_OPINION_SHORT_NAME)
    private String shortName;
}