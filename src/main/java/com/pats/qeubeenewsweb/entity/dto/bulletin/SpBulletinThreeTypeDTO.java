package com.pats.qeubeenewsweb.entity.dto.bulletin;

import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

import java.io.Serializable;

/**
 * 公告三级类型分类
 * @author Hzy
 * @since 2021/3/10
 * @version 1.0.0
 */
@Data
public class SpBulletinThreeTypeDTO implements Serializable {

    private static final long serialVersionUID = 1L;

    @ApiModelProperty(value = "三级分类code")
    private String threeLevelTypeCode;

    @ApiModelProperty(value = "三级分类名称")
    private String threeLevelTypeName;

}
