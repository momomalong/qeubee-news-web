package com.pats.qeubeenewsweb.controller;

import com.pats.qeubeenewsweb.entity.dto.BaseSubConditionDTO;
import com.pats.qeubeenewsweb.service.SubScribeService;
import com.sumscope.service.webbond.common.web.response.ResponseData;
import com.sumscope.service.webbond.common.web.response.ResponseUtil;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiParam;
import lombok.RequiredArgsConstructor;
import org.springframework.http.MediaType;
import org.springframework.util.Assert;
import org.springframework.web.bind.annotation.*;

/**
 * Created by jupeng.wang on 2020/4/15.
 */
@Api(tags = "订阅相关API")
@RestController
@RequestMapping(value = "/api/subscribe", produces = MediaType.APPLICATION_JSON_VALUE)
@RequiredArgsConstructor
public class SubscribeController {

    private final SubScribeService subScribeService;

    @ApiOperation(value = "新闻服务消息订阅", notes = "新闻服务消息订阅")
    @PostMapping(value = "/qeubeeNews")
    public ResponseData<Boolean> subscribeNews(@ApiParam(value = "订阅条件") @RequestBody BaseSubConditionDTO subCondition,
                                               @ApiParam(value = "userId") @RequestHeader(value = "userId",required = false) String userId) {
        Assert.notNull(subCondition, "订阅条件不可为空");
        return ResponseUtil.ok(subScribeService.subScribeNews(subCondition, userId));
    }
}
