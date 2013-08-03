<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <meta http-equiv="Content-Language" content="zh-cn">
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>系统管理</title>
<link href="style/styles.css" rel="STYLESHEET" type="text/css">
<SCRIPT src="images/myweb.js"></SCRIPT>
<SCRIPT language="JavaScript">
  function toModify(id)
  {
    document.forms[0].action = "policytype_modify.htm";
    document.forms[0].submit();
  }
  
  function deleteIt(id)
  {
    document.forms[0].action = "dutyAction.do?method=deleteDuty&id="+id;
    document.forms[0].submit();  
  }
  
  function myAlert(errorInfo)
  {
		alert(errorInfo+"，不能进行该操作!");
  }  
</SCRIPT>
</head>

<body class="body0">
	<div align="center">
	<table class="table_path">
		<tr>
			<td >您当前的位置：<a href="#"><span class="txtpath">日常办公</span></a> &gt; <a href="#"><span class="txtpath">政策法规</span></a> &gt; 政策法规类型列表</td>
		<td align="right" >
	      <script language=JavaScript>
										 today=new Date();
										 function initArray(){
										 this.length=initArray.arguments.length
										 for(var i=0;i<this.length;i++)
										 this[i+1]=initArray.arguments[i]  }
										 var d=new initArray(
											 " 星期日",
											 " 星期一",
											 " 星期二",
											 " 星期三",
											 " 星期四",
											 " 星期五",
											 " 星期六");
												document.write(
											 "",
											 today.getYear(),"年",
											 today.getMonth()+1,"月",
											 today.getDate(),"日 ",
											d[today.getDay()+1],
											 "" ); 
									</script></td>		
		</tr>
	
</table>
<form name="dutyForm" method="POST" action="dailywork/policytype_add.jsp">

      <table  cellSpacing=1 cellPadding=2 class="table1" id="table4">
          <tr>
            <th scope="col"><div align="center">类型名称</div></th>
            <th scope="col"><div align="center">操作</div></th>
          </tr>
          <s:iterator value="list">
          <tr class="tr_s" onmouseover="this.className='tr_o'" onmouseout="this.className='tr_s'">
            <td  nowrap><div align="center">${name}</div></td>
            <td  nowrap><div align="center">
            	<s:url id="get" action="getType">
                	<s:param name="id">${id}</s:param>
       </s:url>	
       
       <s:a href="%{get}"><img src="images/btn_edit.gif" style="cursor: hand;" alt='修改'"></s:a>
       
            <s:url id="del" action="delType">
	<s:param name="id">${id}</s:param>
       </s:url>
       <s:a href="%{del}"><img src="images/btn_del.gif" style="cursor: hand;" alt='删除'"></s:a>
                
            </div>
            </td>
          </tr>
          </s:iterator>
          
      </table>
<table width="100%" border="0" cellpadding="0" cellspacing="0" class="table0">
  <tr>
  
    <td  width="35%"><input name="button" type="submit" class=btn_mouseout onmousedown="this.className='btn_mousedown'" onmouseup="this.className='btn_mouseup'" onmouseover="this.className='btn_mouseover'" onmouseout="this.className='btn_mouseout'" value="新增"></td>
  <td width="62%">
              <p align="right"><font color="#008080">共</font><font color="#800000"> 1</font><font color="#008080"> 页　 首页　上一页　下一页　尾页&nbsp; 跳转
                    <input name="text" type="text" size="4">
        页</font></td>
           <td width="3%">&nbsp; </td>
          </tr>
          <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
          </tr>
</table>  
</form>
</div>
</body>
<script language="JavaScript">
	var errorInfo = "null";
	if (errorInfo != null && errorInfo != "null" && errorInfo != "")
		myAlert(errorInfo);
</script>
</html>
