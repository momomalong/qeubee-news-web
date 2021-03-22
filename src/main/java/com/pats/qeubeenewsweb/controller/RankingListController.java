package com.pats.qeubeenewsweb.controller;

import com.pats.qeubeenewsweb.entity.dto.rankinglist.RankingListDTO;
import com.pats.qeubeenewsweb.entity.dto.rankinglist.RankingListNewsDTO;
import com.pats.qeubeenewsweb.entity.dto.rankinglist.RankingListNewsSetDTO;
import com.pats.qeubeenewsweb.service.RankingListWebService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * <p>Title: RankingListController</p>
 * <p>Description: 舆情排行控制器</p>
 *
 * @author :wenjie.pei
 * @version :1.0.0
 * @since :2020.08.17
 */
@Api(description = "舆情排行接口")
@RestController
@RequestMapping(value = "/rankingList")
@RequiredArgsConstructor
public class RankingListController {

    private final RankingListWebService rankingListService;

    /**
     * 根据时间维度获取舆情排行
     *
     * @return 舆情排行列表
     */
    @GetMapping(value = "/findByDimension")
    @ApiOperation(value = "根据时间维护获取舆情排行")
    public RankingListDTO findByDimension() {
        return rankingListService.findRankingList();
    }

    /**
     * 手动排行榜新增
     *
     * @param rankingList 新增手动舆情排行列表
     */
    @PostMapping(value = "/addManualBatch")
    @ApiOperation(value = "批量新增手动舆情排行榜, type类型默认为manual自动")
    public void addManualBatch(@RequestBody List<RankingListNewsDTO> rankingList) {
        rankingListService.addManualBatch(rankingList);
    }

    /**
     * 手动排行榜移除
     *
     * @param newsSet 移除舆情设置条件
     */
    @DeleteMapping(value = "/removeManual")
    @ApiOperation(value = "移除手动舆情排行数据, type类型默认为manual自动")
    public void removeManual(@RequestBody RankingListNewsSetDTO newsSet) {
        rankingListService.removeManual(newsSet);
    }
}