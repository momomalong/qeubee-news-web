package com.pats.qeubeenewsweb.config;

import com.pats.qeubeenewsweb.entity.dto.EformDTO;
import com.pats.qeubeenewsweb.service.ISpiderFileCategoryService;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

/**
 * 无明确分类综合配置类
 *
 * @author Hzy
 * @version 1.0.0
 * @since 2021/1/8
 */
@Configuration
public class ComplexBeanConfig {

    /**
     * 初始化时加载risk数据
     *
     * @param spiderFileCategoryService risk service 接口类
     * @return EformDTO对象
     */
    @Bean
    public EformDTO eformDTO(ISpiderFileCategoryService spiderFileCategoryService) {
        return spiderFileCategoryService.findName();
    }
}
