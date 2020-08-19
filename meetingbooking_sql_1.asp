<meta charset="utf-8" />
<%@language="vbscript" codepage="65001"%>
<!--#include file ="conn.asp"-->
<%
	rq=request.cookies("huancun")("DATE")
	hys=request.cookies("huancun")("ROOM")
	sj=request.cookies("huancun")("TIME")
	sj1=request.cookies("huancun")("TIME1")
	sj2=request.cookies("huancun")("TIME2")
	sj3=request.cookies("huancun")("TIME3")
	kkr=request.cookies("huancun")("USER")
	sjh=request.cookies("huancun")("SJH")
	bz=request.cookies("huancun")("BZ")
	cook=trim(request.Form("cook"))
	tim=now()
	ip=Request.serverVariables("REMOTE_ADDR")
	hn=Request.serverVariables("Content_Length")
	pt=Request.serverVariables("Server_Port")
	' response.write Userid
	' response.write cook
	set rs=server.CreateObject("adodb.recordset")
	' sql = "select * from member where Userid ='"&Userid&"'"
	sql = "update meetorder set USER='"&kkr&"',SJH='"&sjh&"',BZ='"&bz&"',ORDTIME='"&tim&"',IP='"&ip&"',HOSTNAME='"&hn&"',PATHINFO='"&pt&"' where DATE='"&rq&"' and ROOM='"&hys&"' and TIME='"&sj&"'"
	sql1 = "update meetorder set USER='"&kkr&"',SJH='"&sjh&"',BZ='"&bz&"',ORDTIME='"&tim&"',IP='"&ip&"',HOSTNAME='"&hn&"',PATHINFO='"&pt&"' where DATE='"&rq&"' and ROOM='"&hys&"' and TIME='"&sj1&"'"
	sql2 = "update meetorder set USER='"&kkr&"',SJH='"&sjh&"',BZ='"&bz&"',ORDTIME='"&tim&"',IP='"&ip&"',HOSTNAME='"&hn&"',PATHINFO='"&pt&"' where DATE='"&rq&"' and ROOM='"&hys&"' and TIME='"&sj2&"'"
	sql3 = "update meetorder set USER='"&kkr&"',SJH='"&sjh&"',BZ='"&bz&"',ORDTIME='"&tim&"',IP='"&ip&"',HOSTNAME='"&hn&"',PATHINFO='"&pt&"' where DATE='"&rq&"' and ROOM='"&hys&"' and TIME='"&sj3&"'"
	rs.open sql,conn,1,3
	rs1.open sql1,conn,1,3
	rs2.open sql2,conn,1,3
	rs3.open sql3,conn,1,3
	response.write "<script language='javascript'>"
	response.write "alert('预定成功');location.href='meetingbooking.asp';"	
	response.write "</script>"
	response.end
	rs.close
	set rs=nothing
%>