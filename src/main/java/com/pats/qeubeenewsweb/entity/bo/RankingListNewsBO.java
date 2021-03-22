package com.pats.qeubeenewsweb.entity.bo;

import java.io.Serializable;
import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * <p>Title: RankingListNewsBO</p>
 * <p>Description: 阅读排行榜舆情类</p>
 * 
 * @author :wenjie.pei
 * @since  :2020.09.02
 * @version :1.0.0
 */
@AllArgsConstructor
@Data
@NoArgsConstructor
public class RankingListNewsBO implements Serializable {

    private static final long serialVersionUID = -5512690388771682910L;

    /**
     * 阅读排行id
     */
    private Integer id;

    /**
     * 舆情id
     */
    private Integer publicOpinionId;

    /**
     * 舆情标题
     */
    private String title;

    /**
     * 排行
     */
    private Integer sort;

    /**
     * 阅读量
     */
    private Long readingAmount;

    /**
     * 时间维度
     */
    private String timeDimension;

    /**
     * 阅读排行数据类型(statistics: 自动排行, manual: 手动排行)
     */
    private String type;

    /**
     * id列表
     */
    private List<Integer> ids;
    
}