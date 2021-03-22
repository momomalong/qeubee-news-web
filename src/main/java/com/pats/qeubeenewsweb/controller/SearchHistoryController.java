package com.pats.qeubeenewsweb.controller;

import com.pats.qeubeenewsweb.entity.dto.searchhistory.SearchHistoryDTO;
import com.pats.qeubeenewsweb.service.SearchHistoryWebService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiImplicitParam;
import io.swagger.annotations.ApiImplicitParams;
import io.swagger.annotations.ApiOperation;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * <p>Title: SearchHistoryController</p>
 * <p>Description: 搜索历史接口</p>
 *
 * @author :wenjie.pei
 * @version :1.0.0
 * @since :2020.08.17
 */
@Api(description = "搜索历史接口")
@RestController
@RequestMapping(value = "/searchHistory")
@RequiredArgsConstructor
@Slf4j
public class SearchHistoryController {

    private final SearchHistoryWebService searchHistoryService;

    /**
     * 添加搜索热词
     *
     * @param searchHistoryDTO 搜索热词添加参数
     * @return 新建热词id
     */
    @PostMapping("/create")
    public Integer addKeyWord(SearchHistoryDTO searchHistoryDTO) {
        return searchHistoryService.addKeyWord(searchHistoryDTO);
    }

    /**
     * 搜索历史检索
     *
     * @param scope  新闻种类
     * @param userId 用户id
     * @return 搜索历史列表
     */
    @GetMapping(value = "/find")
    @ApiOperation(value = "获取搜索历史列表")
    @ApiImplicitParams({
        @ApiImplicitParam(name = "scope", value = "新闻种类(news:舆情, bulletin:公告)", allowableValues = "news,bulletin"),
        @ApiImplicitParam(name = "userId", value = "用户id", dataType = "String", required = true),
    })
    public List<SearchHistoryDTO> find(String scope, @RequestHeader(name = "userid") String userId) {
        log.info("Started search history controller.find, parameters is {}, {}", scope, userId);
        return searchHistoryService.findHistory(scope, userId);
    }

    /**
     * 搜索历史删除
     *
     * @param id 搜索历史文本id
     */
    @DeleteMapping("/remove/{id}")
    @ApiOperation(value = "搜索历史删除")
    @ApiImplicitParam(name = "id", value = "历史记录id", dataType = "int", required = true)
    public void remove(@PathVariable Integer id) {
        searchHistoryService.remove(id);
    }

    /**
     * 搜索历史清空
     *
     * @param userId 用户id
     */
    @DeleteMapping("/removeAll")
    @ApiOperation(value = "搜索历史清空")
    @ApiImplicitParam(name = "userid", value = "用户id", dataType = "String", required = true)
    public void removeAll(@RequestHeader(name = "userid") String userId) {
        searchHistoryService.removeAll(userId);
    }

}