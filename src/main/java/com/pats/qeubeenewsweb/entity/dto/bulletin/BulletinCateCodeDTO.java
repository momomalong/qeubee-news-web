package com.pats.qeubeenewsweb.entity.dto.bulletin;

import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

/**
 * @author Hzy
 * @since 2021/3/1
 * @version 1.0.0
 */
@Data
public class BulletinCateCodeDTO {

    @ApiModelProperty("公告id")
    private Integer id;

    @ApiModelProperty("bulletin_id")
    private String bulletinId;

    @ApiModelProperty("公告类型")
    private String cateCode;

}
