package com.crm.service.user;

import com.crm.entity.sysuser.SysUserEntity;

public interface IUserService {
    public abstract SysUserEntity findByname(SysUserEntity user);
    int insert(SysUserEntity sysUserEntity);

}
