package com.pats.qeubeenewsweb.controller;

import com.pats.qeubeenewsweb.config.SpringContext;
import com.pats.qeubeenewsweb.mq.consumer.QeubeeNewsReceiver;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiParam;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.Map;

/**
 * @author mqt
 * @version 1.0
 * @date 2020/11/30 13:26
 */
@Api(value = "标签类型接口")
@RestController
@RequestMapping(value = "/mq")
public class MQController {

    @PostMapping("/kafka")
    @ApiOperation(value = "kafka")
    public void consumer(@ApiParam(name = "data") @RequestBody Map<String, Object> data) {
        QeubeeNewsReceiver bean = SpringContext.getBean(QeubeeNewsReceiver.class);
        bean.processBulletin(data);
    }
}
