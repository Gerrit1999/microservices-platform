package com.central.gateway.dubbo;

import com.central.common.dubbo.MenuApi;
import com.central.common.model.SysMenu;
import org.apache.dubbo.config.annotation.DubboReference;
import org.springframework.scheduling.annotation.Async;
import org.springframework.scheduling.annotation.AsyncResult;
import org.springframework.stereotype.Component;

import java.util.List;
import java.util.concurrent.Future;

/**
 * 异步Menu服务
 *
 * @author zlt
 * @version 1.0
 * @date 2021/8/8
 * <p>
 * Blog: https://zlt2000.gitee.io
 * Github: https://github.com/zlt2000
 */
@Component
public class AsyncMenuApi {

    @DubboReference(mock = "true")
    private MenuApi menuApi;

    @Async
    public Future<List<SysMenu>> findByRoleCodes(String roleCodes) {
        List<SysMenu> result = menuApi.findByRoleCodes(roleCodes);
        return new AsyncResult<>(result);
    }
}
