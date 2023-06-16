package com.central.common.dubbo;

import com.central.common.model.LoginAppUser;
import com.central.common.model.SysRole;
import com.central.common.model.SysUser;
import lombok.extern.slf4j.Slf4j;

import java.util.Collections;
import java.util.List;

/**
 * @author Gerrit
 * @since 2023/5/10 15:59
 */
@Slf4j
public class UserApiMock implements UserApi {

    @Override
    public SysUser selectByUsername(String username) {
        return new SysUser();
    }

    @Override
    public LoginAppUser findByUsername(String username) {
        return new LoginAppUser();
    }

    @Override
    public LoginAppUser findByMobile(String mobile) {
        return new LoginAppUser();
    }

    @Override
    public LoginAppUser findByOpenId(String openId) {
        return new LoginAppUser();
    }

    /**
     * 获取带角色的用户信息
     *
     * @param username
     * @return
     */
    @Override
    public SysUser selectRoleUser(String username) {
        return new SysUser();
    }

    /**
     * 获取用户的角色
     *
     * @param id
     * @return
     */
    @Override
    public List<SysRole> findRolesByUserId(Long id) {
        return Collections.emptyList();
    }
}
