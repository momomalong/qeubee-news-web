package com.pats.qeubeenewsweb.entity.dto.bulletin;

import com.pats.qeubeenewsweb.entity.bo.NewsSpBulletinBondBO;
import io.swagger.annotations.ApiModelProperty;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.time.LocalDateTime;
import java.util.List;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class BulletinDetailSpDTO {

    private Integer id;

    @ApiModelProperty(value = "标题")
    private String title;

    @ApiModelProperty(value = "文件名称")
    private String fileName;

    @ApiModelProperty(value = "解析的HTML")
    private String path;

    @ApiModelProperty(value = "原始下载链接")
    private String url;

    @ApiModelProperty(value = "公告涉及债券")
    private String bond;

    @ApiModelProperty(value = "原文ID")
    private String newsId;

    @ApiModelProperty(value = "合规性    0: 不合规 1: 合规     默认: 1: 合规")
    private Integer compliance;

    @ApiModelProperty(value = "新增时间")
    private LocalDateTime createTime;

    @ApiModelProperty(value = "修改时间")
    private LocalDateTime updateTime;

    @ApiModelProperty(value = "文件id")
    private String fileId;

    @ApiModelProperty(value = "文件上传html地址")
    private String uploadFileId;

    @ApiModelProperty(value = "资源")
    private String source;

    @ApiModelProperty(value = "内容")
    private String content;

    @ApiModelProperty(value = "机构code")
    private String institutionCode;

    @ApiModelProperty(value = "公告ID")
    private String bulletinId;

    @ApiModelProperty(value = "相关债券")
    private List<NewsSpBulletinBondBO> bonds;

    @ApiModelProperty(value = "发行人")
    private String issuerName;

    @ApiModelProperty(value = "公告类型")
    private String cateCode2;
}
