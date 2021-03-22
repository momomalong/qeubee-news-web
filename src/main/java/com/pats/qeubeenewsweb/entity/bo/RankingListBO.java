package com.pats.qeubeenewsweb.entity.bo;

import java.io.Serializable;
import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * <p>Title: RankingListBO</p>
 * <p>Description: 阅读排行业务实体类</p>
 * 
 * @author :wenjie.pei
 * @since  :2020.09.03
 * @version :1.0.0
 * 
 */
@AllArgsConstructor
@Data
@NoArgsConstructor
public class RankingListBO implements Serializable {

    private static final long serialVersionUID = -7256844756319273008L;

    /**
     * 日阅读排行
     */
    private List<RankingListNewsBO> dayRankingList;

    /**
     * 周阅读排行
     */
    private List<RankingListNewsBO> weekRankingList;
    
    /**
     * 月阅读排行
     */
    private List<RankingListNewsBO> monthRankingList;
    
}