package com.pats.qeubeenewsweb.entity.dto.label;

import java.util.List;

import com.pats.qeubeenewsweb.entity.bo.PublicOpinionLabelBindBO;
import com.pats.qeubeenews.common.dto.SysBaseDTO;

import io.swagger.annotations.ApiModel;
import lombok.Data;
import lombok.EqualsAndHashCode;

/**
 * <p>Title: LabelSetDTO</p>
 * <p>Description: 舆情标签绑定DTO</p>
 * 
 * @author :wenjie.pei
 * @since  :2020.08.17
 * @version :1.0.0
 */
@ApiModel(value = "舆情标签设置")
@Data
@EqualsAndHashCode(callSuper = true)
public class LabelBindSetServDTO extends SysBaseDTO {

    private static final long serialVersionUID = 1L;
    
    /**
     * 舆情、标签绑定关系列表
     */
    private List<PublicOpinionLabelBindBO> labelBind;

}