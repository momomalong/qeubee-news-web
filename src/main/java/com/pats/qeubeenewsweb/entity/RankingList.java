package com.pats.qeubeenewsweb.entity;

import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import com.baomidou.mybatisplus.extension.activerecord.Model;
import com.pats.qeubeenewsweb.consts.DataBaseSourceConst;

import lombok.Data;
import lombok.EqualsAndHashCode;

/**
 * <p>Title: RankingList</p>
 * <p>Description: 阅读排行榜entity类</p>
 * 
 * @author :wenjie.pei
 * @since  :2020.09.04
 * @version :1.0.0
 */
@Data
@EqualsAndHashCode(callSuper = true)
@TableName(value = DataBaseSourceConst.TBL_QB_NEWS_PUBLIC_OPINIO_RANKING_LIST)
public class RankingList extends Model<RankingList> {

    private static final long serialVersionUID = 5466793387621861368L;

    /**
     * id
     */
    @TableId
    private Integer id;

    /**
     * 关联舆情id
     */
    private Integer publicOpinionId;

    /**
     * 标题
     */
    private String title;

    /**
     * 阅读量
     */
    private Long readingAmount;

    /**
     * 排序
     */
    private Integer sort;

    /**
     * 时间维度
     */
    private String timeDimension;

    /**
     * 类型
     */
    private String type;

}
