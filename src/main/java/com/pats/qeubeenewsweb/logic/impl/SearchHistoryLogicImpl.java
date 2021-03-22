package com.pats.qeubeenewsweb.logic.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.pats.qeubeenews.common.exception.BaseKnownException;
import com.pats.qeubeenewsweb.consts.DataBaseSourceConst;
import com.pats.qeubeenewsweb.mapper.SearchHistoryDao;
import com.pats.qeubeenewsweb.entity.SearchHistory;
import com.pats.qeubeenewsweb.logic.SearchHistoryLogic;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Component;

import java.time.LocalDate;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.stream.Collectors;

/**
 * <p>Title: SearchHistoryServiceImpl</p>
 * <p>Description: 搜索历史服务实现</p>
 * 
 * @author :wenjie.pei
 * @since  :2020.08.19
 * @version :1.0.0
 */
@Component
@RequiredArgsConstructor
public class SearchHistoryLogicImpl extends ServiceImpl<SearchHistoryDao, SearchHistory> implements SearchHistoryLogic {

    /**
     * 添加搜索热词
     * 
     * @param searchHistory 搜索热词添加参数
     * @return 新建热词id
     */
    @Override
    public Integer addKeyWord(SearchHistory searchHistory) {
        // 检索已有的搜索历史
        List<SearchHistory> histories =  findHistory(searchHistory);
        // 如果关键词已经搜索过,则不在保存
        List<String> hotwords = histories.stream()
                                    .map(history -> history.getKeyword()).collect(Collectors.toList());
        if (Objects.nonNull(hotwords) && hotwords.contains(searchHistory.getKeyword())) {
            return null;
        }
        // 搜索历史大于6条, 则删除最早的搜索历史
        if (histories.size() > 5) {
            remove(histories.get(histories.size()-1).getId());
        }
        // 调用插入搜索历史
        searchHistory.setCreateTime(LocalDate.now().toString());
        searchHistory.setUpdateTime(LocalDate.now().toString());
        saveOrUpdate(searchHistory);
        // 存储热词并返回id
        return searchHistory.getId();
    }

    /**
     * 搜索历史检索,默认5条
     * 
     * @return 搜索历史列表
     */
    @Override
    public List<SearchHistory> findHistory(SearchHistory searchHistory) {
        // 查询条件设置
        QueryWrapper<SearchHistory> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq(DataBaseSourceConst.COL_SEARCH_HISTORY_SCOPE, searchHistory.getScope());
        queryWrapper.eq(DataBaseSourceConst.COL_SEARCH_HISTORY_USER_ID, searchHistory.getUserId());
        queryWrapper.orderByDesc(DataBaseSourceConst.ID);
        // 根据新闻类型、用户id检索
        
        // 返回近5条记录          
        return list(queryWrapper);
    }

    /**
     * 移除热词
     * 
     * @param id 热词id
     * @return 调用结果
     */
    @Override
    public void remove(Integer id) {
        if (!removeById(id)) {
            throw new BaseKnownException(10003, "插入失败");
        }
    }

    /**
     * 清空热词
     * 
     * @param userId 用户id
     * @return 调用结果
     */
    @Override
    public void removeAll(String userId) {
        Map<String, Object> map = new HashMap<>();
        map.put(DataBaseSourceConst.COL_SEARCH_HISTORY_USER_ID, userId);
        if (!removeByMap(map)) {
            throw new BaseKnownException(10003, "插入失败");
        }
    }
    
}