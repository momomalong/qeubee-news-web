package com.pats.qeubeenewsweb.entity.dto;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicReference;

/**
 * 风险标签初始化数据DTO
 *
 * @author Hzy
 * @version 1.0.0
 * @since 2021/1/8
 */
@ApiModel("风险标签初始化数据DTO")
@Data
public class EformDTO {

    /**
     * 存储标签结果集
     */
    @ApiModelProperty(value = "存储标签结果集")
    private final ConcurrentHashMap<String, String> map = new ConcurrentHashMap<>(128);

    /**
     * 存储code为null的name值,通过AtomicReference<String>原子类 保证变量的原子性
     */
    @ApiModelProperty(value = "存储code为null的name值")
    private final AtomicReference<String> codeName = new AtomicReference<>();
}
