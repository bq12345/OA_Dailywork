<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<html>
  <head>
    <base href="<%=basePath%>">
   <meta http-equiv="Content-Language" content="zh-cn">
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>日常办公</title>
<link href="style/styles.css" rel="STYLESHEET" type="text/css">
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
<form name="statuteFileForm" method="post" action="separatePlan" onsubmit="return subchoose();">
	
<table  cellSpacing=1 cellPadding=2 class="table2">
<tr>
					<th scope="row">所属计划</th>
					<td class="tr_d" onmouseover="this.className='tr_o'" onmouseout="this.className='tr_d'">
					<s:textfield name="plan.parent" value="%{plan.name}" theme="simple" readonly="true"></s:textfield>
					<s:hidden name="id" value="%{plan.id}"></s:hidden>
					</td>
				</tr>
<tr>
					<th scope="row">计划</th>
					<td class="tr_d" onmouseover="this.className='tr_o'" onmouseout="this.className='tr_d'">
					<s:textfield name="plan.name" theme="simple"></s:textfield>
					</td>
	  </tr>
				<tr>
					<th scope="row">接收人</th>
				  <td class="tr_d" onmouseover="this.className='tr_o'" onmouseout="this.className='tr_d'">
				  <s:textfield name="plan.person" theme="simple"></s:textfield>
					</td>
				</tr>
				<tr>
					<th scope="row">开始日期</th>
				  <td class="tr_s" onmouseover="this.className='tr_o'" onmouseout="this.className='tr_s'">
				  <input type="date" name="plan.start_date" value="%{plan.start_date}">
      </tr>
				<tr>
					<th scope="row">结束日期</th>
					<td class="tr_d" onmouseover="this.className='tr_o'" onmouseout="this.className='tr_d'">
						 <input type="date" name="plan.end_date" value="%{plan.end_date}">
					</td>
				</tr>				

				
				<tr>
					<th scope="row">内容</th>
					<td class="tr_s" onmouseover="this.className='tr_o'" onmouseout="this.className='tr_s'">
                      <s:textarea name="plan.data" cols="60" rows="10" value="" theme="simple"></s:textarea>
</td>
				</tr>
				
			</table>
	
	        <table width="100%" border="0" cellpadding="0" cellspacing="0" class="table0">
          <tr>
            <td>
              <div align="center">
                <input  type="submit" class=btn_mouseout onMouseDown="this.className='btn_mousedown'" onMouseUp="this.className='btn_mouseup'" onMouseOver="this.className='btn_mouseover'" onMouseOut="this.className='btn_mouseout'" value="保存">
        　
       　
        <input  type="button" class=btn_mouseout onMouseDown="this.className='btn_mousedown'" onMouseUp="this.className='btn_mouseup'" onMouseOver="this.className='btn_mouseover'" onMouseOut="this.className='btn_mouseout'" onClick='history.go(-1)' value="返回">
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