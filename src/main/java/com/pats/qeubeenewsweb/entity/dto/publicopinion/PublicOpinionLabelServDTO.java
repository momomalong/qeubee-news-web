package com.pats.qeubeenewsweb.entity.dto.publicopinion;

import lombok.Data;

import java.io.Serializable;

/**
 * <p>Title: PublicOpinionLabel</p>
 * <p>Description: 舆情标签对应表</p>
 * 
 * @author :wenjie.pei
 * @since  :2020.08.20
 * @version :1.0.0
 */
@Data
public class PublicOpinionLabelServDTO implements Serializable {

    private static final long serialVersionUID = 1L;
    /**
     * id
     */
    private Integer id;

    /**
     * 标签id
     */
    private Integer labelId;

}