package com.pats.qeubeenewsweb.entity.dto.hotword;

import com.pats.qeubeenews.common.dto.SysBaseDTO;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;

/**
 * @author :qintai.ma
 * @version :1.0.0
 * @since :2020.08.19
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
@ApiModel("热词详情类")
@EqualsAndHashCode(callSuper = true)
public class HotWordDTO extends SysBaseDTO {
    private static final long serialVersionUID = 1L;

    /**
     * id
     */
    @ApiModelProperty("id")
    private Integer id;

    /**
     * 标签id
     */
    @ApiModelProperty("标签id")
    private Integer labelId;
    
    /**
     * 热词
     */
    @ApiModelProperty("热词名称")
    private String labelName;

    /**
     * 热词所属新闻
     */
    @ApiModelProperty("热词所属新闻")
    private String scope;

    /**
     * 排序标号
     */
    @ApiModelProperty("排序标号")
    private Integer orderNum;

    /**
     * 0:系统创建（默认）  1：用户创建
     */
    @ApiModelProperty("0:系统创建（默认）  1：用户创建")
    private Integer type;
}
