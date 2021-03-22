package com.pats.qeubeenewsweb.entity.dto.label;

import com.pats.qeubeenews.common.dto.SysBaseDTO;
import io.swagger.annotations.ApiModel;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.EqualsAndHashCode;


/**
 * @author :qintai.ma
 * @version :1.0.0
 * @since :2020.08.18
 */
@ApiModel("标签类型删除类")
@Data
@EqualsAndHashCode(callSuper = true)
@AllArgsConstructor
public class LabelTypeDeleteDTO extends SysBaseDTO {
    private static final long serialVersionUID = 1L;
}
