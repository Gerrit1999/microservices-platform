package com.central.log.controller;

import com.central.common.model.PageResult;
import com.central.search.client.service.IQueryService;
import com.central.search.model.SearchDto;
import com.fasterxml.jackson.databind.JsonNode;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * 审计日志
 *
 * @author zlt
 * @date 2020/2/4
 * <p>
 * Blog: https://zlt2000.gitee.io
 * Github: https://github.com/zlt2000
 */
@RestController
public class AuditLogController {
    private final IQueryService queryService;

    public AuditLogController(IQueryService queryService) {
        this.queryService = queryService;
    }

    /**
     * 审计日志全文搜索列表
     */
    @GetMapping(value = "/auditLog")
    public PageResult<JsonNode> getPage(SearchDto searchDto) {
        searchDto.setIsHighlighter(true);
        searchDto.setSortCol("timestamp");
        return queryService.strQuery("audit-log-*", searchDto);
    }
}
