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
public class HotWordDetailDTO extends SysBaseDTO {
    private static final long serialVersionUID = 1L;
    /**
     * 热词
     */
    @ApiModelProperty("热词")
    private Integer labelId;
    /**
     * 热词所属新闻
     */
    @ApiModelProperty("热词所属新闻")
    private String scope;

}
