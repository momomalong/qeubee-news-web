package com.pats.qeubeenewsweb.otherservice.impl;

import com.pats.qeubeenews.common.dto.ResultDTO;
import com.pats.qeubeenews.common.utils.BeansMapper;
import com.pats.qeubeenewsweb.entity.dto.searchhistory.SearchHistoryServDTO;
import com.pats.qeubeenewsweb.entity.SearchHistory;
import com.pats.qeubeenewsweb.logic.SearchHistoryLogic;
import com.pats.qeubeenewsweb.otherservice.SearchHistoryService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

/**
 * <p>Title: SearchHistoryServiceImpl</p>
 * <p>Description: 搜索历史服务实现</p>
 *
 * @author :wenjie.pei
 * @version:1.0.0
 * @since :2020.08.19
 */
@RestController
@Service
@RequiredArgsConstructor
public class SearchHistoryServiceImpl implements SearchHistoryService {

    private final SearchHistoryLogic searchHistoryLogic;

    /**
     * 添加搜索热词
     *
     * @param searchHistoryDTO 搜索热词添加参数
     * @return 新建热词id
     */
    @Override
    @PostMapping("/addKeyWord")
    public ResultDTO<Integer> addKeyWord(SearchHistoryServDTO searchHistoryDTO) {
        SearchHistory searchHistory = BeansMapper.convert(searchHistoryDTO, SearchHistory.class);
        return ResultDTO.success(searchHistoryLogic.addKeyWord(searchHistory));
    }

    /**
     * 搜索历史检索,默认5条
     *
     * @param scope  新闻类别
     * @param userId 用户id
     * @return 搜索历史列表
     */
    @Override
    @GetMapping("/findHistory")
    public ResultDTO<List<SearchHistory>> findHistory(String scope, String userId) {
        SearchHistory searchHistory = new SearchHistory();
        searchHistory.setScope(scope);
        searchHistory.setUserId(userId);
        return ResultDTO.success(searchHistoryLogic.findHistory(searchHistory));
    }

    /**
     * 移除热词
     *
     * @param id 热词id
     * @return 调用结果
     */
    @Override
    @DeleteMapping("/remove")
    public ResultDTO<?> remove(Integer id) {
        searchHistoryLogic.remove(id);
        return ResultDTO.success(null);
    }

    /**
     * 清空热词
     *
     * @param userId 用户id
     * @return 调用结果
     */
    @Override
    @DeleteMapping("/removeAll")
    public ResultDTO<?> removeAll(String userId) {
        searchHistoryLogic.removeAll(userId);
        return ResultDTO.success(null);
    }

}