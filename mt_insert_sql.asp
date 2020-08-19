<meta charset="utf-8" />
<%@language="vbscript" codepage="65001"%>
<!--#include file ="conn.asp"-->
<%
	tim=now()
	ip=Request.serverVariables("REMOTE_ADDR")
	sql="insert into meetorderbig(DATE,WEEK,TIME,MC,ZT,ZJR,ROOM,KKR,ZBF,BZ,ORDTIME,IP) values('"&request.form("rq")&"','"&request.form("xq")&"','"&request.form("sj")&"','"&request.form("mc")&"','"&request.form("zt")&"','"&request.form("zjr")&"','"&request.form("hys")&"','"&request.form("kkr")&"','"&request.form("zbf")&"','"&request.form("bz")&"','"&tim&"','"&ip&"')"
	rs.open sql,conn,1,3
	response.write "<script>alert('预定成功!');location.href='mt.asp';</script>"
%>