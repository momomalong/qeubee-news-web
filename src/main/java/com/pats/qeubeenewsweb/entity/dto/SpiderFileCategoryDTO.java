package com.pats.qeubeenewsweb.entity.dto;

import io.swagger.annotations.ApiModel;
import lombok.Data;

/**
 * 获取全部公告类型DTO
 *
 * @author Hzy
 * @version 1.0.0
 * @since 2021/3/10
 */
@ApiModel("获取全部公告类型DTO")
@Data
public class SpiderFileCategoryDTO {

    private String id;
    private String pid;
    private String code;
    private String name;
    private String type;

}
