package com.pats.qeubeenewsweb.entity.dto.label;

import com.pats.qeubeenews.common.dto.SysBaseDTO;
import com.pats.qeubeenewsweb.entity.HomeHotword;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;

import java.util.ArrayList;
import java.util.List;

/**
 * @author :qintai.ma
 * @version :1.0.0
 * @since :2020.08.19
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
@ApiModel("新建总体热词类")
@EqualsAndHashCode(callSuper = true)
public class HotWordInsertDTO extends SysBaseDTO {
    private static final long serialVersionUID = 1L;
    /**
     * 热词id列表
     */
    @ApiModelProperty(value = "热词id列表", required = true)
    private List<LabelDetailDTO> hotWords;

    /**
     * "标签所属范围
     * 可选项：news: 舆情 bulletin：公告 null:全查"
     */
    @ApiModelProperty(value = "标签所属范围 可选项：news: 舆情 bulletin：公告 null:全查", required = true)
    private String scope;
    /**
     * 0:系统创建（默认）  1：用户创建
     */
    @ApiModelProperty("0:系统创建（默认）  1：用户创建")
    private Integer type;
    /**
     * 排序标号
     */
    @ApiModelProperty("排序标号")
    private Integer orderNum;
    /**
     * @return 转为对应domian实体类
     */
    public List<HomeHotword> ofHomeHotwordBuilder() {
        List<HomeHotword> list = new ArrayList<>();
        hotWords.forEach(e -> list.add(HomeHotword.builder().labelId(e.getId()).type(1).scope(scope).build()));
        return list;
    }
}
