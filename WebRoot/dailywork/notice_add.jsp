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
<title>�ճ��칫</title>
<link href="style/styles.css" rel="STYLESHEET" type="text/css"></link>

<script language=javascript>
  function subchoose(){
        if(document.statuteFileForm.name.value==""||document.statuteFileForm.name.value.replace(/ /g,"")==""){
			alert("���������ƣ�");
			document.statuteFileForm.name.value="";
			return false;
        }
        if(document.statuteFileForm.type.value=="1"){
			alert("��ѡ�����ͣ�");
			return false;
        }
        if(document.statuteFileForm.sendDate.value==""){
			alert("��ѡ���·����ڣ�");
			return false;
        }
	}
</script>
</head>

<body class="body0">
<div align="center">
	<table class="table_path">
		<tr>
			<td >����ǰ��λ�ã�<a href="#"><span class="txtpath">�ճ��칫</span></a> &gt; <a href="#"><span class="txtpath">������</span></a> &gt; ������ά��</td>
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
<form name="statuteFileForm" method="post" action="addNotice" enctype="multipart/form-data">
	
<table class="table2">
				<tr>
					<th scope="row">����</th>
					<td class="tr_s" onmouseover="this.className='tr_o'" onmouseout="this.className='tr_s'">
					<input type="date" name="notice.date" value=""></input>
					</td>
				</tr>
				<tr>
					<th scope="row">����</th>
					<td class="tr_d" onmouseover="this.className='tr_o'" onmouseout="this.className='tr_d'">
						<input size="50" type="text" name="notice.topic" value=""></input>
					</td>
				</tr>
				<tr>
					<th scope="row">����</th>
					<td class="tr_s" onmouseover="this.className='tr_o'" onmouseout="this.className='tr_s'">
						<textarea name="notice.data" cols="100" rows="15"></textarea>
					</td>
				</tr>
				<tr>
					<th scope="row">��ע</th>
					<td class="tr_d" onmouseover="this.className='tr_o'" onmouseout="this.className='tr_d'">
						<textarea name="notice.remark" cols="100" rows="3"></textarea>
					</td>
				</tr>
				<tr>
					<th scope="row">����</th>
					<td class="tr_s" onmouseover="this.className='tr_o'" onmouseout="this.className='tr_s'">
						<input type="file" name="image"></input>
					</td>
				</tr>
				<tr>
					<th scope="row">������</th>
					<td class="tr_d" onmouseover="this.className='tr_o'" onmouseout="this.className='tr_d'">
						<input size="50" type="text" name="notice.send_client" value="��¼�û�"></input>
					</td>
				</tr>
				<tr>
					<th scope="row">��������</th>
					<td class="tr_s" onmouseover="this.className='tr_o'" onmouseout="this.className='tr_s'">
					<input size="50" type="text" name="notice.work" value="���²�"></input>
					</td>
				</tr>
			</table>

        <table width="100%" border="0" cellpadding="0" cellspacing="0" class="table0">
          <tr>
            <td>
              <div align="center">
                <input name="button5" type="submit" value="����">
        ��</input>
       ��
        <input name="button32" type="button" class=btn_mouseout  onMouseUp="this.className='btn_mouseup'" onMouseOver="this.className='btn_mouseover'" onMouseOut="this.className='btn_mouseout'" onClick='history.go(-1)' value="����">
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
