package com.pats.qeubeenewsweb.entity.bo;

import com.pats.qeubeenews.common.dto.SysBaseDTO;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;

/**
 * @author : qintai.ma
 * @since : create in 2020/8/18 17:54
 * @version :1.0.0
 */
@Data
@ApiModel("标签类型详情类")
@AllArgsConstructor
@NoArgsConstructor
@EqualsAndHashCode(callSuper = true)
public class LabelTypeDetailBO extends SysBaseDTO {
	private static final long serialVersionUID = 1L;
	/**
	 * 标签类别
	 */
	@ApiModelProperty("标签所属范围 可选项：news: 舆情 bulletin：公告 null:")
	private String scope;

	/**
	 * 标签名称
	 */
	@ApiModelProperty(value = "标签名称", required = true)
	private String name;

	/**
	 * 标签类别归类
	 * 0: filter settings(筛选设置类标签) 1: 债市标签
	 */
	@ApiModelProperty(value = "标签类别归类 0: filter settings(筛选设置类标签) 1: 债市标签 ",required = true)
	private Integer classify;


}
