package com.central.common.config;

import com.central.common.dubbo.UserApi;
import com.central.common.resolver.ClientArgumentResolver;
import com.central.common.resolver.TokenArgumentResolver;
import org.apache.dubbo.config.annotation.DubboReference;
import org.springframework.web.method.support.HandlerMethodArgumentResolver;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

import java.util.List;

/**
 * 默认SpringMVC拦截器
 *
 * @author zlt
 * @date 2019/8/5
 * <p>
 * Blog: https://zlt2000.gitee.io
 * Github: https://github.com/zlt2000
 */
public class DefaultWebMvcConfig implements WebMvcConfigurer {

    @DubboReference(mock = "true")
    private UserApi userApi;

    /**
     * Token参数解析
     *
     * @param argumentResolvers 解析类
     */
    @Override
    public void addArgumentResolvers(List<HandlerMethodArgumentResolver> argumentResolvers) {
        //注入用户信息
        argumentResolvers.add(new TokenArgumentResolver(userApi));
        //注入应用信息
        argumentResolvers.add(new ClientArgumentResolver());
    }
}
