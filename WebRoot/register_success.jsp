<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<meta http-equiv="refresh" content="3; url=login.htm">
  <head>
    <base href="<%=basePath%>">
    <title>注册成功</title>
   </head>
  <body>
  <h1>恭喜您已注册成功,3秒后自动跳转。。。</h1>
  <hr>
  <h3>以下是我们为您自动生成的ID</h3>
  <hr>
  <h2>请牢记您的ID:
  <font color="red"><s:property value="user.id"/></font>
  </h2>
  </body> 
</html>
