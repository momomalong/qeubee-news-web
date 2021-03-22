package com.pats.qeubeenewsweb.entity.dto.apidto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;

/**
 * @author mqt
 * @version 1.0
 * @date 2021/1/27 11:48
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
public class RemainingDateDTO implements Serializable {
    private static final long serialVersionUID = 7468680704697784983L;
    private String bondKey;
    private String listedMarket;
    private String restMaturity;
}
