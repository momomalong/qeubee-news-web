package com.pats.qeubeenewsweb.entity.dto.bulletin;

import com.pats.qeubeenews.common.dto.SysBaseDTO;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
import lombok.EqualsAndHashCode;

import java.util.List;

/**
 * <p>Title: BulletinLabelBindSetDTO</p>
 * <p>Description: 公告标签绑定DTO</p>
 *
 * @author :qintai.ma
 * @version :1.0.0
 * @since :2020.08.28
 */
@ApiModel(value = "公告标签删除")
@Data
@EqualsAndHashCode(callSuper = true)
public class BulletinLabelBindDeleteDTO extends SysBaseDTO {

    private static final long serialVersionUID = 1L;

    /**
     * 标签id列表
     */
    @ApiModelProperty(value = "标签id列表")
    private List<Integer> labels;

}