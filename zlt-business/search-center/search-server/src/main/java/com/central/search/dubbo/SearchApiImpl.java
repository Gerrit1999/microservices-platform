package com.central.search.dubbo;

import com.central.common.model.PageResult;
import com.central.search.client.dubbo.SearchApi;
import com.central.search.model.SearchDto;
import com.central.search.service.ISearchService;
import com.fasterxml.jackson.databind.JsonNode;
import org.apache.dubbo.config.annotation.DubboService;

import javax.annotation.Resource;
import java.io.IOException;

/**
 * @author Gerrit
 * @since 2023/6/16 10:12:52
 */
@DubboService(filter = "consumerFilter")
public class SearchApiImpl implements SearchApi {

    @Resource
    private ISearchService searchService;

    @Override
    public PageResult<JsonNode> strQuery(String indexName, SearchDto searchDto) throws IOException {
        if (searchDto == null) {
            searchDto = new SearchDto();
        }
        return searchService.strQuery(indexName, searchDto);
    }
}
