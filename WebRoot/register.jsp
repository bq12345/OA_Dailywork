<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>�칫ҵ����Դϵͳ ע��</title>
    <link href="images/style.css" rel="stylesheet" type="text/css">
    

    
</head>
<body background="images/bg_login.png" style="text-align: center;">

<div class="logo_login02">
    <img src="images/logo_login02.gif"></img>
</div>

<div class="content_login" >

<form action="register" style="float: left;margin-top: 40px;text-align: center;" method="post">
	<div class="table">
		<table border="0" width="100%">
			<tbody>
			<tr>
				<td class="right" valign="top"><dfn>*</dfn>�û�����</td>
				<td>
					<div class="oneline">
						<input type="text" id="nick" class="inputbox" maxlength="20" name="user.name">
						
					</div><div class="clear"></div>
					<div class="twoline">
						��2��20���ַ���֧�����ġ�Ӣ�ġ����֡�"_"��"-"��
					</div>
								
				</td>
			</tr>
			<tr>
				<td width="150" class="right" valign="top"><dfn>*</dfn>E-mail��</td>
				<td>
					<div class="oneline">
						<input type="text" id="em" class="inputbox" maxlength="100" name="user.email">
					</div>
					<div class="twoline">
						������E-mail����ʹ�����ҵõ�����
					</div>
								
				</td>
			</tr>
			<tr>
				<td width="150" class="right" valign="top"><dfn>*</dfn>�Ա�</td>
				<td>
					<div class="oneline">
						<input type="text" class="inputbox" maxlength="100" name="user.sex">
					</div>
					<div class="twoline">
						���������Ա�
					</div>
								
				</td>
			</tr>
			<tr>
				<td width="150" class="right" valign="top"><dfn>*</dfn>�ֻ����룺</td>
				<td>
					<div class="oneline">
						<input type="text" id="em" class="inputbox" maxlength="100" name="user.mobile">
					</div>
					<div class="twoline">
						�������������ֻ������Ա��������ϵ������
					</div>
								
				</td>
			</tr>
			<tr>
				<td class="right" valign="top"><dfn>*</dfn>���룺</td>
				<td>
					<div class="oneline">
						<input type="password"  class="inputbox" maxlength="50" name="user.password">
					</div><div class="clear"></div>
					<div class="twoline">
						��Ϊ�����ʻ��İ�ȫ������ʹ���ַ�+���ֵȶ��ֲ�ͬ���͵���ϣ��ҳ��ȴ���5λ����
					</div>
								
				</td>
			</tr>
			<tr>
				<td class="right" valign="top"><dfn>*</dfn>�ٴ��������룺</td>
				<td>
					<div class="oneline">
						<input type="password" id="p2" class="inputbox" maxlength="50">
					</div>
					<div class="twoline">
                        ��ȷ������ס���롣��
					</div>
								
				</td>
			</tr>


	
		</tbody></table>
	</div>
</div>
<div class="login_cont10">
	<div class="table">
	<table border="0">
		<tbody><tr>
			<td width="150" class="right" valign="top"></td>
			<td>
				<input type="submit" value="ע��"/> 
			</td>
			<td>
				<input type="button" value="����" onclick="history.go(-1);"/> 
			</td>
		</tr>
	</tbody></table>
	</div>
</div>

</div>
</form>


</body></html>