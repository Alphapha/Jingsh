<meta charset="utf-8" />
<%@language="vbscript" codepage="65001"%>
<!--#include file ="conn.asp"-->
<%
	tim=now()
	ip=Request.serverVariables("REMOTE_ADDR")	
	sql="update meetorderbig set DATE='"&request.form("rq")&"',WEEK='"&request.form("xq")&"',TIME='"&request.form("sj")&"',MC='"&request.form("mc")&"',ZT='"&request.form("zt")&"',ZJR='"&request.form("zjr")&"',ROOM='"&request.form("hys")&"',KKR='"&request.form("kkr")&"',ZBF='"&request.form("zbf")&"',BZ='"&request.form("bz")&"',ORDTIME='"&tim&"',IP='"&ip&"' where XH='"&request("xh")&"'"
	rs.open sql,conn,1,3
	response.write "<script>alert('修改成功!');location.href='mt.asp';</script>"
%>