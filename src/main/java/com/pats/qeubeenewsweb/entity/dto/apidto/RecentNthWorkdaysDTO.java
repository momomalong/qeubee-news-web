package com.pats.qeubeenewsweb.entity.dto.apidto;

import com.alibaba.fastjson.annotation.JSONField;
import lombok.Data;

/**
 * api请求返回工作日
 *
 * @author :mqt
 * @version :1.0.0
 * @since :2020.10.20
 */
@Data
public class RecentNthWorkdaysDTO {

    /**
     * 工作日
     */
    @JSONField(name = "recent_Nth_workday")
    private String recentNthWorkday;
}
