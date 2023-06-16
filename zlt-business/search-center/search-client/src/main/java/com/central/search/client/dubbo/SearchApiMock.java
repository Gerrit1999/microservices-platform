package com.central.search.client.dubbo;

import com.central.common.model.PageResult;
import com.central.search.model.SearchDto;
import com.fasterxml.jackson.databind.JsonNode;

/**
 * @author Gerrit
 * @since 2023/6/16 10:12:13
 */
public class SearchApiMock implements SearchApi {

    @Override
    public PageResult<JsonNode> strQuery(String indexName, SearchDto searchDto) {
        return new PageResult<>();
    }
}
