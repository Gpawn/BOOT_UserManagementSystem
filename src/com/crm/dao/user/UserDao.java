package com.crm.dao.user;

import com.crm.dao.DaoHibernate;
import com.crm.entity.sysuser.SysUserEntity;

public class UserDao extends DaoHibernate<SysUserEntity> {
	public SysUserEntity findByNameAndPassword(SysUserEntity user) {
		String hql="from SysUserEntity u where u.userCode=?0 and u" +
				".userPassword=?1";
		String param[]= {user.getUserCode(),user.getUserPassword()};

		SysUserEntity user1=this.findOne(hql,param);
		return user1;
	}
	public SysUserEntity findByName(SysUserEntity user) {
		String hql="from CustomerEntity u where u.user_Name=?0";
		String param[]= {user.getUserCode()};
		SysUserEntity user1=this.findOne(hql, param);
		return user1;
	}
	public int updatePassword(SysUserEntity user,String newPassword) {
		SysUserEntity user1=this.findByNameAndPassword(user);
		user1.setUserPassword(newPassword);
		return this.update(user1);
	}
}
