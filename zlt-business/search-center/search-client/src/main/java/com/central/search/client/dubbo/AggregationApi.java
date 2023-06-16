package com.central.search.client.dubbo;

import java.io.IOException;
import java.util.Map;

/**
 * @author Gerrit
 * @since 2023/6/16 10:04:16
 */
public interface AggregationApi {

    /**
     * 查询文档列表
     *
     * @param indexName 索引名
     * @param routing   es的路由
     */
    Map<String, Object> requestStatAgg(String indexName, String routing) throws IOException;
}
