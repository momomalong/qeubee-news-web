package com.pats.qeubeenewsweb.entity.bo;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;
import java.util.List;

/**
 * @author mqt
 * @version 1.0
 * @date 2020/12/28 14:43
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
@ApiModel("行业查询实体DTO")
public class PoIndustryQueryBO implements Serializable {

    private static final long serialVersionUID = 1L;
    @ApiModelProperty("行业")
    private String issuerSector;
    @ApiModelProperty("子行业")
    private List<String> issuerSubSector;

}
