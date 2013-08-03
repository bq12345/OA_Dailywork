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
</head>

<body class="body0">
<div align="center">
	<table class="table_path">
		<tr>
			<td >您当前的位置：<a href="#"><span class="txtpath">日常办公</span></a> &gt; <a href="#"><span class="txtpath">公告栏</span></a> &gt; 公告栏维护</td>
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
<form name="statuteFileForm" method="post" action="download">
	
<table  cellSpacing=1 cellPadding=2 class="table2">
				<tr>
					<th scope="row">日期</th>
					<td class="tr_s" onmouseover="this.className='tr_o'" onmouseout="this.className='tr_s'">
					<s:property value="notice.date"/>
					</td>
				</tr>
				<tr>
					<th scope="row">主题</th>
					<td class="tr_d" onmouseover="this.className='tr_o'" onmouseout="this.className='tr_d'">
						<s:property value="notice.topic"/>
					</td>
				</tr>
				<tr>
					<th scope="row">内容</th>
					<td class="tr_s" onmouseover="this.className='tr_o'" onmouseout="this.className='tr_s'">
							<s:textarea name="notice.data" cols="100" rows="15" theme="simple" readonly="true"></s:textarea>
					</td>
				</tr>
				<tr>
					<th scope="row">备注</th>
					<td class="tr_d" onmouseover="this.className='tr_o'" onmouseout="this.className='tr_d'">
						<s:textarea name="notice.remark" cols="100" rows="3" theme="simple" readonly="true"></s:textarea>
					</td>
				</tr>
				<tr>
					<th scope="row">附件</th>
					<td class="tr_s" onmouseover="this.className='tr_o'" onmouseout="this.className='tr_s'">
						<s:hidden name="notice.filepath"></s:hidden>
						<s:hidden name="notice.filename"></s:hidden>
						<s:property value="notice.filename"/>&nbsp;&nbsp;
						<s:submit theme="simple" value="下载"></s:submit>
					</td>
				</tr>
				<tr>
					<th scope="row">发布人</th>
					<td class="tr_d" onmouseover="this.className='tr_o'" onmouseout="this.className='tr_d'">
						<s:property value="notice.send_client"/>
					</td>
				</tr>
				<tr>
					<th scope="row">发布部门</th>
					<td class="tr_s" onmouseover="this.className='tr_o'" onmouseout="this.className='tr_s'">
					<s:property value="notice.work"/>
					</td>
				</tr>
			</table>

        <table width="100%" border="0" cellpadding="0" cellspacing="0" class="table0">
          <tr>
            <td>
              <div align="center">
                <input type="button" class=btn_mouseout onMouseDown="this.className='btn_mousedown'" onMouseUp="this.className='btn_mouseup'" onMouseOver="this.className='btn_mouseover'" onMouseOut="this.className='btn_mouseout'" onclick="window.history.go(-1)" value="返回">        　       　
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
