package com.pats.qeubeenewsweb.controller;

import com.pats.qeubeenewsweb.entity.bo.LabelTypeDetailBO;
import com.pats.qeubeenewsweb.entity.dto.label.LabelTypeDeleteDTO;
import com.pats.qeubeenewsweb.entity.dto.label.LabelTypeDetailDTO;
import com.pats.qeubeenewsweb.service.LabelTypeWebService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiParam;
import io.swagger.annotations.ApiResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * 标签类型接口
 *
 * @author : qintai.ma
 * @since : create in 2020/8/18 17:40
 * @version :1.0.0
 */
@Api(description = "标签类型接口")
@RestController
@RequestMapping(value = "/labelType")
public class LabelTypeController {

    @Autowired
    private LabelTypeWebService labelTypeService;

    /**
     * @return 获取标签类型列表
     */
    @GetMapping("/findByCondition")
    @ApiOperation("获取标签类型列表")
    @ApiResponse(code = 0, message = "ok")
    public List<LabelTypeDetailBO> findByCondition(@ApiParam("标签所属范围 可选项：news: 舆情 bulletin：公告 null: 全查")
                                                   @RequestParam(value = "scope", required = false) String scope) {
        return labelTypeService.findByCondition(scope);
    }

    /**
     * @return 新建分类
     */
    @PostMapping("/create")
    @ApiOperation("新建分类")
    @ApiResponse(code = 0, message = "ok")
    public LabelTypeDetailBO create(@RequestBody LabelTypeDetailDTO labelTypeDetailDTO) {
        return labelTypeService.create(labelTypeDetailDTO);
    }

    /**
     * @return 修改分类
     */
    @PutMapping("/modify")
    @ApiOperation("修改分类")
    @ApiResponse(code = 0, message = "ok")
    public LabelTypeDetailBO modify(@RequestBody LabelTypeDetailDTO labelTypeDetailDTO) {
        return labelTypeService.modify(labelTypeDetailDTO);
    }

    /**
     * 删除分类
     *
     * @return boolean
     */
    @DeleteMapping("/remove")
    @ApiOperation("删除分类")
    @ApiResponse(code = 0, message = "ok")
    public Boolean remove(@RequestBody LabelTypeDeleteDTO labelTypeDeleteDTO) {
        return labelTypeService.remove(labelTypeDeleteDTO);
    }

}
