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
    <title>ע��ɹ�</title>
   </head>
  <body>
  <h1>��ϲ����ע��ɹ�,3����Զ���ת������</h1>
  <hr>
  <h3>����������Ϊ���Զ����ɵ�ID</h3>
  <hr>
  <h2>���μ�����ID:
  <font color="red"><s:property value="user.id"/></font>
  </h2>
  </body> 
</html>
