package com.pats.qeubeenewsweb.entity.dto.bulletin;

import com.pats.qeubeenews.common.dto.SysBaseDTO;
import com.pats.qeubeenewsweb.entity.dto.label.LabelDTO;
import com.pats.qeubeenewsweb.enums.BondClassificationEnum;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
import lombok.EqualsAndHashCode;

import java.util.List;
import java.util.Map;

/**
 * <p>Title: BulletinDTO</p>
 * <p>Description: 公告返回类型</p>
 *
 * @author :wenjie.pei
 * @version :1.0.0
 * @since :2020.08.17
 */
@ApiModel(value = "公告对象")
@Data
@EqualsAndHashCode(callSuper = true)
public class BulletinDTO extends SysBaseDTO {

	private static final long serialVersionUID = 3656285168693707625L;

	/**
	 * 公告标题
	 */
	@ApiModelProperty(value = "公告标题")
	private String title;


	/**
	 * 舆情涉及债券类型
	 */
	@ApiModelProperty(value = "舆情涉及债券code")
	private String bondCode;

	/**
	 * 舆情涉及债券类型
	 */
	@ApiModelProperty(value = "舆情涉及债券类型")
	private String bondType;
	/**
	 * 债券类型翻译好的集合
	 */
	@ApiModelProperty(value = "债券类型翻译好的集合")
	private List<BondClassificationEnum.BondClassification> bondTypeList;

	/**
	 * 舆情涉及债券类型
	 */
	@ApiModelProperty(value = "舆情涉及债券id")
	private String bondId;

	/**
	 * 新闻来源
	 */
	@ApiModelProperty(value = "新闻来源")
	private String source;

	/**
	 * 发布日期
	 */
	@ApiModelProperty(value = "发布时间")
	private String publishTime;

	/**
	 * 涉及主体
	 */
	@ApiModelProperty(value = "涉及主体")
	private String mainBody;
	/**
	 * 涉及主体
	 */
	@ApiModelProperty(value = "涉及主体")
	private String mainBodyDetail;

	/**
	 * 涉及债券
	 */
	@ApiModelProperty(value = "涉及证券")
	private String referBond;

	/**
	 * 提及企业
	 */
	@ApiModelProperty(value = "提及企业")
	private String mentionCom;
	/**
	 * 提及企业
	 */
	@ApiModelProperty(value = "提及企业")
	private List<Map<String, Object>> mentionComDetail;
	/**
	 * 标签列表
	 */
	@ApiModelProperty(value = "标签列表")
	private List<LabelDTO> labels;

	/**
	 * 作者
	 */
	@ApiModelProperty(value = "作者")
	private String author;

	/**
	 * 合规性
	 */
	@ApiModelProperty(value = "合规性", example = "1")
	private Integer compliance;
}