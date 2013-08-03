<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<%@taglib prefix="s" uri="/struts-tags" %>
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
<SCRIPT language="JavaScript">

</SCRIPT>
</head>

<body class="body0">
	<div align="center">
	<table class="table_path">
		<tr>
			<td >您当前的位置：<a href="#"><span class="txtpath">系统管理</span></a> &gt; <a href="#"><span class="txtpath">公文类型管理</span></a> &gt; 公文类型列表</td>
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
<form name="dutyForm" method="POST" action="doctype_add.htm">

       <table  cellSpacing=1 cellPadding=2 class="table1" id="table4">
			<tr>
				<th scope="col">计划</th>
				<th scope="col">所属计划</th>
				<th scope="col">开始日期</th>
				<th scope="col">结束日期</th>
				<th scope="col">详细信息</th>
				<th scope="col">计划分解</th>
				<th scope="col">操作</th>
				
			</tr>
			
			<s:iterator value="list">
				
					<tr class="tr_s" onmouseover="this.className='tr_o'" onmouseout="this.className='tr_s'">
						<td align="center" nowrap>${name}</td>
						<td align="center" nowrap>${parent}</td>
						<td align="center"  nowrap>${start_date}</td>
						<td align="center"  nowrap>${end_date}</td>
					  <td align="center" nowrap >
							
            				<s:url id="view" action="viewPlan">
                	<s:param name="id">${id}</s:param>
       </s:url>	
       
       <s:a href="%{view}">查看</s:a>
					  </td>
					  
					  <td align="center" >
				<s:url id="decompose" action="decomposePlan">
                	<s:param name="id">${id}</s:param>
       </s:url>	
       
       <s:a href="%{decompose}">计划分解</s:a>	
       				
					<td align="center" >
					
					<s:url id="get" action="getPlan">
                	<s:param name="id">${id}</s:param>
       </s:url>	
       
       <s:a href="%{get}"><img src="images/btn_edit.gif" style="cursor: hand;" alt='修改'"></s:a>
       
       <s:url id="del" action="delPlan">
                	<s:param name="id">${id}</s:param>
       </s:url>	
       
      <s:a href="%{del}"><img src="images/btn_del.gif" style="cursor: hand;" alt='删除'"></s:a>
							
</tr>

</s:iterator>														
		</table>
<table width="100%" border="0" cellpadding="0" cellspacing="0" class="table0">
  <tr>
  
    <td  width="35%">
	 <input name="button5" type="button" class=btn_mouseout onMouseDown="this.className='btn_mousedown'" onMouseUp="this.className='btn_mouseup'" onMouseOver="this.className='btn_mouseover'" onMouseOut="this.className='btn_mouseout'" onclick="location.href='dailywork/plan_add.jsp'"  value="新增">
  <td width="62%">
              <p align="right"><font color="#008080">共</font><font color="#800000"> 1</font><font color="#008080"> 页　 首页　上一页　下一页　尾页&nbsp; 跳转
                   <select  name="pageNum">
				   		<option value="1">1</option>
						<option value="1">2</option>
						<option value="1">3</option>						
				   </select>
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
