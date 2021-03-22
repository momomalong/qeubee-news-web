package com.pats.qeubeenewsweb.logic;

import com.baomidou.mybatisplus.extension.service.IService;
import com.pats.qeubeenewsweb.entity.SearchHistory;

import java.util.List;

/**
 * <p>Title: SearchHistoryLogic</p>
 * <p>Description: 搜索历史服务接口</p>
 * 
 * @author :wenjie.pei
 * @since  :2020.08.19
 * @version :1.0.0
 */
public interface SearchHistoryLogic extends IService<SearchHistory> {

    /**
     * 添加搜索热词
     * 
     * @param searchHistory 搜索热词添加参数
     * @return 新建热词id
     */
    Integer addKeyWord(SearchHistory searchHistory);

    /**
     * 搜索历史检索,默认5条
     * 
     * @return 搜索历史列表
     */
    List<SearchHistory> findHistory(SearchHistory searchHistory);

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