package com.pats.qeubeenewsweb.service.impl;

import java.util.List;

import com.pats.qeubeenewsweb.entity.dto.searchhistory.SearchHistoryDTO;
import com.pats.qeubeenewsweb.service.SearchHistoryWebService;
import com.pats.qeubeenewsweb.service.transfer.SearchHistoryServiceTransfer;

import org.springframework.stereotype.Service;

import lombok.RequiredArgsConstructor;

/**
 * <p>Title: </p>
 * <p>Description: 搜索历史业务实现类</p>
 * 
 * @author :wenjie.pei
 * @since  :2020.08.20
 * @version :1.0.0
 */
@RequiredArgsConstructor
@Service
public class SearchHistoryWebServiceImpl implements SearchHistoryWebService {

    private final SearchHistoryServiceTransfer searchHistoryTransfer;

    /**
     * 新增搜索历史
     * 
     * @param searchHistoryDTO  搜索历史参数DTO
     * @return  新增的搜索历史id
     */
    @Override
    public Integer addKeyWord(SearchHistoryDTO searchHistoryDTO) {
        return searchHistoryTransfer.addKeyWord(searchHistoryDTO);
    }

    /**
     * 搜索历史检索,默认5条
     * 
     * @param scope   新闻类型
     * @param userId  用户id
     * @return 搜索历史列表
     */
    @Override
    public List<SearchHistoryDTO> findHistory(String scope, String userId) {
        return searchHistoryTransfer.findHistory(scope, userId);
    }

    /**
     * 移除热词
     * 
     * @param id 热词id
     * @return 调用结果
     */
    @Override
    public void remove(Integer id) {
        searchHistoryTransfer.remove(id);
    }

    /**
     * 清空热词
     * 
     * @param userId 用户id
     * @return 调用结果
     */
    @Override
    public void removeAll(String userId) {
        searchHistoryTransfer.removeAll(userId);
    }

}