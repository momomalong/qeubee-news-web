package com.pats.qeubeenewsweb.controller;

import com.pats.qeubeenewsweb.entity.Base;
import com.pats.qeubeenewsweb.service.BaseClassService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.validation.Valid;

/**
 * 公共控制器
 *
 * @author Hzy
 * @version 1.0.0
 * @since 2021/2/3
 */
@RestController
@RequestMapping(value = "/base")
public class BaseController {


    @Autowired
    private BaseClassService baseClassService;

    /**
     * Spring bean method 执行
     *
     * @param base 综合功能类
     * @return 结果
     */
    @PostMapping(value = "/execute")
    public Object execute(@Valid @RequestBody Base base) {
        return baseClassService.execute(base);
    }
}
