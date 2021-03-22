package com.pats.qeubeenewsweb.entity.bo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;
import java.time.LocalDateTime;

/**
 * @author : qintai.ma
 * @since : create in 2020/8/26 16:14
 * @version :1.0.0
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
public class RefBulletinsBO implements Serializable {

	private static final long serialVersionUID = 1L;

	private Integer id;
	private String title;
	private LocalDateTime publishTime;
}
