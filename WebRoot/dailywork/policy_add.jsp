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
<script language="javascript">
  function subchoose(){
        if(document.statuteFileForm.name.value==""||document.statuteFileForm.name.value.replace(/ /g,"")==""){
			alert("请输入名称！");
			document.forms[0].name.value="";
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
			<td >您当前的位置：<a href="#"><span class="txtpath">日常办公</span></a> &gt; <a href="#"><span class="txtpath">政策法规</span></a> &gt; 信息维护</td>
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
<s:form name="statuteFileForm" method="post" action="addPolicy" onsubmit="return subchoose()" enctype="multipart/form-data">
	
<table  cellSpacing=1 cellPadding=2 class="table2">
				  <tr>
					<th scope="row">名称</th>
					<td class="tr_s" onmouseover="this.className='tr_o'" onmouseout="this.className='tr_s'">
						<input type="text" name="policy.name" value=""></input>
					</td>
				</tr>
                                <tr>
				  <th scope="row">字号</th>
					<td class="tr_d" onmouseover="this.className='tr_o'" onmouseout="this.className='tr_d'">
						<input type="text" name="policy.topic" value=""></input>
					</td>
				</tr>
                                <tr>
				  <th scope="row">类型</th>
					<td class="tr_s" onmouseover="this.className='tr_o'" onmouseout="this.className='tr_s'">
						<s:select list="list" listValue="name" listKey="name" name="policy.type" theme="simple"></s:select>
						</td>
				</tr>
                                <tr>
				  <th scope="row">下发部门</th>
					<td class="tr_d" onmouseover="this.className='tr_o'" onmouseout="this.className='tr_d'">
						<input type="text" name="policy.work" value=""></input>
					</td>
				</tr>
				<tr>
					<th scope="row">下发日期</th>
					<td class="tr_s" onmouseover="this.className='tr_o'" onmouseout="this.className='tr_s'">
						<input type="date" name="policy.date"/>
					</td>
				</tr>

				<tr>
					<th scope="row">附件</th>
					<td class="tr_d" onmouseover="this.className='tr_o'" onmouseout="this.className='tr_d'">
						<input type="file" name="image"></input>
					</td>
				</tr>

                                <tr>
				<th scope="row">备注</th>
					<td class="tr_s" onmouseover="this.className='tr_o'" onmouseout="this.className='tr_s'">
						<textarea name="policy.remark" cols="30" rows="5"></textarea>
					</td>
				</tr>

			</table>


        <table width="100%" border="0" cellpadding="0" cellspacing="0" class="table0">
          <tr>
            <td>
              <div align="center">
                <input   type="submit" class=btn_mouseout onMouseDown="this.className='btn_mousedown'" onMouseUp="this.className='btn_mouseup'" onMouseOver="this.className='btn_mouseover'" onMouseOut="this.className='btn_mouseout'"  value="保存">
        　</input>
       　
        <input  type="button" class=btn_mouseout onMouseDown="this.className='btn_mousedown'" onMouseUp="this.className='btn_mouseup'" onMouseOver="this.className='btn_mouseover'" onMouseOut="this.className='btn_mouseout'" onClick='history.go(-1)' value="返回">
           </input> </div></td>
          </tr>
          <tr>
            <td>&nbsp;</td>
          </tr>
        </table>

</s:form>
</div>
</body>
</html>
