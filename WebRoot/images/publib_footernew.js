﻿document.write("<div class='pub_footerall'>");
document.write("<dl>");
document.write("<dt></dt>");
document.write(" <dd><a href='http://www.csdn.net/company/about.html' target='_blank'>公司简介</a>|<a href='http://www.csdn.net/company/recruit.html' target='_blank'>招贤纳士</a>|<a href='http://www.csdn.net/company/marketing.html' target='_blank'>广告服务</a>|<a href='http://www.csdn.net/company/account.html' target='_blank'>银行汇款帐号</a>|<a href='http://www.csdn.net/company/contact.html' target='_blank'>联系方式</a>|<a href='http://www.csdn.net/company/statement.html' target='_blank'>版权声明</a>|<a href='http://www.csdn.net/company/layer.html' target='_blank'>法律顾问</a>|<a href='mailto:webmaster@csdn.net'>问题报告</a></dd>");
document.write("<dd>京&nbsp;ICP&nbsp;证&nbsp;070598&nbsp;号</dd>");
document.write("<dd>北京创新乐知信息技术有限公司 版权所有</dd>");
document.write("<dd><img src='/images/pic_email.gif' alt='' title='' /> 联系邮箱:webmaster(at)csdn.net</dd>");
document.write("<dd>Copyright &copy; 1999-2012, CSDN.NET, All Rights Reserved</dd>");
document.write("<dd><a href='http://www.hd315.gov.cn/beian/view.asp?bianhao=010202001032100010' target='_blank'><img src='/images/gongshang_logos.gif' alt='GongshangLogo' alt='' title='' /></a>");
document.write("<span style='padding-left:20px;'></span>");
document.write("<a href='https://trustsealinfo.verisign.com/splash?form_file=fdf/splash.fdf&dn=passport.csdn.net&lang=zh_cn' target=_blank><img src='/images/vseal.gif' /></a>");
document.write("</dd></dl>");
document.write("</div>");

if ('http:' == document.location.protocol) {
    var stamp = Math.floor(new Date() / 120000).toString(36);
    document.write('<script id="noticeScript" type="text/javascript"  btnId="header_notice_num" wrapId="note1" count="5" subcount="5" src="http://static.csdn.net/rabbit/note/js/note.js?_r=' + stamp + '"></script>');
    document.write('<script type="text/javascript" charset="utf-8" src="http://csdnimg.cn/pubfooter/js/tracking.js"></script>');
}