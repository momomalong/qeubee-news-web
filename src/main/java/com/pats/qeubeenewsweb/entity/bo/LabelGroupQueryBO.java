package com.pats.qeubeenewsweb.entity.bo;

import java.io.Serializable;

import lombok.Data;

/**
 * <p>Title: LabelGroupQueryDTO</p>
 * <p>Description: 标签组查询DTO</p>
 * 
 * @author :wenjie.pei
 * @since  :2020.10.23
 * @version :1.0.0
 */
@Data
public class LabelGroupQueryBO implements Serializable {

    private static final long serialVersionUID = -562484937255044751L;

    /**
     * 新闻类别
     */
    private String scope;

    /**
     * 标签类别id
     */
    private Integer nameId;

    /**
     * 标签类别名称
     */
    private String name;

    /**
     * 标签名称
     */
    private String labelName;
    
    /**
     * 类别是否显示
     */
    private Integer classify;

    /**
     * 标签是否显示
     */
    private Integer labelClassify;
    
}
