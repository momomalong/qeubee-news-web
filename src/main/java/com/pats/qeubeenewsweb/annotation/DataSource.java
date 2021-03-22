package com.pats.qeubeenewsweb.annotation;

import java.lang.annotation.*;

/**
 * @author mqt
 * @version 1.0
 * @date 2020/12/2 16:44
 */
@Documented
@Retention(RetentionPolicy.RUNTIME)
@Target(value = {ElementType.METHOD})
public @interface DataSource {
    String dataSourceName() default "";
}
