package com.pats.qeubeenewsweb.config;

import org.springframework.boot.actuate.autoconfigure.security.servlet.EndpointRequest;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

/**
 * @author mqt
 * @version 1.0
 * @date 2020/12/31 10:57
 */
@Configuration
@EnableWebSecurity
public class ActuatorSecurityConfig extends WebSecurityConfigurerAdapter {


    private static final String ROOT_NAME = "admin";
    private static final String ROOT_PASS = "Welcome1";
    private static final String ROOT_ROLE = "root";

    /**
     * 配置拦截规则
     *
     * @param http 配置类
     * @throws Exception 异常
     */
    @Override
    protected void configure(HttpSecurity http) throws Exception {
        http
            .csrf().disable()
            .authorizeRequests()
            .requestMatchers(EndpointRequest.toAnyEndpoint()).hasRole(ROOT_ROLE)
            .anyRequest().permitAll()
            .and()
            .httpBasic();
    }

    /**
     * 配置认证用户信息和权限
     *
     * @param auth 权限配置
     */
    @Override
    protected void configure(AuthenticationManagerBuilder auth) throws Exception {
        auth.inMemoryAuthentication()
            .passwordEncoder(new BCryptPasswordEncoder())
            .withUser(ROOT_NAME)
            .password(new BCryptPasswordEncoder().encode(ROOT_PASS))
            .roles(ROOT_ROLE);
    }
}

