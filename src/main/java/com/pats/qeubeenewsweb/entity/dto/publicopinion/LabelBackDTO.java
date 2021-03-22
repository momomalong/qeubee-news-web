package com.pats.qeubeenewsweb.entity.dto.publicopinion;


import com.pats.qeubeenewsweb.entity.dto.label.LabelDTO;
import com.pats.qeubeenewsweb.enums.PoOrBtLabelEnum;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

import java.io.Serializable;
import java.util.List;

/**
 * <p>Title: MQ情绪分析结果DTO类</p>
 *
 * @author :Hzy
 * @since  :2020.08.17
 * @version :1.0.0
 */
@ApiModel(value = "MQ情绪分析结果DTO类")
@Data
public class LabelBackDTO implements Serializable {

    private static final long serialVersionUID = 1L;

    /**
     * 新闻id
     */
    @ApiModelProperty(value = "新闻id", example = "1")
    private Integer id;

    private String articleScore;
    /**
     * 标签集
     */
    @ApiModelProperty(value = "标签集")
    private List<LabelDTO> labels;

    /**
     * 情绪句子集
     */
    @ApiModelProperty(name = "情绪句子集")
    private List<PublicOpinionSentenceDTO> sentiment;

    /**
     * 类型
     */
    @ApiModelProperty(name = "消息类型")
    private PoOrBtLabelEnum type;
}
