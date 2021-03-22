package com.pats.qeubeenewsweb.entity.bo;

import com.pats.qeubeenewsweb.entity.dto.label.LabelDTO;
import lombok.Data;

import java.io.Serializable;
import java.time.LocalDateTime;
import java.util.List;

/**
 * @author : qintai.ma
 * @since : create in 2020/8/26 15:07L
 * @version :1.0.0
 */
@Data
public class BulletinPageBO implements Serializable {
    private static final long serialVersionUID = 1L;

    private Integer id;

    private String title;

    private LocalDateTime publishTime;

    private LocalDateTime createTime;

    private List<LabelDTO> labels;

    private Integer compliance;


}
