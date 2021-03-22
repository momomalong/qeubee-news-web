package com.pats.qeubeenewsweb.entity.dto.searchhistory;

import com.pats.qeubeenews.common.dto.SysBaseDTO;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.ToString;

/**
 * <p>Title: SearchHistoryServDTO</p>
 * <p>Description: 搜索历史DTO类</p>
 * 
 * @author : wenjie.pei
 * @since : 2020.08.17
 * @version : 1.0.0
 */
@ApiModel
@Data
@EqualsAndHashCode(callSuper = true)
@ToString(callSuper = true)
public class SearchHistoryServDTO extends SysBaseDTO {

    private static final long serialVersionUID = -2267560673362146509L;

    /**
     * 搜索关键词
     */
    @ApiModelProperty(value = "搜索关键词")
    private String keyword;

    /**
     * 用户id
     */
    @ApiModelProperty(value = "用户id", example = "1")
    private String userId;

    /**
     * 新闻类别, news or bulletin
     */
    @ApiModelProperty(value = "新闻类别", allowableValues = "news,bulletin")
    private String scope;

}