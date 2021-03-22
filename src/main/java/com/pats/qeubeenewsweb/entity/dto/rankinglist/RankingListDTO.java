package com.pats.qeubeenewsweb.entity.dto.rankinglist;

import java.io.Serializable;
import java.util.List;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

/**
 * <p>Title: RankingListDTO</p>
 * <p>Description: 阅读排行榜DTO类</p>
 * 
 * @author :wenjie.pei
 * @since  :2020.09.05
 * @version :1.0.0
 */
@ApiModel(value = "阅读排行榜DTO类")
@Data
public class RankingListDTO implements Serializable {

    private static final long serialVersionUID = 7468529668909984957L;

    /**
     * 日阅读排行
     */
    @ApiModelProperty(value = "日排行榜")
    private List<RankingListNewsDTO> dayRankingList;

    /**
     * 周阅读排行
     */
    @ApiModelProperty(value = "周排行榜")
    private List<RankingListNewsDTO> weekRankingList;
    
    /**
     * 月阅读排行
     */
    @ApiModelProperty(value = "月排行榜")
    private List<RankingListNewsDTO> monthRankingList;
    
}
