package com.central.search.client.dubbo;

import com.central.common.model.PageResult;
import com.central.search.model.SearchDto;
import com.fasterxml.jackson.databind.JsonNode;

import java.io.IOException;

/**
 * @author Gerrit
 * @since 2023/6/16 10:11:35
 */
public interface SearchApi {

    /**
     * 查询文档列表
     *
     * @param indexName 索引名
     * @param searchDto 搜索Dto
     */
    PageResult<JsonNode> strQuery(String indexName, SearchDto searchDto) throws IOException;
}
