<%@ page import="org.hibernate.Session" %>
<%@ page import="com.crm.utils.PageBean" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"
            + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
%>


<%
   	PageBean pageBean=(PageBean)request.getAttribute("pageBean");
    if (pageBean==null){
        System.out.println("==============list.jsp============");
        System.out.println("pagebean:"+pageBean);
        System.out.println("==============list.jsp============");
//        response.sendRedirect(basePath+"/cust/find?pageNo=1");

    }else{
        System.out.println("==============list.jsp============");
        System.out.println("pagebean NOt NULL:"+pageBean);
        System.out.println("==============list.jsp============");
    }

%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>名片浏览与查询</title>
    <script type="text/javascript" src="../js/jquery-3.5.1.min.js"></script>
    <script language="JavaScript" src="../js/customer.js"></script>

</head>
<body>
<h3 align="center">名片浏览与查询</h3>
<form action="<%=basePath%>/cust/find?pageNo=1" method="post">
    <div align="center">
        名片搜索: <input name="condition" type="text"/>
        <input type="submit" value="查询"/>
    </div>

    <br>
    <br>
    <s:form method="post" name="f2">
        <table align="center">
            <tr>
                <td><input type="button" value="添加" onclick="insert()"/></td>
                <td><input type="text" name="customer_test1"></td>
                <td><input type="text" name="customer_test2"></td>

            </tr>
        </table>

        <table width="70%" border="0" cellpadding="3" cellspacing="1"
               align="center">
            <tr bgcolor="#8899cc">
                <td>编号</td>
                <td>客户名称</td>
                <td>客户来源</td>
                <td>客户所属单位</td>
                <td>客户级别</td>
                <td>固定电话</td>
                <td>手机</td>
                <td>操作</td>
            </tr>
            <s:iterator var="cust" value="listCust" status="list">
                <s:if test="listCust==null">
                    <% System.out.println("listCust==null");%>
                </s:if>

                <tr>
                    <td><s:property value="#cust.custId"/></td>
                    <td><s:property value="#cust.custName"/></td>
                    <td><s:property value="#cust.custSource"/></td>
                    <td><s:property value="#cust.custIndustry"/></td>
                    <td><s:property value="#cust.custLevel"/></td>
                    <td><s:property value="#cust.custPhone"/></td>
                    <td><s:property value="#cust.custMobile"/></td>
                    <td><a href="<%=basePath%>cust/findupdate?id
							=${cust.custId}">修改</a>
                        <a href="javascript:deleteconfirm('${cust.custId}')">删除
                        </a></td>
                </tr>

            </s:iterator>

        </table>

    </s:form>
</form>
<%
    if (pageBean!=null){
%>
<a href=<%=basePath%>cust/find?pageNo=1 id="1"> 首页</a>
<a href=<%=basePath%>cust/find?pageNo=1 id="page_1"> 1</a>
<a href=<%=basePath%>cust/find?pageNo=11 id="page_2"> 2</a>
<%
    }
%>
</body>
</html>