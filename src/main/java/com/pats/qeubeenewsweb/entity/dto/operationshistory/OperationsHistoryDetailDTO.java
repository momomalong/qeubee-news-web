package com.pats.qeubeenewsweb.entity.dto.operationshistory;

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
@ApiModel("操作历史查询类")
@AllArgsConstructor
@NoArgsConstructor
@EqualsAndHashCode(callSuper = true)
public class OperationsHistoryDetailDTO extends SysBaseDTO {

	private static final long serialVersionUID = -5746004254529097578L;

	/**
	 * 操作记录
	 */
	@ApiModelProperty("操作记录")
	private String record;

	/**
	 * 操作内容
	 */
	@ApiModelProperty("操作内容")
	private String operation;

	/**
	 * 操作员
	 */
	@ApiModelProperty("操作员")
	private String operator;

}
