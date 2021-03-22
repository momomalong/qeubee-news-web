package com.pats.qeubeenewsweb.entity;

import lombok.Data;

import javax.validation.constraints.NotBlank;

/**
 * 综合功能调用实体类
 *
 * @author Hzy
 * @version 1.0.0
 * @since 2021/2/3
 */
@Data
public class Base {
    @NotBlank()
    private String className;
    @NotBlank
    private String methodName;
    /**
     * key: 形参名称
     * value: 参数值
     */
    private Object[] parameters;
}
