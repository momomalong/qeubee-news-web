package com.pats.qeubeenewsweb.entity.dto.label;

import java.util.List;

import com.pats.qeubeenewsweb.entity.bo.PublicOpinionLabelBindBO;
import com.pats.qeubeenews.common.dto.SysBaseDTO;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
import lombok.EqualsAndHashCode;

/**
 * <p>Title: LabelBindSetDTO</p>
 * <p>Description: 舆情标签绑定DTO</p>
 * 
 * @author :wenjie.pei
 * @since  :2020.08.17
 * @version :1.0.0
 */
@ApiModel(value = "舆情标签设置")
@Data
@EqualsAndHashCode(callSuper = true)
public class LabelBindSetDTO extends SysBaseDTO {

    private static final long serialVersionUID = 2929222858289217575L;
    
    /**
     * 舆情、标签绑定关系列表
     */
    @ApiModelProperty(value = "设置舆情 与 标签的绑定关系列表")
    private List<PublicOpinionLabelBindBO> labelBind;

}