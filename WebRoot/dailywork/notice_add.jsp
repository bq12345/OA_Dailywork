<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>
  <head>
    <base href="<%=basePath%>">
    
    <meta http-equiv="Content-Language" content="zh-cn"></meta>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312"></meta>
<title>日常办公</title>
<link href="style/styles.css" rel="STYLESHEET" type="text/css"></link>

<script language=javascript>
  function subchoose(){
        if(document.statuteFileForm.name.value==""||document.statuteFileForm.name.value.replace(/ /g,"")==""){
			alert("请输入名称！");
			document.statuteFileForm.name.value="";
			return false;
        }
        if(document.statuteFileForm.type.value=="1"){
			alert("请选择类型！");
			return false;
        }
        if(document.statuteFileForm.sendDate.value==""){
			alert("请选择下发日期！");
			return false;
        }
	}
</script>
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
<form name="statuteFileForm" method="post" action="addNotice" enctype="multipart/form-data">
	
<table class="table2">
				<tr>
					<th scope="row">日期</th>
					<td class="tr_s" onmouseover="this.className='tr_o'" onmouseout="this.className='tr_s'">
					<input type="date" name="notice.date" value=""></input>
					</td>
				</tr>
				<tr>
					<th scope="row">主题</th>
					<td class="tr_d" onmouseover="this.className='tr_o'" onmouseout="this.className='tr_d'">
						<input size="50" type="text" name="notice.topic" value=""></input>
					</td>
				</tr>
				<tr>
					<th scope="row">内容</th>
					<td class="tr_s" onmouseover="this.className='tr_o'" onmouseout="this.className='tr_s'">
						<textarea name="notice.data" cols="100" rows="15"></textarea>
					</td>
				</tr>
				<tr>
					<th scope="row">备注</th>
					<td class="tr_d" onmouseover="this.className='tr_o'" onmouseout="this.className='tr_d'">
						<textarea name="notice.remark" cols="100" rows="3"></textarea>
					</td>
				</tr>
				<tr>
					<th scope="row">附件</th>
					<td class="tr_s" onmouseover="this.className='tr_o'" onmouseout="this.className='tr_s'">
						<input type="file" name="image"></input>
					</td>
				</tr>
				<tr>
					<th scope="row">发布人</th>
					<td class="tr_d" onmouseover="this.className='tr_o'" onmouseout="this.className='tr_d'">
						<input size="50" type="text" name="notice.send_client" value="登录用户"></input>
					</td>
				</tr>
				<tr>
					<th scope="row">发布部门</th>
					<td class="tr_s" onmouseover="this.className='tr_o'" onmouseout="this.className='tr_s'">
					<input size="50" type="text" name="notice.work" value="人事部"></input>
					</td>
				</tr>
			</table>

        <table width="100%" border="0" cellpadding="0" cellspacing="0" class="table0">
          <tr>
            <td>
              <div align="center">
                <input name="button5" type="submit" value="保存">
        　</input>
       　
        <input name="button32" type="button" class=btn_mouseout  onMouseUp="this.className='btn_mouseup'" onMouseOver="this.className='btn_mouseover'" onMouseOut="this.className='btn_mouseout'" onClick='history.go(-1)' value="返回">
           </input> </div></td>
          </tr>
          <tr>
            <td>&nbsp;<s:fielderror /></td>
          </tr>
        </table>
</form>
</div>
</body>
</html>
