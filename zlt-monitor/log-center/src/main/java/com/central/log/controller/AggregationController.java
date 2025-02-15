package com.central.log.controller;

import com.central.search.client.service.IQueryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.io.IOException;
import java.util.Map;

/**
 * 访问统计
 *
 * @author zlt
 * @date 2019/5/8
 */
@RestController
public class AggregationController {
    @Autowired
    private IQueryService queryService;

    /**
     * 访问统计
     */
    @GetMapping(value = "/requestStat")
    public Map<String, Object> requestStatAgg() throws IOException {
        return queryService.requestStatAgg("point-log-*", "request-statistics");
    }
}
