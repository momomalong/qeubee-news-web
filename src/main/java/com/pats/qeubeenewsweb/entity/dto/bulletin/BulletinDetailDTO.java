package com.pats.qeubeenewsweb.entity.dto.bulletin;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
import lombok.EqualsAndHashCode;

import java.util.List;
import java.util.Map;

/**
 * <p>Title: BulletinDetailDTO</p>
 * <p>Description: 公告详情DTO</p>
 *
 * @author :wenjie.pei
 * @version :1.0.0
 * @since :2020.08.17
 */
@ApiModel(value = "公告详情DTO")
@Data
@EqualsAndHashCode(callSuper = true)
public class BulletinDetailDTO extends BulletinDTO {

    private static final long serialVersionUID = 1L;

    /**
     * 摘要
     */
    @ApiModelProperty(value = "摘要")
    private String summary;

    /**
     * 公告内容
     */
    @ApiModelProperty(value = "公告内容")
    private String content;

    /**
     * 关联债券
     */
    @ApiModelProperty(value = "关联债券")
    private String referBond;

    /**
     * 债券code
     */
    @ApiModelProperty(value = "债券code")
    private String bondCode;
    /**
     * 债券TYPE
     */
    @ApiModelProperty(value = "债券TYPE")
    private String bondType;
    /**
     * 债券ID
     */
    @ApiModelProperty(value = "债券ID")
    private String bondId;
    /**
     * 发行人id
     */
    @ApiModelProperty(value = "发行人id")
    private String mainBody;
    /**
     * 发行人详细信息
     */
    @ApiModelProperty(value = "发行人详细信息")
    private String mainBodyDetail;
    /**
     * 关联发行人id
     */
    @ApiModelProperty(value = "关联发行人id")
    private String mentionCom;
    /**
     * 关联企业
     */
    @ApiModelProperty(value = "关联发行人详细信息")
    private List<Map<String, Object>> mentionComDetail;

    /**
     * 关联公告
     */
    @ApiModelProperty(value = "关联舆情")
    private List<BulletinDTO> refBulletins;

}