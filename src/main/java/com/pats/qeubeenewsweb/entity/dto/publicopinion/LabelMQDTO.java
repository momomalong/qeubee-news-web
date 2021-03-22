package com.pats.qeubeenewsweb.entity.dto.publicopinion;

import com.pats.qeubeenewsweb.enums.PoOrBtLabelEnum;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;

/**
 * py服务消费DTO
 *
 * @author mqt
 * @version 1.0
 * @date 2020/12/8 13:31
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
public class LabelMQDTO implements Serializable {

    private static final long serialVersionUID = 1L;
    private String id;
    private String title;
    private String summary;
    private String content;
    private PoOrBtLabelEnum type;

}
