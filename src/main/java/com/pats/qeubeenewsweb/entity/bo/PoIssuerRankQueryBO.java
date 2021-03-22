package com.pats.qeubeenewsweb.entity.bo;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;

/**
 * 主体排名查询DTO
 *
 * @author mqt
 * @version 1.0
 * @date 2020/12/28 16:32
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
@ApiModel("主体排名查询DTO")
public class PoIssuerRankQueryBO {

    @ApiModelProperty(value = "默认0为升序（负面），1为降序（积极）", example = "0")
    private Integer isDesc;

    @ApiModelProperty(value = "行业查询")
    private List<String> industry;

    @ApiModelProperty("关注组查询")
    private List<String> followGroup;
}
