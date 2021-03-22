package com.pats.qeubeenewsweb.service.transfer;

import com.pats.qeubeenews.common.dto.ResultDTO;
import com.pats.qeubeenews.common.utils.BeansMapper;
import com.pats.qeubeenewsweb.entity.dto.searchhistory.SearchHistoryServDTO;
import com.pats.qeubeenewsweb.entity.SearchHistory;
import com.pats.qeubeenewsweb.entity.dto.searchhistory.SearchHistoryDTO;
import com.pats.qeubeenewsweb.otherservice.SearchHistoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.util.List;

/**
 * <p>Title: SearchHistoryServiceTransfer</p>
 * <p>Description: SearchHistoryService 调用数据转换类</p>
 *
 * @author :wenjie.pei
 * @version:1.0.0
 * @since :2020.08.20
 */
@Component
public class SearchHistoryServiceTransfer {

    @Autowired
    private SearchHistoryService searchHistoryService;

    /**
     * 新增搜索历史
     *
     * @param searchHistoryDTO 搜索历史参数DTO
     * @return 新增的搜索历史id
     */
    public Integer addKeyWord(SearchHistoryDTO searchHistoryDTO) {
        ResultDTO<Integer> result = searchHistoryService.addKeyWord(
            BeansMapper.convert(searchHistoryDTO, SearchHistoryServDTO.class));
        return result.getData();
    }

    /**
     * 搜索历史检索api 调用并转换处理
     *
     * @param scope  新闻类型
     * @param userId 用户id
     * @return 搜索历史列表
     */
    public List<SearchHistoryDTO> findHistory(String scope, String userId) {
        // 调用 搜索历史检索 api
        ResultDTO<List<SearchHistory>> result = searchHistoryService.findHistory(scope, userId);
        return BeansMapper.convertList(result.getData(), SearchHistoryDTO.class);
    }

    /**
     * 移除热词api 调用并转换处理
     *
     * @param id 热词id
     * @return 调用结果
     */
    public void remove(Integer id) {
        searchHistoryService.remove(id);
    }

    /**
     * 清空热词api 调用并转换处理
     *
     * @param userId 用户id
     * @return 调用结果
     */
    public void removeAll(String userId) {
        searchHistoryService.removeAll(userId);
    }

}