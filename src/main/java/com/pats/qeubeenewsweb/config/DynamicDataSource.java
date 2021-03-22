package com.pats.qeubeenewsweb.config;

import org.springframework.jdbc.datasource.lookup.AbstractRoutingDataSource;

/**
 * 切换数据源
 *
 * @author mqt
 * @version 1.0
 * @date 2020/12/2 16:15
 */
public class DynamicDataSource extends AbstractRoutingDataSource {

    @Override
    protected Object determineCurrentLookupKey() {
        return DataSourceRoutingKeyHolder.getRoutingKey();
    }


}
