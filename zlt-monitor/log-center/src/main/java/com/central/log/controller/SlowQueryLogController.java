package com.central.log.controller;

import com.central.common.model.PageResult;
import com.central.search.client.service.IQueryService;
import com.central.search.model.SearchDto;
import com.fasterxml.jackson.databind.JsonNode;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.io.IOException;

/**
 * 慢查询日志
 *
 * @author zlt
 */
@RestController
public class SlowQueryLogController {
    @Autowired
    private IQueryService queryService;

    /**
     * 慢sql日志全文搜索列表
     */
    @GetMapping(value = "/slowQueryLog")
    public PageResult<JsonNode> getPage(SearchDto searchDto) throws IOException {
        searchDto.setIsHighlighter(true);
        searchDto.setSortCol("timestamp");
        return queryService.strQuery("mysql-slowlog-*", searchDto);
    }
}
