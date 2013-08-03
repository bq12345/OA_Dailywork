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
<title>日常办公</title>
<link href="style/styles.css" rel="STYLESHEET" type="text/css">
<SCRIPT src="images/myweb.js"></SCRIPT>
<SCRIPT language="JavaScript">
  function toModify(id)
  {
    document.forms[0].action = "callingcard_modify.htm";
    document.forms[0].submit();
  }
  
  function deleteIt(id,levelNo,name)
  {
    document.forms[0].action = "callingcard_add.htm";
    document.forms[0].submit();  
  }
  
  function myAlert(errorInfo)
  {
		alert(errorInfo+"，不能进行该操作!");
  }
  function query(){
            var query_name=document.getElementById('query_name').value;
            var query_team=document.getElementById('query_team').value;
            var query_work=document.getElementById('query_work').value;
            window.location.href='queryCardClient?name='+query_name+'&teamname='+query_team+'&workname='+query_work;
            }
</SCRIPT>
</head>
<body class="body0">
	<div align="center">
	<table class="table_path">
		<tr>
		<td >您当前的位置：<a href="#"><span class="txtpath">日常办公</span></a> &gt; <a href="#"><span class="txtpath">名片夹</span></a> &gt; 公共名片列表</td>
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
<form name="addressForm" method="POST" action="#">
		<table width="100%"  border="0" cellpadding="0" cellspacing="0" class="table_box">
			<form name="statuteFileForm" method="post" action="#">
          <tr>
            <td><p>姓名：
              <input type="text" id="query_name">
分组：
              <input type="text" id="query_team">
单位：
              <input type="text" id="query_work">

　
<input type="button" class=btn_mouseout onmousedown="this.className='btn_mousedown'" onmouseup="this.className='btn_mouseup'" onmouseover="this.className='btn_mouseover'" onmouseout="this.className='btn_mouseout'"  onclick="query()" value="按条件查询">　
<input type="button" class=btn_mouseout onmousedown="this.className='btn_mousedown'" onmouseup="this.className='btn_mouseup'" onmouseover="this.className='btn_mouseover'" onmouseout="this.className='btn_mouseout'" onclick="window.location.href='query_callingcard_list'" value="查询全部">
</p>            </td>
          </tr>
        </table>
  <table  cellSpacing=1 cellPadding=2 class="table1" id="table4">
          <tr>
	    			<th scope="col"><div align="center">所在组</div></th>
            <th scope="col"><div align="center">姓名</div></th>
            <th scope="col"><div align="center">单位</div></th>
            <th scope="col"><div align="center">职务</div></th>
            <th scope="col"><div align="center">移动电话</div></th>
            <th scope="col"><div align="center">单位电话</div></th>
            <th scope="col"><div align="center">单位传真</div></th>
            <th scope="col"><div align="center">EMAIL</div></th>
            <th scope="col"><div align="center">单位地址</div></th>
	    <th scope="col"><div align="center">操作</div></th>
          </tr>
          <s:iterator value="list"> 
          <tr class="tr_s" onmouseover="this.className='tr_o'" onmouseout="this.className='tr_s'">
            <td><div align="center">${team}</div></td>
            <td><div align="center">${client_name}</div></td>
            <td><div align="center">${work}</div></td>
            <td><div align="center">${work_post}</div></td>
            <td><div align="center">${mobile_phone}</div></td>
            <td><div align="center">${work_phone}</div></td>
            <td><div align="center">${work_fax}</div></td>
            <td><div align="center">${email}</div></td>
            <td><div align="center">${work_address}</div></td>
            <td><div align="center">
              	<s:url id="get" action="getCardClient">
                	<s:param name="id">${id}</s:param>
       </s:url>
       <s:a href="%{get}"><img src="images/btn_edit.gif" style="cursor: hand;" alt='修改'"></s:a>
  
            <s:url id="del" action="delCardClient">
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
  
 
    <td  width="35%">
    	<input name="button" type="button" class=btn_mouseout onmousedown="this.className='btn_mousedown'" onmouseup="this.className='btn_mouseup'" onmouseover="this.className='btn_mouseover'" onmouseout="this.className='btn_mouseout'" value="新建名片" onClick="location.href='callingcard_add'">
    	<input name="button" type="button" class=btn_mouseout onmousedown="this.className='btn_mousedown'" onmouseup="this.className='btn_mouseup'" onmouseover="this.className='btn_mouseover'" onmouseout="this.className='btn_mouseout'" value="维护分组" onClick="location.href='query_callingcard_team'">
    </td>
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
    
  </tr>
</table>
 
<input type="hidden" name="parentID" value="000000000000">
<input type="hidden" name="parentLevelNo" value="0">
</form>
<script language="JavaScript">
  var errorInfo = "null";
  if (errorInfo != null && errorInfo != "null" && errorInfo != "")
	myAlert(errorInfo);
</script>
</div>
</body>
</html>
