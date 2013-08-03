<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<%@taglib prefix="s" uri="/struts-tags" %>
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
<title>个人信息</title>
<link href="style/styles.css" rel="STYLESHEET" type="text/css"></link>
<script language="JavaScript">
function myAdd(sign)
{
	var res_userid = document.forms[0].userid.value;
	if (res_userid == "")
	{
		alert("用户ID不能为空");
		document.forms[0].userid.focus();
		return false;
	}
	res_userid = String(res_userid).replace(/^[\s]+|[\s]+$/g,'');
	if (res_userid == "")
	{
		alert("用户ID不能为空");
		document.forms[0].userid.focus();
		return false;
	}
	document.forms[0].userid.value = res_userid;
	
	var res_name = document.forms[0].name.value;
	if (res_name == "")
	{
		alert("用户名称不能为空");
		document.forms[0].name.focus();
		return false;
	}	
	res_name = String(res_name).replace(/^[\s]+|[\s]+$/g,'');
	if (res_name == "")
	{
		alert("用户名称不能为空");
		document.forms[0].name.focus();
		return false;
	}
	document.forms[0].name.value = res_name;	
	
	if (document.forms[0].dutyId.value == "")
	{
		alert("用户职务不能为空");
		document.forms[0].dutyId.focus();
		return false;
	}	
	var errMsg = "";
	errMsg = checkDate(document.forms[0].birthdate);
	if (errMsg != "")
	{
		alert(errMsg);
		document.forms[0].birthdate.focus();
		return false;
	}
	errMsg = checkDate(document.forms[0].jobTime);
	if (errMsg != "")
	{
		alert(errMsg);
		document.forms[0].jobTime.focus();
		return false;
	}	
	errMsg = checkEmail(document.forms[0].email);
	if (errMsg != "")
	{
		alert(errMsg);
		document.forms[0].email.focus();
		return false;
	}
	errMsg = checkMobilephone(document.forms[0].phone);
	if (errMsg != "")
	{
		alert(errMsg);
		document.forms[0].phone.focus();
		return false;
	}	
	errMsg = checkPhone(document.forms[0].telphone);
	if (errMsg != "")
	{
		alert(errMsg);
		document.forms[0].telphone.focus();
		return false;
	}						
	errMsg = checkDate(document.forms[0].graduateTime);
	if (errMsg != "")
	{
		alert(errMsg);
		document.forms[0].graduateTime.focus();
		return false;
	}
	
	if (sign == "1")
	{
		document.forms[0].action = "user_right.htm";
	} else if (sign == "2")
	{
		document.forms[0].action = "user_right.htm";
	}
	
	document.forms[0].submit();	
	
}

function myAlert(errorInfo)
{
	alert(errorInfo);
}
</script>

</head>

<body class="body0">
<div align="center">
	<table class="table_path">
		<tr>
			<td >您当前的位置：<a href="#"><span class="txtpath">系统管理</span></a> &gt; <a href="#"><span class="txtpath">个人信息</span></a> &gt; 个人信息维护</td>
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
<form name="userForm" method="post" action="updateUser">
	
<table  cellSpacing=1 cellPadding=2 class="table2">
  <tr align=middle>
    <th>用户ID</th>
    <td  align="left" class="tr_s" onmouseover="this.className='tr_o'" onmouseout="this.className='tr_s'">
      
      	<s:textfield name="user.id" theme="simple"></s:textfield>
      
      
    </td>
    <th>姓名</th>
    <td  align="left" class="tr_s" onmouseover="this.className='tr_o'" onmouseout="this.className='tr_s'">
    	<s:textfield name="user.name" theme="simple"></s:textfield>
    	<s:hidden name="user.password" ></s:hidden>
    </td>
  </tr>
  <tr align=middle>
    <th>性别</th>
    <td  align="left" class="tr_s" onmouseover="this.className='tr_o'" onmouseout="this.className='tr_s'">
    <s:textfield name="user.sex" theme="simple"></s:textfield>
    </td>
    <th>出生日期</th>
    <td  align="left" class="tr_s" onmouseover="this.className='tr_o'" onmouseout="this.className='tr_s'">
    <s:textfield name="user.birthday" theme="simple"></s:textfield>
  </tr>
  <tr align=middle>
    <th>入职时间</th>
    <td  align="left" class="tr_s" onmouseover="this.className='tr_o'" onmouseout="this.className='tr_s'">
    <s:textfield name="user.work_time" theme="simple"></s:textfield></td>
    <th>职务</th>
    <td  align="left" class="tr_s" onmouseover="this.className='tr_o'" onmouseout="this.className='tr_s'">
    	<s:textfield name="user.work_post" theme="simple"></s:textfield>
    </td> 
  </tr>
  <tr align=middle>
    <th>住址</th>
    <td  align="left" class="tr_s" onmouseover="this.className='tr_o'" onmouseout="this.className='tr_s'">
    <s:textfield name="user.address" theme="simple"></s:textfield></td>
    <th>EMAIL</th>
    <td  align="left" class="tr_s" onmouseover="this.className='tr_o'" onmouseout="this.className='tr_s'">
    <s:textfield name="user.email" theme="simple"></s:textfield></td>
  </tr>
  <tr align=middle>
    <th>手机</th>
    <td  align="left" class="tr_s" onmouseover="this.className='tr_o'" onmouseout="this.className='tr_s'">
    <s:textfield name="user.moblile" theme="simple"></s:textfield></td>
    <th>电话</th>
    <td  align="left" class="tr_s" onmouseover="this.className='tr_o'" onmouseout="this.className='tr_s'">
    <s:textfield name="user.phone" theme="simple"></s:textfield></td>
  </tr>
  <tr align=middle>
    <th>政治面貌</th>
    <td  align="left" class="tr_s" onmouseover="this.className='tr_o'" onmouseout="this.className='tr_s'">
    <s:textfield name="user.political" theme="simple"></s:textfield></td>
    <th>毕业学校</th>
    <td  align="left" class="tr_s" onmouseover="this.className='tr_o'" onmouseout="this.className='tr_s'">
   <s:textfield name="user.school" theme="simple"></s:textfield>
   </td>
  </tr>
  <tr align=middle>
    <th>毕业时间</th>
    <td align="left" class="tr_s" onmouseover="this.className='tr_o'" onmouseout="this.className='tr_s'">
    <s:textfield name="user.graduate_date" theme="simple"></s:textfield>
</td>
    <th>学历</th>
    <td  align="left" class="tr_s" onmouseover="this.className='tr_o'" onmouseout="this.className='tr_s'">
   <s:textfield name="user.education_b" theme="simple"></s:textfield>
   </td>
  </tr>
  <tr align=middle>
    <th>专业</th>
    <td  align="left" class="tr_s" onmouseover="this.className='tr_o'" onmouseout="this.className='tr_s'">
       <s:textfield name="user.major" theme="simple"></s:textfield>
</td>
    <th>职称</th>
    <td  align="left" class="tr_s" onmouseover="this.className='tr_o'" onmouseout="this.className='tr_s'">
      <s:textfield name="user.rank" theme="simple"></s:textfield>
</td>
  </tr>
  <tr align=middle>
    <th>备注</th>
    <td colspan="3"  align="left" class="tr_s" onmouseover="this.className='tr_o'" onmouseout="this.className='tr_s'">
       <s:textarea name="user.reamark" theme="simple"></s:textarea>
</td>
  </tr>

</table>

        <table width="100%" border="0" cellpadding="0" cellspacing="0" class="table0">
          <tr>
            <td>
              <div align="center">
                <input type="submit" class=btn_mouseout onMouseDown="this.className='btn_mousedown'" onMouseUp="this.className='btn_mouseup'" onMouseOver="this.className='btn_mouseover'" onMouseOut="this.className='btn_mouseout'"  value="保存">
				
			 </input>

       <input type="button" class=btn_mouseout onMouseDown="this.className='btn_mousedown'" onMouseUp="this.className='btn_mouseup'" onMouseOver="this.className='btn_mouseover'" onMouseOut="this.className='btn_mouseout'" onClick="window.location='personal_psd.htm'" value="修改密码">
          </input>  </div></td>        
          </tr>
          <tr>
            <td>&nbsp;</td>
          </tr>
        </table>
</form>
<p>&nbsp;</p>
<script language="JavaScript">
	var errorInfo = "null";
	if (errorInfo != null && errorInfo != "null" && errorInfo != "")
		alert(errorInfo);
</script>
</div>
</body>
</html>
