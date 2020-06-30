package com.crm.service.user;

import com.crm.dao.user.UserDao;
import com.crm.entity.sysuser.SysUserEntity;

import javax.annotation.Resource;

public class UserService implements IUserService {
    @Resource
    private UserDao userDao;
    public UserDao getUserDao(){
        return userDao;
    }

    public void setUserDao(UserDao userDao) {
        this.userDao = userDao;
    }

    @Override
    public SysUserEntity findByname(SysUserEntity user) {
        return userDao.findByNameAndPassword(user);
    }

    @Override
    public int insert(SysUserEntity sysUserEntity) {
        return userDao.insert(sysUserEntity);
    }
}
