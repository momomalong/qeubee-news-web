package com.pats.qeubeenewsweb.entity.dto.apidto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.validation.constraints.NotNull;
import java.io.Serializable;

/**
 * @author mqt
 * @version 1.0
 * @date 2021/1/26 15:37
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
public class ApiRefreshDTO implements Serializable {

    private static final long serialVersionUID = 5291329822670647850L;
    @NotNull(message = "")
    private Boolean refresh;
    private String apiName;
    private String dataSourceId;


}
