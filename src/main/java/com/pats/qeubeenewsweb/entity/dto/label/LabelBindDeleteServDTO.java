package com.pats.qeubeenewsweb.entity.dto.label;

import com.pats.qeubeenewsweb.entity.bo.PublicOpinionLabelDeleteBO;
import com.pats.qeubeenews.common.dto.SysBaseDTO;
import io.swagger.annotations.ApiModel;
import lombok.Data;
import lombok.EqualsAndHashCode;

import java.util.List;

/**
 * <p>Title: LabelSetDTO</p>
 * <p>Description: 舆情标签绑定 删除DTO</p>
 *
 * @author :qintai.ma
 * @version :1.0.0
 * @since :2020.08.17
 */
@ApiModel(value = "舆情标签删除")
@Data
@EqualsAndHashCode(callSuper = true)
public class LabelBindDeleteServDTO extends SysBaseDTO {

    private static final long serialVersionUID = 1L;

    /**
     * 舆情、标签绑定关系列表
     */
    private List<PublicOpinionLabelDeleteBO> labelBind;

}