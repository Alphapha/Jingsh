<meta charset="utf-8" />
<%@language="vbscript" codepage="65001"%>
<%
Session.abandon
response.cookies("buyok")=""
%>
<script language='javascript'>
alert('您已经成功退出，点击“确定”返回首页！');
location.href='index.html';
</script>
