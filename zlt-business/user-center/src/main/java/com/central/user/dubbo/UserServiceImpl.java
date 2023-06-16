package com.central.user.dubbo;

import cn.hutool.core.util.ObjectUtil;
import com.central.common.dubbo.UserService;
import com.central.common.model.LoginAppUser;
import com.central.common.model.SysRole;
import com.central.common.model.SysUser;
import com.central.user.service.ISysUserService;
import org.apache.dubbo.config.annotation.DubboService;
import org.springframework.cache.annotation.Cacheable;

import javax.annotation.Resource;
import java.util.List;

/**
 * @author Gerrit
 * @since 2023/5/8 10:36
 */
@DubboService(filter = "consumerFilter")
public class UserServiceImpl implements UserService {

    @Resource
    private ISysUserService appUserService;

    @Override
    public SysUser selectByUsername(String username) {
        return appUserService.selectByUsername(username);
    }

    @Override
    public LoginAppUser findByUsername(String username) {
        return appUserService.findByUsername(username);
    }

    @Override
    public LoginAppUser findByMobile(String mobile) {
        return appUserService.findByMobile(mobile);
    }

    @Override
    public LoginAppUser findByOpenId(String openId) {
        return appUserService.findByOpenId(openId);
    }

    @Override
    @Cacheable(value = "userRoles", key = "#username")
    public SysUser selectRoleUser(String username) {
        SysUser sysUser = selectByUsername(username);
        if (ObjectUtil.isNotNull(sysUser)) {
            List<SysRole> roleList = findRolesByUserId(sysUser.getId());
            sysUser.setRoles(roleList);
        }
        return sysUser;
    }

    @Override
    public List<SysRole> findRolesByUserId(Long id) {
        return appUserService.findRolesByUserId(id);
    }
}
