package com.pats.qeubeenewsweb.controller;

import com.pats.qeubeenewsweb.entity.bo.LabelDetailBO;
import com.pats.qeubeenewsweb.entity.bo.LabelInsertBatchResponseBO;
import com.pats.qeubeenewsweb.entity.dto.label.LabelAndLabelTypeDTO;
import com.pats.qeubeenewsweb.entity.dto.label.LabelDeleteDTO;
import com.pats.qeubeenewsweb.entity.dto.label.LabelDetailDTO;
import com.pats.qeubeenewsweb.entity.dto.label.LabelGroupDTO;
import com.pats.qeubeenewsweb.entity.dto.label.LabelGroupQueryDTO;
import com.pats.qeubeenewsweb.entity.dto.label.LabelInsertDTO;
import com.pats.qeubeenewsweb.entity.dto.label.LabelsQueryDTO;
import com.pats.qeubeenewsweb.service.LabelWebService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiParam;
import io.swagger.annotations.ApiResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

/**
 * 标签接口
 *
 * @author : qintai.ma
 * @version :1.0.0
 * @since : create in 2020/8/18 16:32
 */
@Api(description = "标签接口")
@RestController
@RequestMapping(value = "/labels")
public class LabelController {

    @Autowired
    private LabelWebService labelService;


    /**
     * @return 获取全部标签
     */
    @GetMapping("/findAll")
    @ApiOperation("获取全部标签")
    @ApiResponse(code = 0, message = "ok")
    public List<LabelDetailBO> findAll() {
        return labelService.findAll();
    }

    /**
     * @param labelsQueryDTO 参数
     * @return 获取所有过滤标签
     */
    @PostMapping("/findByCondition")
    @ApiOperation("获取所有过滤标签")
    @ApiResponse(code = 0, message = "ok")
    public List<LabelDetailBO> findByCondition(@RequestBody LabelsQueryDTO labelsQueryDTO) {
        return labelService.findByCondition(labelsQueryDTO);
    }

    /**
     * 获取标签组
     *
     * @param labelGroupQueryDTO 标签组检索参数
     * @return 标签组检索结果
     */
    @PostMapping("/findLabelGroup")
    @ApiOperation("获取标签组")
    @ApiResponse(code = 0, message = "ok")
    public List<LabelGroupDTO> findLabelGroup(@RequestBody LabelGroupQueryDTO labelGroupQueryDTO) {
        return labelService.findLabelGroup(labelGroupQueryDTO);
    }

    /**
     * @param labelsInsertDTO 参数
     * @return 成功后的数据
     */
    @PostMapping("/create")
    @ApiOperation("批量新建标签")
    @ApiResponse(code = 0, message = "ok")
    public List<LabelInsertBatchResponseBO> create(@RequestBody LabelInsertDTO labelsInsertDTO) {
        return labelService.create(labelsInsertDTO);
    }

    /**
     * 根据Id修改
     *
     * @param labelDetailDTO 根据Id修改
     */
    @PostMapping(value = "/updateById")
    @ApiOperation(value = "根据Id修改")
    public void updateById(@RequestBody LabelDetailDTO labelDetailDTO) {
        labelService.updateById(labelDetailDTO);
    }

    /**
     * @param labelsDeleteDTO id
     * @return 状态
     */
    @DeleteMapping("/remove")
    @ApiOperation("删除标签")
    @ApiResponse(code = 0, message = "ok")
    public Boolean remove(@RequestBody LabelDeleteDTO labelsDeleteDTO) {
        return labelService.remove(labelsDeleteDTO);
    }


    /**
     * 通过标签的scope属性获取所有标签与标签类型
     *
     * @param scope             标签所属范围
     * @param labelClassify     标签合规性
     * @param labelTypeClassify 标签类型合规性
     * @return 所有标签结果集
     */
    @GetMapping("/findByScope")
    @ApiOperation("获取所有标签和标签类型")
    public List<LabelAndLabelTypeDTO> findByScope(@ApiParam(value = "''：全查，news：舆情，bulletin：公告") @RequestParam(defaultValue = "") String scope,
                                                  @ApiParam(value = "0：全查，1：不合规，2：合规") @RequestParam(defaultValue = "0") int labelClassify,
                                                  @ApiParam(value = "0：全查，1：不合规，2：合规") @RequestParam(defaultValue = "0") int labelTypeClassify,
                                                  @ApiParam(value = "标签名称，模糊匹配") @RequestParam(defaultValue = "") String labelName,
                                                  @ApiParam(value = "起始条数，默认0开始") @RequestParam(defaultValue = "0") int startLimit,
                                                  @ApiParam(value = "查询条数，默认100条") @RequestParam(defaultValue = "100") int endLimit) {
        return labelService.findByScope(scope, labelClassify, labelTypeClassify, labelName, startLimit, endLimit);
    }
}
