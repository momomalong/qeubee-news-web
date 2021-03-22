package com.pats.qeubeenewsweb.entity.dto.bulletin;

import com.pats.qeubeenews.common.dto.SysBaseDTO;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
import lombok.EqualsAndHashCode;

/**
 * <p>Title: BulletinSetDTO</p>
 * <p>Description: 公告设置DTO</p>
 *
 * @author :wenjie.pei
 * @version :1.0.0
 * @since :2020.08.17
 */
@ApiModel(value = "新闻公告设置DTO")
@Data
@EqualsAndHashCode(callSuper = true)
public class BulletinSetDTO extends SysBaseDTO {

    private static final long serialVersionUID = 1L;
    /**
     * 合规性
     */
    @ApiModelProperty(value = "合规性", example = "1")
    private Integer compliance;

}