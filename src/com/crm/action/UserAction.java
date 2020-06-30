package com.crm.action;


import com.crm.dao.user.UserDao;
import com.crm.entity.sysuser.SysUserEntity;


import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;


@ParentPackage("struts-default")
@Namespace(value="/user")
public class UserAction extends ActionSupport {
	/**
	 * 用户Action 
	 */
	private static final long serialVersionUID = 1L;
	private SysUserEntity user;
	private String re_password;
	private String msg;
	private UserDao userDao =new UserDao();
	
	@SuppressWarnings("unused")
	@Action(value="login",
			results= {
					@Result(name="success",location="/jsp/user/login_success.jsp",type="dispatcher"),
					@Result(name="failure",location="/jsp/user/login.jsp",type=
							"dispatcher")
			})
	public String userLogin() throws Exception{
		String forward =null;
		SysUserEntity user2=userDao.findByNameAndPassword(user);
		if(user2!=null) {
			forward="success";
			user.setUserName(user2.getUserName());
		}else {
			msg="用户不存在或密码不正确，登录失败，请重新登录或注册！";
			forward="failure";
		}

		return forward;
	}
	
	@Action(value="register",
			results= {
					@Result(name="success",location="/jsp/user" +
							"/register_success.jsp",type="dispatcher"),
					@Result(name="input",location="/jsp/user/register.jsp",type=
							"dispatcher"),
					@Result(name="error",location="/jsp/user/register.jsp",type=
							"dispatcher")
			})
	public String userRegister() throws Exception{
		String forward=null;
		int flag=0;
		SysUserEntity user2=(userDao.findByNameAndPassword(user));
		if(user2!=null&&(user2.getUserCode().trim()).equals((user.getUserCode()).trim())){
			msg="该用户名已经存在，请重新注册！";
			forward="error";
		}else {
			flag=userDao.insert(user);
			if(flag==1) {
				forward="success";
			}else {
				msg="数据库写错误！";
				forward="error";
			}
		}
		return forward;
	}
	
	public SysUserEntity getUser() {
		return user;
	}

	public void setUser(SysUserEntity user) {
		this.user = user;
	}

	public String getRe_password() {
		return re_password;
	}

	public void setRe_password(String re_password) {
		this.re_password = re_password;
	}
	public String getMsg() {
		return msg;
	}

	public void setMsg(String msg) {
		this.msg = msg;
	}
	
}
