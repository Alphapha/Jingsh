<meta charset="utf-8" />
<%@language="vbscript" codepage="65001"%>
<!--#include file="conn.asp"-->
<%
	sql="insert into download (type,name,ls) values('"&request.form("lb")&"','"&request.form("wjm")&"','"&request.form("ls")&"')"
	rs.open sql,conn,1,3
	response.write "<script>alert('添加成功！');location.href='admin.asp';</script>"
%>
