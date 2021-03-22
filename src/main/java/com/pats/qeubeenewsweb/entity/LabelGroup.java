package com.pats.qeubeenewsweb.entity;

import lombok.Data;

/**
 * <p>Title: LabelGroup</p>
 * 
 * @author :wenjie.pei
 * @since  :2020.10.23
 * @version :1.0.0
 */
@Data
public class LabelGroup {

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
     * 类别是否显示
     */
    private Integer classify;

    /**
     * 标签是否显示
     */
    private Integer labelClassify;

    /**
     * 标签组(格式：标签名称_id_是否显示)
     */
    private String tag;
    
}
