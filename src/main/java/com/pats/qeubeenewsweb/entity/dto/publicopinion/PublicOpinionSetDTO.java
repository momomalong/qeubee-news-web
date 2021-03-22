package com.pats.qeubeenewsweb.entity.dto.publicopinion;

import com.pats.qeubeenews.common.dto.SysBaseDTO;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.ToString;

/**
 * <p>Title: PublicOpinionSetDTO</p>
 * <p>Description: 舆情设置DTO</p>
 * 
 * @author :wenjie.pei
 * @since  :2020.08.17
 * @version :1.0.0
 */
@ApiModel(value = "新闻舆情设置DTO")
@Data
@EqualsAndHashCode(callSuper = true)
@ToString(callSuper = true)
public class PublicOpinionSetDTO extends SysBaseDTO {

    private static final long serialVersionUID = -8531754947441161455L;
    
    /**
     * 合规性
     */
    @ApiModelProperty(value = "合规性", example = "1")
    private Integer compliance;
    
}