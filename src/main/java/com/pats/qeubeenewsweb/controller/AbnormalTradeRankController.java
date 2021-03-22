package com.pats.qeubeenewsweb.controller;

import java.util.List;

import com.pats.qeubeenewsweb.entity.AbnormalTrade;
import com.pats.qeubeenewsweb.service.AbnormalTradeRankService;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import io.swagger.annotations.Api;
import lombok.RequiredArgsConstructor;

/**
 * <p>Title: AbnormalTradeRankController</p>
 * <p>Description: 异常成交控制器类</p>
 */
@Api(description = "异常成交控制器类")
@RestController
@RequestMapping("/abnormalTradeRank")
@RequiredArgsConstructor
public class AbnormalTradeRankController {

    private final AbnormalTradeRankService abnormalTradeRankService;

    /**
     * 获取异常成交排行
     * 
     * @return  异常成交排行
     */
    @GetMapping("/find")
    public List<List<AbnormalTrade>> find() {
        return abnormalTradeRankService.find();
    }
    
}
