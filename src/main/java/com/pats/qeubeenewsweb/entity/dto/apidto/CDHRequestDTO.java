package com.pats.qeubeenewsweb.entity.dto.apidto;

import com.alibaba.fastjson.annotation.JSONField;
import com.pats.qeubeenewsweb.enums.CHDApiNameAndDataSourceIdEnum;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Objects;

/**
 * CDH请求实体
 *
 * @author :qintai.ma
 * @version :1.0.0
 * @since :2020.9.10
 */
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class CDHRequestDTO implements Serializable {

    private static final long serialVersionUID = 1L;

    /**
     * ApiName： 一般对应表名
     * User/Password 认证用户(向CDH申请)
     * ApiVersion：N
     * StartPage: 查询页， begin 1
     * PageSize: 每页查询数量
     * Conditions： 查询条件（sql语句 where 后的条件）
     * Columns：指定列。 默认 *
     * ResultFormat: 返回数据格式化类型，csv, json。 默认json
     */
    @JSONField(name = "DataSourceId")
    private Integer dataSourceId = 100;
    @JSONField(name = "ApiName")
    private String apiName = "";
    @JSONField(name = "User")
    private String user = "QBNEWS";
    @JSONField(name = "Password")
    private String password = "000000";
    @JSONField(name = "ApiVersion")
    private String apiVersion = "N";
    @JSONField(name = "StartPage")
    private Integer startPage = 1;
    @JSONField(name = "PageSize")
    private Integer pageSize = 10;
    @JSONField(name = "Conditions")
    private String conditions = "";
    @JSONField(name = "Columns")
    private List<String> columns = new ArrayList<>();
    @JSONField(name = "ResultFormat")
    private String resultFormat = "json";

    public CDHRequestDTO(CHDApiNameAndDataSourceIdEnum apiName, String conditions, Integer startPage, Integer pageSize, String... columns) {
        this.apiName = apiName.getApiName();
        this.dataSourceId = apiName.getDataSourceId();
        this.conditions = conditions;
        this.startPage = startPage;
        this.pageSize = pageSize;
        if (Objects.nonNull(columns)) {
            this.columns = Arrays.asList(columns);
        }
    }

    public CDHRequestDTO(CHDApiNameAndDataSourceIdEnum apiName, String conditions, Integer pageSize) {
        this(apiName, conditions);
        this.pageSize = pageSize;
    }


    public CDHRequestDTO(CHDApiNameAndDataSourceIdEnum apiName, String conditions) {
        this.apiName = apiName.getApiName();
        this.dataSourceId = apiName.getDataSourceId();
        if (!"id in ('')".equals(conditions)) {
            this.conditions = conditions;
        }
    }

    public void setApi(CHDApiNameAndDataSourceIdEnum apiName, String conditions, Integer pageSize) {
        this.apiName = apiName.getApiName();
        this.dataSourceId = apiName.getDataSourceId();
        if (!"id in ('')".equals(conditions)) {
            this.conditions = conditions;
        }
        this.pageSize = pageSize;
    }
}
