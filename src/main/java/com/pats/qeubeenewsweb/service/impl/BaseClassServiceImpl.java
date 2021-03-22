package com.pats.qeubeenewsweb.service.impl;

import com.alibaba.fastjson.JSON;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.pats.qeubeenewsweb.config.SpringContext;
import com.pats.qeubeenewsweb.entity.Base;
import com.pats.qeubeenewsweb.service.BaseClassService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/**
 * 综合功能服务类
 *
 * @author Hzy
 * @version 1.0.0
 * @since 2021/2/3
 */
@Service
@Slf4j
public class BaseClassServiceImpl implements BaseClassService {

    @Override
    public Object execute(Base base) {
        try {
            //通过bean名称获取bean
            Object bean = SpringContext.getBean(base.getClassName());
            //获取对象的类对象
            Class<?> aClass = bean.getClass();
            //获取方法的参数集
            Object[] parameters = base.getParameters();
            //获取调用的方法名
            String methodName = base.getMethodName();
            //获取指定类中的所有方法
            Method[] methods = aClass.getMethods();
            for (Method method : methods) {
                //如果当前方法与传入的方法名不相符，则跳过当前循环
                if (!methodName.equals(method.getName())) {
                    continue;
                }
                //空参时调用
                if(parameters == null){
                    return method.invoke(bean);
                }
                //获取当前方法的参数个数
                int parameterCount = method.getParameterCount();
                //当前方法的参数个数 不等于传入的参数集length则跳过当前循环
                if (parameterCount != parameters.length) {
                    continue;
                }
                //获取当前方法参数类型
                Class<?>[] parameterTypes = method.getParameterTypes();
                //修改object参数数组中的参数类型
                ObjectMapper objectMapper = new ObjectMapper();
                for (int i = 0; i < parameters.length; i++) {
                    parameters[i] = objectMapper.convertValue(parameters[i], parameterTypes[i]);
                }
                //通过反射的方式，调用指定方法，传入相应的参数
                return method.invoke(bean, parameters);
            }
            return "没有指定方法或参数个数不同";
        } catch (IllegalAccessException e) {
            log.error("invoke执行异常 {}", JSON.toJSONString(e.getMessage()));
            return "invoke执行异常";
        } catch (InvocationTargetException e) {
            log.error("bean获取失败或调用异常 {}", JSON.toJSONString(e.getMessage()));
            return "bean获取失败或调用异常";
        }
    }
}
