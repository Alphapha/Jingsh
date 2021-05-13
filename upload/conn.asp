<%
	set conn=Server.Createobject("adodb.Connection") 
	conn.open "Driver={mysql odbc 8.0 unicode driver};server=localhost;uid=yang;pwd=123;database=jingsh"
	set rs=server.createObject("adodb.recordset")
	set rs1=server.createObject("adodb.recordset")
	set rs2=server.createObject("adodb.recordset")
	set rs3=server.createObject("adodb.recordset")
%>
