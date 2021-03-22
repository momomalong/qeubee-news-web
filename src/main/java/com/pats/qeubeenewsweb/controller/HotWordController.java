package com.pats.qeubeenewsweb.controller;

import com.pats.qeubeenewsweb.entity.dto.hotword.HotWordDTO;
import com.pats.qeubeenewsweb.entity.dto.hotword.HotWordDeleteDTO;
import com.pats.qeubeenewsweb.entity.dto.label.HotWordInsertDTO;
import com.pats.qeubeenewsweb.otherservice.HomeHotwordService;
import com.pats.qeubeenewsweb.service.HomeHotwordWebService;
import io.swagger.annotations.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * @author : qintai.ma
 * @version :1.0.0
 * @since : create in 2020/8/19 9:22
 */
@Api(description = "热词接口")
@RestController
@RequestMapping(value = "/hotWord")
public class HotWordController {

    @Autowired
    private HomeHotwordWebService hotWordService;

    @Autowired
    private HomeHotwordService hotword;


    /**
     * 获取热词接口
     */
    @GetMapping("/find")
    @ApiOperation("获取首页热词")
    @ApiImplicitParam(name = "scope", value = "新闻类别", dataType = "String")
    public List<HotWordDTO> find(@RequestParam(required = false) String scope) {
        return hotWordService.findAll(scope, 10);
    }

    /**
     * 获取热词接口
     */
    @GetMapping("/findAll")
    @ApiOperation("获取首页热词")
    @ApiImplicitParams({
        @ApiImplicitParam(name = "scope", value = "新闻类别", dataType = "String"),
        @ApiImplicitParam(name = "limit", value = "获取数", dataType = "Integer")
    })
    public List<HotWordDTO> findAll(@RequestParam(required = false) String scope,
                                    @RequestParam(required = false) Integer limit) {
        return hotWordService.findAll(scope, limit);
    }


    /**
     * 新建首页热词(支持批量)
     *
     * @return 1
     */
    @PostMapping("/create")
    @ApiOperation("新建首页热词(支持批量)")
    @ApiResponse(code = 0, message = "ok")
    public List<HotWordDTO> create(@RequestBody HotWordInsertDTO hotWordInsertDTO) {
        return hotWordService.create(hotWordInsertDTO);
    }

    /**
     * 删除首页热词(支持批量)
     *
     * @return 1
     */
    @DeleteMapping("/remove")
    @ApiOperation("删除首页热词(支持批量)")
    @ApiResponse(code = 0, message = "ok")
    public Boolean remove(@RequestBody HotWordDeleteDTO hotWordInsertDTO) {
        return hotWordService.remove(hotWordInsertDTO);
    }


    /**
     * @return 强制统计热词
     */
    @PostMapping("/statisticsNewHotWords")
    public Boolean statisticsNewHotWords() {
        return hotword.statisticsNewHotWords().getData();
    }

}
