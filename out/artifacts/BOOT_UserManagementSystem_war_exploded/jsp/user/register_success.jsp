<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% String path=request.getContextPath()+"/"; %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>注册成功！</title>
</head>
<body>
<h3>恭喜，${user.userrealname},你注册成了我们的管理系统柜！请点此</h3>
<a href="<%=path%>user/login.jsp">登录</a>
</body>
</html>