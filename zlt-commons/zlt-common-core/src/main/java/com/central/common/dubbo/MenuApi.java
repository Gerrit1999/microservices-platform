package com.central.common.dubbo;

import com.central.common.model.SysMenu;

import java.util.List;

/**
 * @author Gerrit
 * @since 2023/6/16 10:46:18
 */
public interface MenuApi {

    /**
     * 角色菜单列表
     *
     * @param roleCodes
     */
    List<SysMenu> findByRoleCodes(String roleCodes);
}
