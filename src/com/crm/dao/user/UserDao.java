package com.crm.dao.user;

import com.crm.dao.DaoHibernate;
import com.crm.entity.sysuser.SysUserEntity;

public class UserDao extends DaoHibernate<SysUserEntity> {
	public SysUserEntity findByNameAndPassword(SysUserEntity user) {
		String hql="from SysUserEntity u where u.userCode=?0 and u" +
				".userPassword=?1";
		System.out.println("==============================");
		System.out.println("\n userCode:"+user.getUserCode()+" user_password" +
				":"+user.getUserPassword()+"\n");
		System.out.println("==============================");
		String param[]= {user.getUserCode(),user.getUserPassword()};

		SysUserEntity user1=this.findOne(hql,param);
		return user1;
	}
	public SysUserEntity findByName(SysUserEntity user) {
		String hql="from User u where u.username=?0";
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
