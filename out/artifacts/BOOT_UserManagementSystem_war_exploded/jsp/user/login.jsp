<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<% String path=request.getContextPath()+"/"; 
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>登录界面</title>
</head>
<body>
<s:fielderror cssStyle="color:red"></s:fielderror>
<font color="red"><s:property value="msg"/></font><br>
<form method="post" action="<%=basePath%>/user/login.action">
<table>
<tr><th colspan="2">用户登录</th></tr>
<tr><td align="right">用户名：</td>
	<td><input type="text" name="user.usercode" value="${user.usercode}"/></td></tr>
<tr><td align="right">密码：</td>
	<td><input type="password" name="user.userpassword"/></td></tr>
<tr><td align="left"><input type="submit" value="登录"/></td>
	<td>未经注册者，请先注册，单击<a href="<%=path%>/jsp/user/register.jsp">注册</a></td></tr>
</table>
</form>
</body>
</html>