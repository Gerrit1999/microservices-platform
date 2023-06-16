package com.central.common.dubbo;

import com.alibaba.fastjson2.JSON;
import lombok.extern.slf4j.Slf4j;
import org.apache.dubbo.common.constants.CommonConstants;
import org.apache.dubbo.common.extension.Activate;
import org.apache.dubbo.rpc.Filter;
import org.apache.dubbo.rpc.Invocation;
import org.apache.dubbo.rpc.Invoker;
import org.apache.dubbo.rpc.Result;
import org.apache.dubbo.rpc.RpcException;

/**
 * @author Gerrit
 * @since 2023/6/15 14:43:24
 */
@Slf4j
@Activate(group = CommonConstants.CONSUMER)
public class ConsumerFilter implements Filter, Filter.Listener {
    @Override
    public Result invoke(Invoker<?> invoker, Invocation invocation) throws RpcException {
        if (log.isDebugEnabled()) {
            log.debug("[ConsumerFilter invoke] service={}, method={}, args={}", invocation.getServiceName(), invocation.getMethodName(), JSON.toJSONString(invocation.getArguments()));
        }
        return invoker.invoke(invocation);
    }

    @Override
    public void onResponse(Result appResponse, Invoker<?> invoker, Invocation invocation) {
    }

    @Override
    public void onError(Throwable t, Invoker<?> invoker, Invocation invocation) {
    }
}
