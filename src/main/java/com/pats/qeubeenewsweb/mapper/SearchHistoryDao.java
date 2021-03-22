package com.pats.qeubeenewsweb.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.pats.qeubeenewsweb.entity.SearchHistory;
import org.apache.ibatis.annotations.Mapper;

/**
 * <p>Title: SearchHistoryDao</p>
 * <p>Description: 搜索历史接口</p>
 */
@Mapper
public interface SearchHistoryDao extends BaseMapper<SearchHistory> {
    
}