package com.central.user.dubbo;

import cn.hutool.core.convert.Convert;
import com.central.common.constant.CommonConstant;
import com.central.common.dubbo.MenuApi;
import com.central.common.model.SysMenu;
import com.central.user.service.ISysMenuService;
import org.apache.commons.lang3.StringUtils;
import org.apache.dubbo.config.annotation.DubboService;

import javax.annotation.Resource;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

/**
 * @author Gerrit
 * @since 2023/6/16 10:50:22
 */
@DubboService(filter = "consumerFilter")
public class MenuApiImpl implements MenuApi {

    @Resource
    private ISysMenuService menuService;

    @Override
    public List<SysMenu> findByRoleCodes(String roleCodes) {
        List<SysMenu> result = null;
        if (StringUtils.isNotEmpty(roleCodes)) {
            Set<String> roleSet = (Set<String>) Convert.toCollection(HashSet.class, String.class, roleCodes);
            result = menuService.findByRoleCodes(roleSet, CommonConstant.PERMISSION);
        }
        return result;
    }
}
