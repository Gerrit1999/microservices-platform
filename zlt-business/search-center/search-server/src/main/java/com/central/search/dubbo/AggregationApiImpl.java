package com.central.search.dubbo;

import com.central.search.client.dubbo.AggregationApi;
import com.central.search.service.IAggregationService;
import org.apache.dubbo.config.annotation.DubboService;

import javax.annotation.Resource;
import java.io.IOException;
import java.util.Map;

/**
 * @author Gerrit
 * @since 2023/6/16 10:07:38
 */
@DubboService(filter = "consumerFilter")
public class AggregationApiImpl implements AggregationApi {

    @Resource
    private IAggregationService aggregationService;

    @Override
    public Map<String, Object> requestStatAgg(String indexName, String routing) throws IOException {
        return aggregationService.requestStatAgg(indexName, routing);
    }
}
