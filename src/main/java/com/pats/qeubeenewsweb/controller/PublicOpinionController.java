package com.pats.qeubeenewsweb.controller;

import com.pats.qeubeenewsweb.consts.DataBaseSourceConst;
import com.pats.qeubeenewsweb.entity.PublicOpinion;
import com.pats.qeubeenewsweb.entity.bo.PoIssuerRankQueryBO;
import com.pats.qeubeenewsweb.entity.dto.PageDTO;
import com.pats.qeubeenewsweb.entity.dto.label.LabelBindDeleteServDTO;
import com.pats.qeubeenewsweb.entity.dto.label.LabelBindSetDTO;
import com.pats.qeubeenewsweb.entity.dto.publicopinion.PoIssuerRankDTO;
import com.pats.qeubeenewsweb.entity.dto.publicopinion.PublicOpinionDTO;
import com.pats.qeubeenewsweb.entity.dto.publicopinion.PublicOpinionDetailsDTO;
import com.pats.qeubeenewsweb.entity.dto.publicopinion.PublicOpinionPageQueryDTO;
import com.pats.qeubeenewsweb.entity.dto.publicopinion.PublicOpinionSetDTO;
import com.pats.qeubeenewsweb.service.IQbNewsLabelBondIssuerInfoService;
import com.pats.qeubeenewsweb.service.PublicOpinionWebService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiImplicitParam;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiParam;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.util.CollectionUtils;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Optional;

/**
 * <p>Title: PublicOpinionController</p>
 * <p>Description: 舆情控制器</p>
 *
 * @author :wenjie.pei
 * @version :1.0.0
 * @since :2020.08.17
 */
@Api(description = "舆情接口")
@RestController
@RequestMapping(value = "/publicOpinion")
public class PublicOpinionController {

    @Autowired
    private PublicOpinionWebService publicOpinionService;

    @Autowired
    private IQbNewsLabelBondIssuerInfoService bondIssuerInfoService;


    /**
     * 舆情列表分页检索 by condition
     *
     * @param pageQuery 分页检索条件
     * @return 当前页舆情数据
     */
    @PostMapping(value = "/findByPage")
    @ApiOperation(value = "条件检索分页舆情列表")
    public PageDTO<PublicOpinionDTO> findByPage(@RequestBody PublicOpinionPageQueryDTO pageQuery) {
        List<Integer> hotWord = pageQuery.getHotWord();
        if (!CollectionUtils.isEmpty(hotWord)) {
            List<Integer> label = Optional.ofNullable(pageQuery.getLabel()).orElse(new ArrayList<>());
            label.addAll(hotWord);
            pageQuery.setLabel(label);
        }
        return publicOpinionService.findByPage(pageQuery);
    }

    /**
     * 舆情列表总条数检索
     *
     * @param totalQuery 总条数检索条件
     * @return 舆情数据总条数
     */
    @PostMapping(value = "/findTotal")
    @ApiOperation(value = "条件检索舆情总数")
    public Integer findTotal(@RequestBody PublicOpinionPageQueryDTO totalQuery) {
        List<Integer> hotWord = totalQuery.getHotWord();
        if (!CollectionUtils.isEmpty(hotWord)) {
            List<Integer> label = Optional.ofNullable(totalQuery.getLabel()).orElse(new ArrayList<>());
            label.addAll(hotWord);
            totalQuery.setLabel(label);
        }
        return publicOpinionService.findTotal(totalQuery);
    }

    /**
     * 舆情详情检索 by id
     *
     * @param id 舆情id
     * @return 舆情详情
     */
    @GetMapping(value = "/findById")
    @ApiOperation(value = "根据id检索舆情详情")
    @ApiImplicitParam(name = "id", value = "舆情id", dataType = "int", required = true)
    public PublicOpinionDetailsDTO findById(@RequestParam Integer id) {
        return publicOpinionService.findById(id);
    }

    /**
     * 舆情合规设置
     *
     * @param publicOpinionSetDTO 合规设置参数
     * @return 舆情id
     */
    @PutMapping(value = "/modifyCompliance")
    @ApiOperation(value = "修改舆情合规性")
    public Integer modifyCompliance(@RequestBody PublicOpinionSetDTO publicOpinionSetDTO) {
        return publicOpinionService.modifyCompliance(publicOpinionSetDTO);
    }

    /**
     * 舆情标签绑定
     *
     * @param labelBindSetDTO 绑定标签参数
     * @return 舆情id
     */
    @PostMapping(value = "/label/add")
    @ApiOperation(value = "批量绑定标签")
    public boolean addLabels(@RequestBody LabelBindSetDTO labelBindSetDTO) {
        return publicOpinionService.addLabels(labelBindSetDTO);
    }

    /**
     * 舆情标签移除
     *
     * @param labelBindSetDTO 移除标签参数
     */
    @DeleteMapping(value = "/label/remove")
    @ApiOperation(value = "批量移除标签")
    public boolean removeLabels(@RequestBody LabelBindDeleteServDTO labelBindSetDTO) {
        return publicOpinionService.removeLabels(labelBindSetDTO);
    }

    /**
     * 根据舆情id检索债券
     *
     * @param id 舆情id
     * @return 债券详情
     */
    @GetMapping(value = "/findBonds")
    @ApiOperation(value = "根据舆情id检索债券详情")
    @ApiImplicitParam(name = "id", value = "舆情id", dataType = "int", required = true)
    public List<Object> findBonds(@RequestParam Integer id) {
        return publicOpinionService.findBonds(id);
    }

    /**
     * 获取所有省份
     */
    @GetMapping(value = "/provinces")
    @ApiOperation(value = "获取所有省份")
    public List<String> provinces() {
        return bondIssuerInfoService.findAllProvinces();
    }

    /**
     * 获取所有行业分类
     */
    @GetMapping(value = "/sectors")
    @ApiOperation(value = "获取所有行业分类")
    public List<Map<String, Object>> sectors() {
        return bondIssuerInfoService.findAllSectors();
    }

    /**
     * 获取所有主行业
     */
    @GetMapping(value = "/mainSectors")
    @ApiOperation(value = "获取所有主行业")
    public List<String> mainSectors() {
        return bondIssuerInfoService.mainSectors();
    }

    /**
     * 获取所有行业分类
     */
    @GetMapping(value = "/poDistributionArea")
    @ApiOperation(value = "获取舆情分布地区排行")
    public Map<String, List<Map<String, String>>> getPoDistributionArea(
        @ApiParam("排名范围,不传则查询全部，1：消极，2：中性，3：积极") @RequestParam(name = "rank", required = false) Integer rank) {
        return publicOpinionService.getPoOrder(DataBaseSourceConst.COL_BOND_ISSUER_INFO_ISSUER_PROVINCE, rank);
    }

    /**
     * 获取所有行业分类
     */
    @GetMapping(value = "/poDistributionIndustry")
    @ApiOperation(value = "获取舆情分布行业排行")

    public Map<String, List<Map<String, String>>> getPoDistributionIndustry(
        @ApiParam("排名范围,不传则查询全部，1：消极，2：中性，3：积极") @RequestParam(name = "rank", required = false) Integer rank) {

        return publicOpinionService.getPoOrder(DataBaseSourceConst.COL_BOND_ISSUER_INFO_ISSUER_SECTOR, rank);
    }

    /**
     * 获取所有行业分类
     */
    @PostMapping(value = "/poIssuerRank")
    @ApiOperation(value = "获取舆情主体发行人排行")
    public Map<String, List<PoIssuerRankDTO>> poIssuerRank(@RequestBody PoIssuerRankQueryBO queryDTO) {
        if (queryDTO.getFollowGroup() != null && queryDTO.getFollowGroup().size() == 0) {
            return new HashMap<>(0);
        }
        // 默认为升序
        if (queryDTO.getIsDesc() == null) {
            queryDTO.setIsDesc(0);
        }
        return publicOpinionService.getPoIssuerOrder(queryDTO.getIsDesc(), queryDTO.getIndustry(), queryDTO.getFollowGroup());
    }

    /**
     * 根据舆情id批量修改publicOpinion表数据
     *
     * @param publicOpinions 舆情表数据集DTO
     */
    @PutMapping("/updatePublicOpinion")
    public boolean updatePublicOpinion(@RequestBody List<PublicOpinion> publicOpinions) {
        return publicOpinionService.updateBatchById(publicOpinions);
    }
}