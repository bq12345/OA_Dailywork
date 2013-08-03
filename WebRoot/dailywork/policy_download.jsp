<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
  <head>
    <base href="<%=basePath%>"></base>
    <meta http-equiv="Content-Language" content="zh-cn"></meta>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312"></meta>
<title>日常办公</title>
<link href="style/styles.css" rel="STYLESHEET" type="text/css"></link>
<script language="JavaScript">
 window.location.href = 'downloadPolicy?policy='+${policy};
</script>
</head>

<body class="body0">
<div align="center">
	<table class="table_path">
		<tr>
			<td >您当前的位置：<a href="#"><span class="txtpath">日常办公</span></a> &gt; <a href="#"><span class="txtpath">政策法规</span></a> &gt; 附件下载</td>
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
<br /><br /><br /><br /><br/><br/><br/><br/>
<s:form action="downloadPolicy" >				
						<s:hidden name="policy.filepath"></s:hidden>
						<s:hidden name="policy.filename"></s:hidden>
						<s:property value="policy.filename"/>&nbsp;&nbsp;<br/><br/><br/><br/>
						<s:submit theme="simple" value="点击下载" src="images/download.png" ></s:submit>
						
</s:form><br/>
<input type="button" class=btn_mouseout onclick="window.history.go(-1)" value="返回"> 
</div>
</body>
</html>
