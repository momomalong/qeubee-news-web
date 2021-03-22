package com.pats.qeubeenewsweb.entity.dto.publicopinion;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;

/**
 * 舆情主体排名返回实体
 *
 * @author mqt
 * @version 1.0
 * @date 2020/12/28 14:21
 */
@Data
@ApiModel("舆情主体排名返回实体")
@NoArgsConstructor
@AllArgsConstructor
public class PoIssuerRankDTO implements Serializable {
    private static final long serialVersionUID = 1L;
    /**
     * 排名编号
     */
    @ApiModelProperty("排名编号")
    private Integer orderNum;
    /**
     * 发行人code
     */
    @ApiModelProperty("发行人code")
    private String issuerCode;
    /**
     * 情绪评分
     */
    @ApiModelProperty("情绪评分")
    private Integer articleScore;
    /**
     * 主体名称
     */
    @ApiModelProperty("主体名称")
    private String issuerName;
    /**
     * 主体行业
     */
    @ApiModelProperty("主体行业")
    private String issuerSector;
}
