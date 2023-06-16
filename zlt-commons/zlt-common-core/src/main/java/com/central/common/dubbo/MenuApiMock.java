package com.central.common.dubbo;

import com.central.common.model.SysMenu;

import java.util.Collections;
import java.util.List;

/**
 * @author Gerrit
 * @since 2023/6/16 10:47:25
 */
public class MenuApiMock implements MenuApi {

    @Override
    public List<SysMenu> findByRoleCodes(String roleCodes) {
        return Collections.emptyList();
    }
}
