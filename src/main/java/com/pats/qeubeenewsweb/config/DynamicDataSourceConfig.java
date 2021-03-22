package com.pats.qeubeenewsweb.config;

import com.alibaba.druid.spring.boot.autoconfigure.DruidDataSourceBuilder;
import com.baomidou.mybatisplus.annotation.DbType;
import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.core.MybatisConfiguration;
import com.baomidou.mybatisplus.core.config.GlobalConfig;
import com.baomidou.mybatisplus.extension.plugins.MybatisPlusInterceptor;
import com.baomidou.mybatisplus.extension.plugins.inner.PaginationInnerInterceptor;
import com.baomidou.mybatisplus.extension.spring.MybatisSqlSessionFactoryBean;
import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.DependsOn;
import org.springframework.context.annotation.Primary;
import org.springframework.core.io.Resource;
import org.springframework.core.io.support.PathMatchingResourcePatternResolver;
import org.springframework.core.io.support.ResourcePatternResolver;
import org.springframework.transaction.annotation.EnableTransactionManagement;

import javax.sql.DataSource;
import java.util.HashMap;
import java.util.Map;

/**
 * @author mqt
 * @version 1.0
 * @date 2020/12/3 15:56
 */
@Configuration
@EnableTransactionManagement(order = 2)
@MapperScan("com.pats.qeubeenewsweb.mapper")
public class DynamicDataSourceConfig {

    @Bean("mozi")
    @ConfigurationProperties(prefix = "spring.datasource.druid.mozi")
    public DataSource moziDatasource() {
        return DruidDataSourceBuilder.create().build();
    }

    @Bean("eform")
    @ConfigurationProperties(prefix = "spring.datasource.druid.eform")
    public DataSource riskDatasource() {
        return DruidDataSourceBuilder.create().build();
    }

    @Bean("master")
    @Primary
    @ConfigurationProperties(prefix = "spring.datasource.druid")
    public DataSource masterDatasource() {
        return DruidDataSourceBuilder.create().build();
    }


    @Bean
    @DependsOn({"master", "mozi", "eform"})
    public DynamicDataSource dataSource(@Qualifier("mozi") DataSource moziDatasource,
                                        @Qualifier("eform") DataSource eformDatasource,
                                        @Qualifier("master") DataSource masterDatasource) {
        DynamicDataSource proxy = new DynamicDataSource();
        Map<Object, Object> targetDataSources = new HashMap<>(4);
        targetDataSources.put("mozi", moziDatasource);
        targetDataSources.put("eform", eformDatasource);
        targetDataSources.put("master", masterDatasource);
        proxy.setDefaultTargetDataSource(masterDatasource);
        proxy.setTargetDataSources(targetDataSources);
        proxy.afterPropertiesSet();
        return proxy;
    }

    /**
     * 分页插件配置
     *
     * @return 分页插件实例
     */
    @Bean
    public MybatisPlusInterceptor mybatisPlusInterceptor() {
        MybatisPlusInterceptor interceptor = new MybatisPlusInterceptor();
        interceptor.addInnerInterceptor(new PaginationInnerInterceptor(DbType.MYSQL));
        return interceptor;
    }

    @Bean
    @ConfigurationProperties("mybatis-plus")
    public SqlSessionFactory sqlSessionFactory(DynamicDataSource dynamicDataSource,
                                               MybatisPlusInterceptor mybatisPlusInterceptor) throws Exception {

        MybatisSqlSessionFactoryBean sqlSessionFactory = new MybatisSqlSessionFactoryBean();
        sqlSessionFactory.setDataSource(dynamicDataSource);
        ResourcePatternResolver resourceResolver = new PathMatchingResourcePatternResolver();
        Resource[] resources = resourceResolver.getResources("classpath:mapping/*.xml");
        sqlSessionFactory.setMapperLocations(resources);
        sqlSessionFactory.setTypeAliasesPackage("com.pats.qeubeenewsweb.entity");
        // configuration
        MybatisConfiguration configuration = new MybatisConfiguration();
        configuration.setCallSettersOnNulls(true);
        configuration.setLogImpl(org.apache.ibatis.logging.stdout.StdOutImpl.class);
        configuration.setMapUnderscoreToCamelCase(true);
        sqlSessionFactory.setConfiguration(configuration);
        //添加分页插件
        sqlSessionFactory.setPlugins(mybatisPlusInterceptor);
        GlobalConfig globalConfig = new GlobalConfig();
        // global-config
        GlobalConfig.DbConfig dbConfig = new GlobalConfig.DbConfig();
        dbConfig.setIdType(IdType.AUTO);
        globalConfig.setDbConfig(dbConfig);
        sqlSessionFactory.setGlobalConfig(globalConfig);
        return sqlSessionFactory.getObject();
    }
}
