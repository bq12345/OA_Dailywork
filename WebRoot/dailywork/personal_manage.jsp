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
<title>������Ϣ</title>
<link href="style/styles.css" rel="STYLESHEET" type="text/css"></link>
<script language="JavaScript">
function myAdd(sign)
{
	var res_userid = document.forms[0].userid.value;
	if (res_userid == "")
	{
		alert("�û�ID����Ϊ��");
		document.forms[0].userid.focus();
		return false;
	}
	res_userid = String(res_userid).replace(/^[\s]+|[\s]+$/g,'');
	if (res_userid == "")
	{
		alert("�û�ID����Ϊ��");
		document.forms[0].userid.focus();
		return false;
	}
	document.forms[0].userid.value = res_userid;
	
	var res_name = document.forms[0].name.value;
	if (res_name == "")
	{
		alert("�û����Ʋ���Ϊ��");
		document.forms[0].name.focus();
		return false;
	}	
	res_name = String(res_name).replace(/^[\s]+|[\s]+$/g,'');
	if (res_name == "")
	{
		alert("�û����Ʋ���Ϊ��");
		document.forms[0].name.focus();
		return false;
	}
	document.forms[0].name.value = res_name;	
	
	if (document.forms[0].dutyId.value == "")
	{
		alert("�û�ְ����Ϊ��");
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
			<td >����ǰ��λ�ã�<a href="#"><span class="txtpath">ϵͳ����</span></a> &gt; <a href="#"><span class="txtpath">������Ϣ</span></a> &gt; ������Ϣά��</td>
		    <td align="right" >
	      <script language=JavaScript>
										 today=new Date();
										 function initArray(){
										 this.length=initArray.arguments.length
										 for(var i=0;i<this.length;i++)
										 this[i+1]=initArray.arguments[i]  }
										 var d=new initArray(
											 " ������",
											 " ����һ",
											 " ���ڶ�",
											 " ������",
											 " ������",
											 " ������",
											 " ������");
												document.write(
											 "",
											 today.getYear(),"��",
											 today.getMonth()+1,"��",
											 today.getDate(),"�� ",
											d[today.getDay()+1],
											 "" ); 
									</script></td>
		</tr>		
	
</table>	
<form name="userForm" method="post" action="updateUser">
	
<table  cellSpacing=1 cellPadding=2 class="table2">
  <tr align=middle>
    <th>�û�ID</th>
    <td  align="left" class="tr_s" onmouseover="this.className='tr_o'" onmouseout="this.className='tr_s'">
      
      	<s:textfield name="user.id" theme="simple"></s:textfield>
      
      
    </td>
    <th>����</th>
    <td  align="left" class="tr_s" onmouseover="this.className='tr_o'" onmouseout="this.className='tr_s'">
    	<s:textfield name="user.name" theme="simple"></s:textfield>
    	<s:hidden name="user.password" ></s:hidden>
    </td>
  </tr>
  <tr align=middle>
    <th>�Ա�</th>
    <td  align="left" class="tr_s" onmouseover="this.className='tr_o'" onmouseout="this.className='tr_s'">
    <s:textfield name="user.sex" theme="simple"></s:textfield>
    </td>
    <th>��������</th>
    <td  align="left" class="tr_s" onmouseover="this.className='tr_o'" onmouseout="this.className='tr_s'">
    <s:textfield name="user.birthday" theme="simple"></s:textfield>
  </tr>
  <tr align=middle>
    <th>��ְʱ��</th>
    <td  align="left" class="tr_s" onmouseover="this.className='tr_o'" onmouseout="this.className='tr_s'">
    <s:textfield name="user.work_time" theme="simple"></s:textfield></td>
    <th>ְ��</th>
    <td  align="left" class="tr_s" onmouseover="this.className='tr_o'" onmouseout="this.className='tr_s'">
    	<s:textfield name="user.work_post" theme="simple"></s:textfield>
    </td> 
  </tr>
  <tr align=middle>
    <th>סַ</th>
    <td  align="left" class="tr_s" onmouseover="this.className='tr_o'" onmouseout="this.className='tr_s'">
    <s:textfield name="user.address" theme="simple"></s:textfield></td>
    <th>EMAIL</th>
    <td  align="left" class="tr_s" onmouseover="this.className='tr_o'" onmouseout="this.className='tr_s'">
    <s:textfield name="user.email" theme="simple"></s:textfield></td>
  </tr>
  <tr align=middle>
    <th>�ֻ�</th>
    <td  align="left" class="tr_s" onmouseover="this.className='tr_o'" onmouseout="this.className='tr_s'">
    <s:textfield name="user.moblile" theme="simple"></s:textfield></td>
    <th>�绰</th>
    <td  align="left" class="tr_s" onmouseover="this.className='tr_o'" onmouseout="this.className='tr_s'">
    <s:textfield name="user.phone" theme="simple"></s:textfield></td>
  </tr>
  <tr align=middle>
    <th>������ò</th>
    <td  align="left" class="tr_s" onmouseover="this.className='tr_o'" onmouseout="this.className='tr_s'">
    <s:textfield name="user.political" theme="simple"></s:textfield></td>
    <th>��ҵѧУ</th>
    <td  align="left" class="tr_s" onmouseover="this.className='tr_o'" onmouseout="this.className='tr_s'">
   <s:textfield name="user.school" theme="simple"></s:textfield>
   </td>
  </tr>
  <tr align=middle>
    <th>��ҵʱ��</th>
    <td align="left" class="tr_s" onmouseover="this.className='tr_o'" onmouseout="this.className='tr_s'">
    <s:textfield name="user.graduate_date" theme="simple"></s:textfield>
</td>
    <th>ѧ��</th>
    <td  align="left" class="tr_s" onmouseover="this.className='tr_o'" onmouseout="this.className='tr_s'">
   <s:textfield name="user.education_b" theme="simple"></s:textfield>
   </td>
  </tr>
  <tr align=middle>
    <th>רҵ</th>
    <td  align="left" class="tr_s" onmouseover="this.className='tr_o'" onmouseout="this.className='tr_s'">
       <s:textfield name="user.major" theme="simple"></s:textfield>
</td>
    <th>ְ��</th>
    <td  align="left" class="tr_s" onmouseover="this.className='tr_o'" onmouseout="this.className='tr_s'">
      <s:textfield name="user.rank" theme="simple"></s:textfield>
</td>
  </tr>
  <tr align=middle>
    <th>��ע</th>
    <td colspan="3"  align="left" class="tr_s" onmouseover="this.className='tr_o'" onmouseout="this.className='tr_s'">
       <s:textarea name="user.reamark" theme="simple"></s:textarea>
</td>
  </tr>

</table>

        <table width="100%" border="0" cellpadding="0" cellspacing="0" class="table0">
          <tr>
            <td>
              <div align="center">
                <input type="submit" class=btn_mouseout onMouseDown="this.className='btn_mousedown'" onMouseUp="this.className='btn_mouseup'" onMouseOver="this.className='btn_mouseover'" onMouseOut="this.className='btn_mouseout'"  value="����">
				
			 </input>

       <input type="button" class=btn_mouseout onMouseDown="this.className='btn_mousedown'" onMouseUp="this.className='btn_mouseup'" onMouseOver="this.className='btn_mouseover'" onMouseOut="this.className='btn_mouseout'" onClick="window.location='personal_psd.htm'" value="�޸�����">
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
