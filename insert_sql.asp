<meta charset="utf-8" />
<%@language="vbscript" codepage="65001"%>
<!--#include file="conn.asp"-->
<%
	sql="insert into list (律所,姓名,类别,职务,手机,邮箱) values('"&request.form("ls")&"','"&request.form("xm")&"','"&request.form("lb")&"','"&request.form("zw")&"','"&request.form("sj")&"','"&request.form("yx")&"')"
	rs.open sql,conn,1,3
	response.write "<script>alert('添加成功！');location.href='list.asp';</script>"
%>
