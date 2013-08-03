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
<form name="statuteFileForm" method="post" action="addDailywork" onsubmit="return subchoose();">
	
<table class="table2">
	<tr>
					<th scope="row">日期</th>
				  <td class="tr_s" onmouseover="this.className='tr_o'" onmouseout="this.className='tr_s'"><span class="tr_d">
			<input type="date" name="dailywork.date" value="2013-8-1"></input>
			<select name="dailywork.repeat_time" >
							<option>仅此一次</option>
							<option>每天</option>
							<option>每周</option>
							<option>每月</option>
							<option>每年</option>
						</select>
			</span>
			</td>
      </tr>
				<tr>
					<th scope="row">主题</th>
				  <td class="tr_s" onmouseover="this.className='tr_o'" onmouseout="this.className='tr_s'"><span class="tr_d">
		<s:textfield name="dailywork.topic"  theme="simple"></s:textfield>				  </span>
		</td>
      </tr>
	  <tr>
					<th scope="row">是否作为模版</th>
				  <td class="tr_s" onmouseover="this.className='tr_o'" onmouseout="this.className='tr_s'"><span class="tr_d">
				   <s:checkbox name="dailywork.standard" theme="simple"></s:checkbox>
				  </span>
				  </td>
      </tr>
				<tr>
					<th scope="row">开始时间</th>
					<td class="tr_d" onmouseover="this.className='tr_o'" onmouseout="this.className='tr_d'">
					<div align="left">
					<s:textfield name="dailywork.start_time" theme="simple" size="5"></s:textfield>
					</div>
					</td>
				</tr>
				<tr>
					<th scope="row">结束时间</th>
					<td class="tr_s" onmouseover="this.className='tr_o'" onmouseout="this.className='tr_s'">
					<s:textfield name="dailywork.end_time" theme="simple" size="5"></s:textfield>
						
					</td>
				</tr>
				<tr>
					<th scope="row">内容</th>
					<td class="tr_s" onmouseover="this.className='tr_o'" onmouseout="this.className='tr_s'">
						<s:textarea name="dailywork.data"  theme="simple" cols="60" rows="10" ></s:textarea>
					</td>
				</tr>
				<tr>
					<th scope="row">提醒方式</th>
					<td class="tr_d" onmouseover="this.className='tr_o'" onmouseout="this.className='tr_d'">
					<select name="dailywork.remind" >
						<option>短信提醒</option>
						<option>邮件提醒</option>
						<option>声音提醒</option>
					</select>
					</td>
				</tr>
				
			</table>
	
	        <table width="100%" border="0" cellpadding="0" cellspacing="0" class="table0">
          <tr>
            <td>
              <div align="center">
                <input  type="submit" class=btn_mouseout onMouseDown="this.className='btn_mousedown'" onMouseUp="this.className='btn_mouseup'" onMouseOver="this.className='btn_mouseover'" onMouseOut="this.className='btn_mouseout'" value="保存"></input>
        　
       　
        <input type="button" class=btn_mouseout onMouseDown="this.className='btn_mousedown'" onMouseUp="this.className='btn_mouseup'" onMouseOver="this.className='btn_mouseover'" onMouseOut="this.className='btn_mouseout'" onClick='history.go(-1)' value="返回">
           </input> </div></td>
          </tr>
          <tr>
            <td>&nbsp;</td>
          </tr>
        </table>
	
</form>
</div>
</body>
</html>
