<meta charset="utf-8" />
<%@language="vbscript" codepage="65001"%>
<!--#include file ="conn.asp"-->
<%
	sql="update list set 律所='"&request.form("ls")&"',姓名='"&request.form("xm")&"',类别='"&request.form("lb")&"',职务='"&request.form("zw")&"',手机='"&request.form("sj")&"',邮箱='"&request.form("yx")&"' where 序号='"&request.form("xh")&"'"
	rs.open sql,conn,1,3
	response.write"<script>alert('修改成功！');location.href='list.asp'; </script>"
%>