<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
 <link href="style/text01.css" rel="stylesheet" type="text/css">
<title>�칫ҵ����Դϵͳ</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<META HTTP-EQUIV="Pragma" CONTENT="no-cache"> 
<META HTTP-EQUIV="Cache-Control" CONTENT="no-cache"> 
<META HTTP-EQUIV="Expires" CONTENT="0"> 
<script language="JavaScript" type="text/JavaScript">
<!--
function MM_swapImgRestore() { //v3.0
  var i,x,a=document.MM_sr; for(i=0;a&&i<a.length&&(x=a[i])&&x.oSrc;i++) x.src=x.oSrc;
}

function MM_preloadImages() { //v3.0
  var d=document; if(d.images){ if(!d.MM_p) d.MM_p=new Array();
    var i,j=d.MM_p.length,a=MM_preloadImages.arguments; for(i=0; i<a.length; i++)
    if (a[i].indexOf("#")!=0){ d.MM_p[j]=new Image; d.MM_p[j++].src=a[i];}}
}

function MM_findObj(n, d) { //v4.01
  var p,i,x;  if(!d) d=document; if((p=n.indexOf("?"))>0&&parent.frames.length) {
    d=parent.frames[n.substring(p+1)].document; n=n.substring(0,p);}
  if(!(x=d[n])&&d.all) x=d.all[n]; for (i=0;!x&&i<d.forms.length;i++) x=d.forms[i][n];
  for(i=0;!x&&d.layers&&i<d.layers.length;i++) x=MM_findObj(n,d.layers[i].document);
  if(!x && d.getElementById) x=d.getElementById(n); return x;
}

function MM_swapImage() { //v3.0
  var i,j=0,x,a=MM_swapImage.arguments; document.MM_sr=new Array; for(i=0;i<(a.length-2);i+=3)
   if ((x=MM_findObj(a[i]))!=null){document.MM_sr[j++]=x; if(!x.oSrc) x.oSrc=x.src; x.src=a[i+2];}
}
//-->
</script>

<script language="JavaScript" type="text/JavaScript">
<!--
function goToURL() {
}

function checkinput(){

  if (document.form1.username.value==""){
	  alert("�û�������Ϊ��!");
	  document.form1.username.focus();
	  return false;  
	}
  if (document.form1.password.value==""){
	  alert("���벻��Ϊ��!");
	  document.form1.password.focus();
	  return false;  
	}
//  if (document.form1.rand.value!="")
// {
//  	alert("��������֤�룡");
// 	return false;
//  }
  
  return true;
}

function mySubmit()
{
	if (checkinput())
	{
		//alert("begin submit");
		document.form1.submit();
	}
}

//-->
</script>
</head>

<body background="images/bg.gif" leftmargin="0" topmargin="0" onLoad="MM_preloadImages('images/sy_3_3.jpg')">
<form name="form1" action="login" method="post" onsubmit="return checkinput();">	
<table width="100%" height="100%" border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td width="1040" valign="middle"><table width="1000" height="453" border="0" align="center" cellpadding="0" cellspacing="0">
        <tr align="center" valign="top"> 
          <td height="161" colspan="3"><img src="images/sy_1.jpg" width="1000" height="161"></td>
        </tr>
        <tr align="center" valign="top"> 
          <td width="326" height="227" align="left"><img src="images/sy_2.jpg" width="326" height="227"></td>
          <td width="389"><table width="389" height="227" border="0" cellpadding="0" cellspacing="0">
              <tr align="left" valign="top"> 
                <td height="181" colspan="3"> 
                	
                  	
                  <table width="389" border="0" cellspacing="0" cellpadding="0">
                    <tr> 
                      <td width="177"><img src="images/sy_3_1_1.jpg" width="177" height="181"></td>
                      <td width="127" align="center" valign="top"> 
                      	
                        <table width="127" height="139" border="0" cellpadding="0" cellspacing="0">
                          <tr>
                            <td width="127"><img src="images/sy_3_1_2.jpg" width="127" height="59"></td>
                          </tr>
                          <tr>
                            <td width="127" height="26" align="left" background="images/sy_3_1_3.jpg"> 
                           
                              <div align="center">
                                <INPUT 
                  name="id" type="text" class=inuptCN id="Text1" size=15 maxlength="20">
                  <s:if test="#session.user==null">
    <s:fielderror key="loginError"></s:fielderror>
    </s:if>
                              </div></td>
                          </tr>
                          <tr>
                            <td width="127" height="30"><img src="images/sy_3_1_4.jpg" width="127" height="30"></td>
                          </tr>
                          <tr>
                            <td width="127" height="26" align="left" background="images/sy_3_1_5.jpg"> 
                              <div align="center">
                                <INPUT 
                  name="password" type="password" class=inuptCN id="domain" size=15 maxlength="20">
                              </div></td>
                          </tr>
                          <tr>
                            <td height="27"><img src="images/sy_3_1_6.jpg" width="127" height="40"></td>
                          </tr>
                        </table></td>
                      <td width="85" align="right" valign="top"><img src="images/sy_3_1_7.jpg" width="85" height="181"></td>
                    </tr>
                  </table>

                </td>
              </tr>
              <tr align="left" valign="top"> 
                <td width="144" height="45"><img src="images/sy_3_2.jpg" width="144" height="46"></td>
                <td width="98"><a target="_Self" onMouseOver="MM_swapImage('Image8','','images/sy_3_3.jpg',1)" onMouseOut="MM_swapImgRestore()"><input type="image" src="images/sy_3_3B.jpg" name="Image8" width="98" height="46" border="0"></a></td>
                <td width="147"><img src="images/sy_3_4.jpg" width="147" height="46"></td>
              </tr>
            </table></td>
          <td width="285" align="right"><img src="images/sy_4.jpg" width="285" height="227"></td>
        </tr>
        <tr align="center" valign="top"> 
          <td height="23" colspan="3"><img src="images/sy_5.jpg" width="1000" height="65"></td>
        </tr>
      </table>
      <table width="1000" border="0" align="center" cellpadding="0" cellspacing="0">
        <tr>
          <td height="17"><div align="right"><font size="2" face="System">- ��Ȩ���� 
              </font></div></td>
        </tr>
      </table>
      <div align="center"></div></td>
  </tr>
</table>
</form>
</body>
<script language="JavaScript">
	document.form1.username.focus();
</script>
</html>
