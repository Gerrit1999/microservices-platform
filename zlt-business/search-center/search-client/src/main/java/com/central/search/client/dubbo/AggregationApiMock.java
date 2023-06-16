package com.central.search.client.dubbo;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

/**
 * @author Gerrit
 * @since 2023/6/16 10:05:43
 */
public class AggregationApiMock implements AggregationApi {
    @Override
    public Map<String, Object> requestStatAgg(String indexName, String routing) throws IOException {
        return new HashMap<>();
    }
}
