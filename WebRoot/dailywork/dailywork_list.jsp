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
<title>�ճ��칫</title>
<link href="style/styles.css" rel="STYLESHEET" type="text/css">
<SCRIPT language=JavaScript>
	function modify(id){
		window.location.href="'getDailywork?id='+id";
	}
	function del(id){
		if(confirm('�Ƿ�ȷ��ɾ����')){
			window.location.href="'delDailywork?id='+id";
			return true;
		}
	}
</SCRIPT>
</head>

<body class="body0">
	<div align="center">
	<table class="table_path">
		<tr>
		<td >����ǰ��λ�ã�<a href="#"><span class="txtpath">�ճ��칫</span></a> &gt; <a href="#"><span class="txtpath">�ճ̹���</span></a> &gt; �ճ��б�</td>
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
      <table  cellSpacing=1 cellPadding=2 class="table1" id="table4">
			<tr>
				<th scope="col">����</th>
				<th scope="col">��ʼʱ��</th>
				<th scope="col">����ʱ��</th>
				<th scope="col">����</th>				
				<th scope="col">����</th>
			</tr>
			
				<s:iterator value="list">
				
					<tr class="tr_s" onmouseover="this.className='tr_o'" onmouseout="this.className='tr_s'">
						<td align="center" nowrap>${date}</td>
						<td align="center"  nowrap>${start_time}</td>
						<td align="center"  nowrap>${end_time}</td>
						<td align="center" nowrap><div align="center">
						<s:url id="view" action="viewDailywork">
                	<s:param name="id">${id}</s:param>
       </s:url>
       <s:a href="%{view}">${topic}</s:a>
       </div>
       </td>

						
						<td align="center" nowrap >
							
            	
                	 <s:url id="get" action="getDailywork">
                	<s:param name="id">${id}</s:param>
       </s:url>	
       
       <s:a href="%{get}"><img src="images/btn_edit.gif" style="cursor: hand;" alt='�޸�'"></s:a>
       
            <s:url id="del" action="delDailywork">
	<s:param name="id">${id}</s:param>
       </s:url>
       <s:a href="%{del}"><img src="images/btn_del.gif" style="cursor: hand;" alt='ɾ��'"></s:a>
							

						</td>
					</tr>
				</s:iterator>										
		</table>
<table width="100%" border="0" cellpadding="0" cellspacing="0" class="table0">
  <tr>
  
    <td  width="35%"><input name="button" type="button" class=btn_mouseout onmousedown="this.className='btn_mousedown'" onmouseup="this.className='btn_mouseup'" onmouseover="this.className='btn_mouseover'" onmouseout="this.className='btn_mouseout'" value="����ճ�" onClick="location.href='dailywork/dailywork_add.jsp'">
	&nbsp;
		&nbsp;
			&nbsp;
	<input name="button" type="button" class=btn_mouseout onmousedown="this.className='btn_mousedown'" onmouseup="this.className='btn_mouseup'" onmouseover="this.className='btn_mouseover'" onmouseout="this.className='btn_mouseout'" value="����ģ��" onClick="location.href='queryDailyworkStandard'" ></td>
  </td>
  <td width="62%">
              <p align="right"><font color="#008080">��</font><font color="#800000"> 1</font><font color="#008080"> ҳ�� ��ҳ����һҳ����һҳ��βҳ&nbsp; ��ת
                    <select name="pageNum">
						<option name="1">1</option>		
						<option name="1">2</option>		
						<option name="1">3</option>				
					</select>
					
        ҳ</font></td>
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
