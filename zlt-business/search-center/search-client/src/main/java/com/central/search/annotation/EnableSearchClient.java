package com.central.search.annotation;

import com.central.search.client.service.impl.QueryServiceImpl;
import org.springframework.context.annotation.Import;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

/**
 * 控制是否加载搜索中心客户端的Service
 *
 * @author zlt
 */
@Target(ElementType.TYPE)
@Retention(RetentionPolicy.RUNTIME)
@Import({QueryServiceImpl.class})
public @interface EnableSearchClient {

}
