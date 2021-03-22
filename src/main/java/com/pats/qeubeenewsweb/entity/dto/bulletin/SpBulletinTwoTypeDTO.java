package com.pats.qeubeenewsweb.entity.dto.bulletin;

import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

import java.io.Serializable;
import java.util.List;

/**
 * 公告二级类型分类
 * @author Hzy
 * @since 2021/3/10
 * @version 1.0.0
 */
@Data
public class SpBulletinTwoTypeDTO implements Serializable {

    private static final long serialVersionUID = 1L;

    @ApiModelProperty(value = "二级分类code")
    private String twoLevelTypeCode;

    @ApiModelProperty(value = "二级分类名称")
    private String twoLevelTypeName;

    /**
     * 三级分类列表
     */
    @ApiModelProperty(value = "三级分类列表")
    private List<SpBulletinThreeTypeDTO> threeTypes;

}
