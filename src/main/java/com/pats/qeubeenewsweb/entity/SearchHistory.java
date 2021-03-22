package com.pats.qeubeenewsweb.entity;

import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import com.baomidou.mybatisplus.extension.activerecord.Model;
import com.pats.qeubeenewsweb.consts.DataBaseSourceConst;

import lombok.Data;
import lombok.EqualsAndHashCode;

/**
 * <p>Title: SearchHistory</p>
 * <p>Description: 搜索历史entity类</p>
 * 
 * @author :wenjie.pei
 * @since  :2020.08.19
 * @version :1.0.0
 */
@Data
@EqualsAndHashCode(callSuper = true)
@TableName(value = DataBaseSourceConst.TBL_QB_NEWS_SEARCH_HISTORY)
public class SearchHistory extends Model<SearchHistory> {

    private static final long serialVersionUID = 7229196509926450541L;

    /**
     * id
     */
    @TableId
    private Integer id;

    /**
     * 搜索关键词
     */
    private String keyword;

    /**
     * 搜索用户
     */
    private String userId;

    /**
     * 新闻类型
     */
    private String scope;

    /**
     * 搜索时间
     */
    private String createTime;

    /**
     * 更新时间
     */
    private String updateTime;

}