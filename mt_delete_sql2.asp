<meta charset="utf-8" />
<%@language="vbscript" codepage="65001"%>
<!--#include file="conn.asp"-->
<%
	tim=now()
	ip=Request.serverVariables("REMOTE_ADDR")
	sql="update meetorder_hs set USER=null,SJH=null,BZ=null,ORDTIME='"&tim&"',IP='"&ip&"' where DATE='"&request("r_rq")&"' and ROOM='"&request("r_fj")&"' and TIME='"&request("r_sj")&"'"
	rs.open sql,conn,1,3
	response.write "<script>alert('取消成功!');location.href='mt.asp';</script>"
%>
