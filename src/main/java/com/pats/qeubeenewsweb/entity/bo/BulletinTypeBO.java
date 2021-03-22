package com.pats.qeubeenewsweb.entity.bo;

import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

import java.io.Serializable;

/**
 * @author Hzy
 * @version 1.0.0
 * @since 2021/2/26
 */
@Data
public class BulletinTypeBO implements Serializable {

    private static final long serialVersionUID = 1L;

    /**
     * id
     */
    @ApiModelProperty("id")
    private Integer id;

    /**
     * 类型名称
     */
    @ApiModelProperty("类型名称")
    private String name;
}
