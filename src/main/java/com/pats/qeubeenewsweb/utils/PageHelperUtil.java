package com.pats.qeubeenewsweb.utils;

import com.github.pagehelper.PageHelper;
import com.pats.qeubeenews.common.dto.PageInfo;
import com.pats.qeubeenews.common.dto.Sort;

import java.util.List;
import java.util.stream.Collectors;

/**
 * @author mqt
 * @version 1.0
 * @date 2020/12/8 10:31
 */
public class PageHelperUtil {
    public static <T extends PageInfo,T1> com.github.pagehelper.Page<T1> ofPage(T pageQuery,Class<T1> genericObject) {
        com.github.pagehelper.Page<T1> page;
        if (pageQuery.isSort()) {
            List<Sort> sortInfo = pageQuery.getSortInfo();
            // 拼接排序字段
            String s = sortInfo.stream().map(Sort::getSortCol).collect(Collectors.joining(","));
            s += sortInfo.get(0).isDirection() ? " ASC" : " DESC";
            page = PageHelper.startPage(pageQuery.getPageNum(), pageQuery.getDataCount(), s);
        } else {
            page = PageHelper.startPage(pageQuery.getPageNum(), pageQuery.getDataCount(), "id desc");
        }
        return page;
    }
}
