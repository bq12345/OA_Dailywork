<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
   <title>�����ɹ�</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link href="style/styles.css" rel="stylesheet" type="text/css">
<base target="mainFrame">
<script language="javascript">

var tt="error.htm";
  function jump(){
    setTimeout("goback()","1000");
  }
  function goback(){
  window.location=top.targeturl;
  }
</script>
</head>

<BODY class="body0">
<table border="0" width="100%" id="table1" height="100%" cellspacing="0" cellpadding="0">
	<tr>
		<td>
		<div align="center">
			<table border="0" width="400" id="table2" height="316" cellspacing="0" cellpadding="0">
				<tr>
					<td valign="top" background="images/okbg.gif">
					<table border="0" width="100%" id="table3" cellspacing="0" cellpadding="0">
						<tr>
							<td height="33" width="9%">��</td>
							
                  <td height="33" width="64%" class="txt_errortitle"> �����ɹ�</td>
							<td height="33" width="27%">��</td>
						</tr>
						<tr>
							<td colspan="3">��</td>
						</tr>
						<tr>
							<td colspan="3" height="237">
							<table border="0" width="100%" id="table4" cellspacing="0" cellpadding="0">
								<tr>
									<td width="6%">��</td>
									
                        <td width="88%" class="txt_errorcontent" align="center">�����ɹ���</td>
									<td width="6%">��</td>
								</tr>
							</table>
							</td>
						</tr>
						<tr>
							<td colspan="3">
							<p align="left">����<img border="0" src="images/back.gif" width="21" height="17" align="middle">
							<a href="queryPolicy" target="_self"><font color="#0033CC">����</font></a></td>
							<!--onClick="alert(parent.leftframe.targeturl);location=parent.leftframe.targeturl"  target="_self"-->
						</tr>												
					</table>
					</td>
				</tr>
			</table>
		</div>
		</td>
	</tr>
</table>
</body>
</html>
