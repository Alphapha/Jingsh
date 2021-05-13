<%
	set conn=Server.Createobject("adodb.Connection") 
	conn.open "driver={SQL Server};Server=192.168.7.17;uid=sa;pwd=123456;database=zsd_FaceCheck222"
	set rs=server.createObject("adodb.recordset")
	set rs1=server.createObject("adodb.recordset")
	set rs2=server.createObject("adodb.recordset")
	set rs3=server.createObject("adodb.recordset")
	set rs4=server.createObject("adodb.recordset")
	set rs5=server.createObject("adodb.recordset")
	set rs6=server.createObject("adodb.recordset")
	set rs7=server.createObject("adodb.recordset")
	set rs8=server.createObject("adodb.recordset")
	set rs9=server.createObject("adodb.recordset")
	set rs10=server.createObject("adodb.recordset")
%>
