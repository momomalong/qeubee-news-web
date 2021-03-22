package com.pats.qeubeenewsweb.entity.dto.label;

import com.pats.qeubeenews.common.dto.SysBaseDTO;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;

import java.util.List;

/**
 * 标签批量新增实体类
 * @author :qintai.ma
 * @version :1.0.0
 * @since :2020.08.18
 */
@Data
@EqualsAndHashCode(callSuper = true)
@NoArgsConstructor
@AllArgsConstructor
@ApiModel("标签新增实体类")
public class LabelInsertDTO extends SysBaseDTO {

    /**
     *
     */
    private static final long serialVersionUID = 1L;
    
    /**
     * 标签类型
     */
    @ApiModelProperty(value = "标签", required = true)
    private List<LabelInsertBatchDTO> labels;

}
