package com.pats.qeubeenewsweb.service;

import java.util.List;

import com.pats.qeubeenewsweb.entity.dto.searchhistory.SearchHistoryDTO;

/**
 * <p>Title: SearchHistoryService</p>
 * <p>Description: 搜索历史业务类</p>
 * 
 * @author :wenjie.pei
 * @since  :2020.08.19
 * @version:1.0.0
 */
public interface SearchHistoryWebService {

    /**
     * 新增搜索历史
     * 
     * @param searchHistoryDTO  搜索历史参数DTO
     * @return  新增的搜索历史id
     */
    Integer addKeyWord(SearchHistoryDTO searchHistoryDTO);


    /**
     * 搜索历史检索,默认5条
     * 
     * @param scope   新闻类型
     * @param userId  用户id
     * @return 搜索历史列表
     */
    List<SearchHistoryDTO> findHistory(String scope, String userId);

    /**
     * 移除热词
     * 
     * @param id 热词id
     * @return 调用结果
     */
    void remove(Integer id);

    /**
     * 清空热词
     * 
     * @param userId 用户id
     * @return 调用结果
     */
    void removeAll(String userId);
    
}