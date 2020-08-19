<meta charset="utf-8" />
<%@language="vbscript" codepage="65001"%>
<!--#include file="conn.asp"-->
<%
	sql="insert into download (type,name) values('"&request.form("lb")&"','"&request.form("wjm")&"')"
	rs.open sql,conn,1,3
	response.write "<script>alert('添加成功！');location.href='download.asp';</script>"
%>
