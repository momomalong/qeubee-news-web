package com.pats.qeubeenewsweb.entity.bo;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

import java.io.Serializable;
import java.util.List;

/**
 * <p>Title: PublicOpinionLabelBindBO</p>
 * <p>Description: 舆情、标签绑定关系业务实体</p>
 * 
 * @author :wenjie.pei
 * @since  :2020.08.26
 * @version :1.0.0
 */
@ApiModel(value = "舆情、标签绑定关系实体")
@Data
public class PublicOpinionLabelDeleteBO implements Serializable {

    private static final long serialVersionUID = 1L;
    /**
     * 舆情id
     */
    @ApiModelProperty(value = "舆情id", example = "1")
    private Integer publicOpinionId;
    
    /**
     * 标签列表
     */
    @ApiModelProperty(value = "标签列表")
    private List<Integer> labels;

}