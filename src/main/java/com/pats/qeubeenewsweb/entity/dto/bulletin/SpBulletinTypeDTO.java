package com.pats.qeubeenewsweb.entity.dto.bulletin;

import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

import java.io.Serializable;
import java.util.List;

/**
 * 公告一级类型分类
 * @author Hzy
 * @since 2021/3/10
 * @version 1.0.0
 */
@Data
public class SpBulletinTypeDTO implements Serializable {

    private static final long serialVersionUID = 1L;

    @ApiModelProperty(value = "一级分类code")
    private String levelTypeCode;

    @ApiModelProperty(value = "一级分类名称")
    private String levelTypeName;

    /**
     * 二级分类列表
     */
    @ApiModelProperty(value = "二级分类列表")
    private List<SpBulletinTwoTypeDTO> twoTypes;
}
