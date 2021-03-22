package com.pats.qeubeenewsweb.entity.dto.bulletin;

import com.pats.qeubeenews.common.dto.SysBaseDTO;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
import lombok.EqualsAndHashCode;

import java.util.List;

/**
 * @author :qintai.ma
 * @version :1.0.0
 * @since :2020.08.28
 */
@ApiModel(value = "公告标签设置")
@Data
@EqualsAndHashCode(callSuper = true)
public class BulletinLabelBindSetWebDTO extends SysBaseDTO {

    private static final long serialVersionUID = -8361419580528651708L;
    
    /**
     * 舆情、标签绑定关系列表
     */
    @ApiModelProperty(value = "设置公告 与 标签的绑定关系列表")
    private List<Integer> labels;

}
