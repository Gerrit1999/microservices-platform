package com.central.search.controller;

import com.central.search.service.IAggregationService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.io.IOException;
import java.util.Map;

/**
 * 聚合统计
 *
 * @author zlt
 * @date 2019/5/7
 */
@Slf4j
@RestController
@RequestMapping("/agg")
public class AggregationController {
    private final IAggregationService aggregationService;

    public AggregationController(IAggregationService aggregationService) {
        this.aggregationService = aggregationService;
    }

    /**
     * 访问统计聚合查询
     * @param indexName 索引名
     * @param routing es的路由
     */
    @GetMapping("/requestStat/{indexName}/{routing}")
    public Map<String, Object> requestStatAgg(@PathVariable String indexName, @PathVariable String routing) throws IOException {
        return aggregationService.requestStatAgg(indexName, routing);
    }
}