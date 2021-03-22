package com.pats.qeubeenewsweb.controller;

import com.pats.qeubeenewsweb.entity.dto.PageDTO;
import com.pats.qeubeenewsweb.entity.dto.bulletin.BulletinDTO;
import com.pats.qeubeenewsweb.entity.dto.bulletin.BulletinDetailDTO;
import com.pats.qeubeenewsweb.entity.dto.bulletin.BulletinLabelBindSetWebDTO;
import com.pats.qeubeenewsweb.entity.dto.bulletin.BulletinPageQueryDTO;
import com.pats.qeubeenewsweb.entity.dto.bulletin.BulletinSetDTO;
import com.pats.qeubeenewsweb.service.BulletinWebService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiImplicitParam;
import io.swagger.annotations.ApiOperation;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;

/**
 * <p>Title: BulletinController</p>
 * <p>Description: 公告控制器</p>
 *
 * @author :wenjie.pei
 * @version :1.0.0
 * @since :2020.08.17
 */
@Api(description = "公告接口")
//@RestController
//@RequestMapping(value = "/bulletin")
@RequiredArgsConstructor
@Slf4j
public class BulletinController {

    private final BulletinWebService service;

    /**
     * 检索分页公告列表 by condition
     *
     * @param pageQuery 公告检索条件
     * @return 当前也公告列表
     */
    @PostMapping(value = "/findByPage")
    @ApiOperation(value = "条件检索分页公告列表")
    public PageDTO<BulletinDTO> findByPage(@RequestBody BulletinPageQueryDTO pageQuery) {
        log.info("Start bulletin controller.findByPage, parameter is : {}", pageQuery);
        return service.findByPage(pageQuery);
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
    public BulletinDetailDTO findById(@RequestParam Integer id) {
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

    /**
     * 公告标签绑定
     *
     * @param labelBindSetDTO 绑定标签参数
     * @return 公告id
     */
    @PostMapping(value = "/label/add")
    @ApiOperation(value = "批量绑定标签")
    public Boolean addLabels(@RequestBody BulletinLabelBindSetWebDTO labelBindSetDTO) {
        return service.addLabels(labelBindSetDTO);
    }

    /**
     * 公告标签移除
     *
     * @param labelBindSetDTO 公告标签移除
     */
    @DeleteMapping(value = "/label/remove")
    @ApiOperation(value = "批量移除标签")
    public Boolean removeLabels(@RequestBody BulletinLabelBindSetWebDTO labelBindSetDTO) {
        return service.removeLabels(labelBindSetDTO);
    }

}