<meta charset="utf-8" />
<%@Language="vbscript" Codepage="65001"%>
<!--#include file="conn.asp"-->
<%
	sql = "update site set User='"&request.form("xm")&"' where Site='"&request.form("xh")&"'"
	rs.open sql,conn,1,3
	response.write "<script>alert('修改成功');location.href='map_update.asp';</script>"
%>