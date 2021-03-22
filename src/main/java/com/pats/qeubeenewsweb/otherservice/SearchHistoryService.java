package com.pats.qeubeenewsweb.otherservice;

import com.pats.qeubeenews.common.dto.ResultDTO;
import com.pats.qeubeenewsweb.entity.SearchHistory;
import com.pats.qeubeenewsweb.entity.dto.searchhistory.SearchHistoryServDTO;

import java.util.List;

/**
 * <p>Title: SearchHistoryService</p>
 * <p>Description: 搜索历史服务接口</p>
 *
 * @author :wenjie.pei
 * @version :1.0.0
 * @since :2020.08.19
 */
public interface SearchHistoryService {

    /**
     * 添加搜索热词
     *
     * @param searchHistoryDTO 搜索热词添加参数
     * @return 新建热词id
     */
    ResultDTO<Integer> addKeyWord(SearchHistoryServDTO searchHistoryDTO);

    /**
     * 搜索历史检索,默认5条
     *
     * @param scope  新闻类别
     * @param userId 用户id
     * @return 搜索历史列表
     */
    ResultDTO<List<SearchHistory>> findHistory(String scope, String userId);

    /**
     * 移除热词
     *
     * @param id 热词id
     * @return 调用结果
     */
    ResultDTO<?> remove(Integer id);

    /**
     * 清空热词
     *
     * @param userId 用户id
     * @return 调用结果
     */
    ResultDTO<?> removeAll(String userId);

}