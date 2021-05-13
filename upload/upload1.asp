
<meta charset="utf-8" />
<%@language="vbscript" codepage="65001"%>
<!--#include file="conn.asp"-->

<%
	ff1 = trim(request.form("ll1"))
	ff2 = trim(request.form("ll2"))
	ff3 = trim(request.form("ll3"))
	ff4 = trim(request.form("ll4"))
	ff5 = trim(request.form("ll5"))
	ff6 = trim(request.form("ll6"))
	ff7 = trim(request.form("ll7"))
	ff8 = Request.serverVariables("REMOTE_ADDR")
	ff9 = now()
	sql = "insert into PC(mingzi,xitong,OfficeType,ExistOffice,UseAdobe,ExistAdobe,UseSoftware,Suggestion,IP,Time) values('"&ff1&"','"&ff1&"','"&ff2&"','"&ff3&"','"&ff4&"','"&ff5&"','"&ff6&"','"&ff7&"','"&ff8&"','"&ff9&"')"
	rs.open sql,conn,1,3
	rs.close
	set rs=nothing
	
%>