package com.pats.qeubeenewsweb.controller;

import com.pats.qeubeenewsweb.entity.dto.PageDTO;
import com.pats.qeubeenewsweb.entity.dto.bulletin.BulletinDetailSpDTO;
import com.pats.qeubeenewsweb.entity.dto.bulletin.BulletinPageQueryDTO;
import com.pats.qeubeenewsweb.entity.dto.bulletin.BulletinSetDTO;
import com.pats.qeubeenewsweb.entity.dto.bulletin.SpBulletinTypeDTO;
import com.pats.qeubeenewsweb.service.BulletinSpWebService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiImplicitParam;
import io.swagger.annotations.ApiOperation;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

/**
 * <p>Title: BulletinController</p>
 * <p>Description: 公告控制器</p>
 *
 * @author :qintai.ma
 * @version :1.0.0
 * @since :2020.08.17
 */
@Api(description = "公告接口")
@RestController
@RequestMapping(value = "/bulletin")
@Slf4j
public class BulletinSpController {

    @Autowired
    private BulletinSpWebService service;

    /**
     * 检索分页公告列表 by condition
     *
     * @param pageQuery 公告检索条件
     * @return 当前也公告列表
     */
    @PostMapping(value = "/findByPage")
    @ApiOperation(value = "条件检索分页公告列表")
    public PageDTO<BulletinDetailSpDTO> findByPage(@RequestBody BulletinPageQueryDTO pageQuery) {
        return service.findByPage(pageQuery);
    }

    /**
     * 检索公告列表总条数
     *
     * @param pageQuery 公告检索条件
     * @return 公告列表总条数
     */
    @PostMapping(value = "/findTotal")
    @ApiOperation(value = "检索公告列表总条数")
    public Integer findTotal(@RequestBody BulletinPageQueryDTO pageQuery) {
        log.info("Start bulletin controller.findByPage, parameter is : {}", pageQuery);
        return service.findTotal(pageQuery);
    }

    /**
     * 检索公告类型
     *
     * @return 检索公告类型
     */
    @GetMapping(value = "/types")
    @ApiOperation(value = "检索公告类型")
    public List<SpBulletinTypeDTO> types() {
        return service.getTypes();
    }

    /**
     * 检索公告详情 by id
     *
     * @param id 公告id
     * @return 公告详情
     */
    @GetMapping(value = "/findById")
    @ApiOperation(value = "根据id检索公告详情")
    @ApiImplicitParam(name = "id", value = "公告id", dataType = "int", required = true)
    public BulletinDetailSpDTO findById(@RequestParam Integer id) {
        return service.findById(id);
    }

    /**
     * 公告合规设置
     *
     * @param bulletinOpinionSetDTO 合规设置参数
     * @return 公告id
     */
    @PutMapping(value = "/modifyCompliance")
    @ApiOperation(value = "修改公告合规性")
    public Boolean modifyCompliance(@RequestBody BulletinSetDTO bulletinOpinionSetDTO) {
        return service.modifyCompliance(bulletinOpinionSetDTO);
    }

}