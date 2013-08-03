<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<meta http-equiv="Content-Language" content="zh-cn">
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>日常办公</title>
<link href="style/styles.css" rel="STYLESHEET" type="text/css">
<SCRIPT src="images/myweb.js"></SCRIPT>
<script language="JavaScript">
	function checkit() {
		var res = document.forms[0].name.value;
		if (res == "") {
			alert("分组名称不能为空");
			document.forms[0].name.focus();
			return false;
		}
		res = String(res).replace(/^[\s]+|[\s]+$/g, '');
		if (res == "") {
			alert("分组名称不能为空");
			document.forms[0].name.focus();
			return false;
		}
		document.forms[0].name.value = res;
		return true;
	}
	function myAdd() {
		if (checkit())
			{
		document.forms[0].action = "changeTeam";
		document.forms[0].submit();
			}
	}

	function myModify() {
		if (checkit()) {
			document.forms[0].action = "address_list_group.htm";
			document.forms[0].submit();
		}
	}

	function myAlert(errorInfo) {
		alert(errorInfo);
	}
</script>

</head>
<body class="body0">
	<div align="center">
		<table class="table_path">
			<tr>
				<td>您当前的位置：<a href="#"><span class="txtpath">日常办公</span>
				</a> &gt; <a href="#"><span class="txtpath">单位通讯录</span>
				</a> &gt; 通讯录分组维护</td>
				<td align="right"><script language=JavaScript>
					today = new Date();
					function initArray() {
						this.length = initArray.arguments.length
						for ( var i = 0; i < this.length; i++)
							this[i + 1] = initArray.arguments[i]
					}
					var d = new initArray(" 星期日", " 星期一", " 星期二", " 星期三",
							" 星期四", " 星期五", " 星期六");
					document.write("", today.getYear(), "年",
							today.getMonth() + 1, "月", today.getDate(), "日 ",
							d[today.getDay() + 1], "");
				</script>
				</td>
			</tr>

		</table>

		<form name="addressForm" method="POST"
			action="/yl/system/addressAction.do?method=addaddress">

			<table cellSpacing=1 cellPadding=2 class="table2">
				<tr>
					<th scope="row">分组名称</th>
					<td class="tr_s" onmouseover="this.className='tr_o'"
						onmouseout="this.className='tr_s'"><s:textfield
							name="team.name" theme="simple"></s:textfield></td>
				</tr>
				<tr>
					<th scope="row">备注</th>
					<td class="tr_d" onmouseover="this.className='tr_o'"
						onmouseout="this.className='tr_d'"><s:textfield
							name="team.remark" theme="simple"></s:textfield></td>
				</tr>
			</table>
			<s:hidden name="team.id" theme="simple"></s:hidden>
			<table width="100%" border="0" cellpadding="0" cellspacing="0"
				class="table0">
				<tr>
					<td>
						<div align="center">
							<input name="button5" type="button" class=btn_mouseout
								onMouseDown="this.className='btn_mousedown'"
								onMouseUp="this.className='btn_mouseup'"
								onMouseOver="this.className='btn_mouseover'"
								onMouseOut="this.className='btn_mouseout'" onClick="myAdd();"
								value="保存"> <input name="button32" type="button"
								class=btn_mouseout onMouseDown="this.className='btn_mousedown'"
								onMouseUp="this.className='btn_mouseup'"
								onMouseOver="this.className='btn_mouseover'"
								onMouseOut="this.className='btn_mouseout'"
								onClick='history.go(-1)' value="返回">
						</div>
					</td>
				</tr>
				<tr>
					<td>&nbsp;</td>
				</tr>
			</table>

		</form>
		<p>&nbsp;</p>
	</div>
</body>
<script language="JavaScript">
	var errorInfo = "null";
	if (errorInfo != null && errorInfo != "null" && errorInfo != "")
		alert(errorInfo);
	document.forms[0].name.focus();
</script>
</html>
