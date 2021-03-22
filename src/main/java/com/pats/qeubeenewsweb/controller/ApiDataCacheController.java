package com.pats.qeubeenewsweb.controller;

import com.pats.qeubeenewsweb.entity.dto.apidto.ApiRefreshDTO;
import com.pats.qeubeenewsweb.entity.dto.apidto.CDHRequestDTO;
import com.pats.qeubeenewsweb.service.ApiDataCacheService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.util.List;
import java.util.Map;

/**
 * 查询缓存
 *
 * @author mqt
 * @version 1.0.1
 * @date 2021/02/01 17点03分
 */
@RestController
@RequestMapping("/apiData")
@Api(description = "查询缓存")
public class ApiDataCacheController {
    @Autowired
    private ApiDataCacheService service;

    @PostMapping("/cache")
    @ApiOperation(value = "查询缓存")
    public List<Map<String, Object>> request(@RequestBody CDHRequestDTO requestDTO) {
        return service.request(requestDTO);
    }

    @PutMapping("/refresh")
    @ApiOperation(value = "更新缓存")
    public void refresh(@RequestBody @Valid ApiRefreshDTO apiRefreshDTO) {
        if (!apiRefreshDTO.getRefresh()) {
            return;
        }
        service.refresh(apiRefreshDTO);
    }
}
