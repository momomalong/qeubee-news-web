package com.pats.qeubeenewsweb.entity.dto.hotword;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;

/**
 * @author :qintai.ma
 * @version :1.0.0
 * @since :2020.08.19
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
@ApiModel("推送热词更新日志类")
public class FetchHotWordDTO {
	/**
	 * 热词列表
	 */
	@ApiModelProperty(value = "热词列表")
	private List<HotWordDetailDTO> hotWords;

	/**
	 * 类别
	 */
	@ApiModelProperty(value = "类别")
	private String type;

	/**
	 * 热词绑定
	 */
	@ApiModelProperty(value = "热词绑定")
	private String bind;

	/**
	 * 所属新闻类别
	 */
	@ApiModelProperty(value = "所属新闻类别")
	private String scope;
}
