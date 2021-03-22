package com.pats.qeubeenewsweb.gateway.model;

import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.util.CollectionUtils;

import java.util.Collection;

/**
 * 网关过滤条件， 属性名必须是keys sourceIds Created by yinghong.xu on 2019/4/28
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
public class RedisFilter {

	/**
	 * 订阅过滤条件1
	 */
	@JsonProperty("keys")
	public Collection<String> firstFilterKeys;

	/**
	 * 订阅过滤条件2
	 */
	@JsonProperty("sourceIds")
	public Collection<String> secondFilterKeys;

	public boolean compare(Object o) {
		if (this == o)
			return true;
		if (o == null || getClass() != o.getClass())
			return false;
		RedisFilter that = (RedisFilter) o;
		if (CollectionUtils.isEmpty(that.firstFilterKeys)) {
			if (!CollectionUtils.isEmpty(firstFilterKeys)) {
				return false;
			}
		}
		else if (CollectionUtils.isEmpty(firstFilterKeys)
				|| !that.firstFilterKeys.equals(firstFilterKeys)) {
			return false;
		}

		if (CollectionUtils.isEmpty(that.secondFilterKeys)) {
			if (!CollectionUtils.isEmpty(secondFilterKeys)) {
				return false;
			}
		}
		else if (CollectionUtils.isEmpty(secondFilterKeys)
				|| !that.secondFilterKeys.equals(secondFilterKeys)) {
			return false;
		}
		return true;
	}

}
