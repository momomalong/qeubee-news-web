package com.pats.qeubeenewsweb.entity.dto.operationshistory;

import com.pats.qeubeenews.common.dto.PageInfo;
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
@ApiModel("操作历史查询类")
@AllArgsConstructor
@NoArgsConstructor
@EqualsAndHashCode(callSuper = true)
public class OperationsHistoryQueryDTO extends PageInfo {

	private static final long serialVersionUID = 7130374277001822138L;

	/**
	 * 操作类型, 默认: null 可选项：热词、标签、合规、排行
	 */
	@ApiModelProperty("操作类型, 默认: null 可选项：热词、标签、合规、排行")
	private String operationType;


	/**
	 * 新闻类型, 默认：news 可选项：news、bulletin
	 */
	@ApiModelProperty("新闻类型, 默认：news 可选项：news、bulletin")
	private String scope;


}
