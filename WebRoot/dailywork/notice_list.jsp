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
<!-- <SCRIPT src="images/myweb.js"></SCRIPT> -->
<SCRIPT language=JavaScript>
	function modify(id){
		window.location.href="notice_modify.htm";
	}
	function del(id){
		if(confirm('是否确认删除？')){
			//window.location.href="statuteFileAction.do?method=deleteStatuteFile&did="+id;
			return true;
		}
	}
</SCRIPT>
</head>

<body class="body0">
	<div align="center">
	<table class="table_path">
		<tr>
		<td >您当前的位置：<a href="#"><span class="txtpath">日常办公</span></a> &gt; <a href="#"><span class="txtpath">公告栏</span></a> &gt; 公告列表</td>
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

	 <table  cellSpacing=1 cellPadding=2 class="table1" id="table4">
			<tr>
				<th scope="col">日期</th>
				<th scope="col">主题</th>
				<th scope="col">发布人</th>
				<th scope="col">发布部门</th>
				<th scope="col">操作</th>
			</tr>
				<s:iterator value="list">
				<s:url id="view" action="viewNotice">
                	<s:param name="id">${id}</s:param>
       </s:url>
				<tr class="tr_d" onmouseover="this.className='tr_o'" onmouseout="this.className='tr_d'">
						<td align="left" class="tr2">${date}</td>
						<td align="left" nowrap class="tr2"><s:a href="%{view}">${topic}</s:a></td>
						<td align="left" class="tr2">${send_client}</td>
						<td align="left" class="tr2">${work}</td>
						<td align="center" nowrap class="tr2">
						
            <s:url id="get" action="getNotice">
                	<s:param name="id">${id}</s:param>
       </s:url>	
       
       <s:a href="%{get}"><img src="images/btn_edit.gif" style="cursor: hand;" alt='修改'"></s:a>
       
            <s:url id="del" action="delNotice">
	<s:param name="id">${id}</s:param>
       </s:url>
       <s:a href="%{del}"><img src="images/btn_del.gif" style="cursor: hand;" alt='删除'"></s:a>
						</td>
					</tr>
				
				</s:iterator>
										
		</table>

<table width="100%" border="0" cellpadding="0" cellspacing="0" class="table0">
  <tr>
  
    <td  width="35%"><input name="button" type="button" class=btn_mouseout onmousedown="this.className='btn_mousedown'" onmouseup="this.className='btn_mouseup'" onmouseover="this.className='btn_mouseover'" onmouseout="this.className='btn_mouseout'" value="发布公告" onClick="location.href='dailywork/notice_add.jsp'"></td>
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

</div>

</body>
</html>
