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
</head>
<body class="body0">
<div align="center">
	<table class="table_path">
		<tr>
			<td >您当前的位置：<a href="#"><span class="txtpath">日常办公</span></a> &gt; <a href="#"><span class="txtpath">日程管理</span></a> &gt; 日程维护</td>
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
<form name="statuteFileForm" method="post" action="dailywork_list.htm" onsubmit="return subchoose();">
	
<table  cellSpacing=1 cellPadding=2 class="table2">
				<tr>
					<th scope="row">日期</th>
					<td class="tr_s" onmouseover="this.className='tr_o'" onmouseout="this.className='tr_s'">
					<s:textfield name="dailywork.date" theme="simple" readonly="true"></s:textfield>
					</td>
				</tr>
				<tr>
					<th scope="row">周期</th>
					<td class="tr_s" onmouseover="this.className='tr_o'" onmouseout="this.className='tr_s'">
					<s:textfield name="dailywork.repeat_time" theme="simple" readonly="true"></s:textfield>
					</td>
				</tr>
				<tr>
					<th scope="row">开始时间</th>
					<td class="tr_d" onmouseover="this.className='tr_o'" onmouseout="this.className='tr_d'">
					<div align="left">				
						<s:textfield name="dailywork.start_time" theme="simple" size="5" readonly="true"></s:textfield>

					</div>
					</td>
				</tr>
				<tr>
					<th scope="row">结束时间</th>
					<td class="tr_s" onmouseover="this.className='tr_o'" onmouseout="this.className='tr_s'">
						<s:textfield name="dailywork.end_time" theme="simple" size="5" readonly="true"></s:textfield>
					</td>
				</tr>

				<tr>
					<th scope="row">主题</th>
					<td class="tr_d" onmouseover="this.className='tr_o'" onmouseout="this.className='tr_d'">
					<s:textfield name="dailywork.topic"  theme="simple" readonly="true"></s:textfield>
					</td>
				</tr>
				<tr>
					<th scope="row">内容</th>
					<td class="tr_s" onmouseover="this.className='tr_o'" onmouseout="this.className='tr_s'">
						<s:textarea name="dailywork.data"  theme="simple" cols="60" rows="10" readonly="true"></s:textarea>
					</td>
				</tr>
				<tr>
					<th scope="row">提醒方式</th>
					<td class="tr_d" onmouseover="this.className='tr_o'" onmouseout="this.className='tr_d'">
					<s:textfield name="dailywork.remind"  theme="simple" size="5" readonly="true"></s:textfield>
					</td>
				</tr>
			</table>
	
	        <table width="100%" border="0" cellpadding="0" cellspacing="0" class="table0">
          <tr>
            <td>
              <div align="center">    　
        <input name="button32" type="button" class=btn_mouseout onMouseDown="this.className='btn_mousedown'" onMouseUp="this.className='btn_mouseup'" onMouseOver="this.className='btn_mouseover'" onMouseOut="this.className='btn_mouseout'" onClick='history.go(-1)' value="返回">
            </div></td>
          </tr>
          <tr>
            <td>&nbsp;</td>
          </tr>
        </table>
	
</form>
</div>
</body>
</html>
