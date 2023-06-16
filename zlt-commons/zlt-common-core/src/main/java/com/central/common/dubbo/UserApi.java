package com.central.common.dubbo;

import com.central.common.model.LoginAppUser;
import com.central.common.model.SysRole;
import com.central.common.model.SysUser;

import java.util.List;

/**
 * @author Gerrit
 * @since 2023/5/8 10:17
 */
public interface UserApi {

    /**
     * dubbo rpc访问远程/users/{username}接口
     * 查询用户实体对象SysUser
     *
     * @param username
     * @return
     */
    SysUser selectByUsername(String username);

    /**
     * dubbo rpc访问远程/users-anon/login接口
     *
     * @param username
     * @return
     */
    LoginAppUser findByUsername(String username);

    /**
     * 通过手机号查询用户、角色信息
     *
     * @param mobile 手机号
     */
    LoginAppUser findByMobile(String mobile);

    /**
     * 根据OpenId查询用户信息
     *
     * @param openId openId
     */
    LoginAppUser findByOpenId(String openId);


    /**
     * 获取带角色的用户信息
     *
     * @param username
     * @return
     */
    SysUser selectRoleUser(String username);

    /**
     * 获取用户的角色
     *
     * @param
     * @return
     */
    List<SysRole> findRolesByUserId(Long id);
}
