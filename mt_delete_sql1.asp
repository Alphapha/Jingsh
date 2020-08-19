<meta charset="utf-8" />
<%@language="vbscript" codepage="65001"%>
<!--#include file="conn.asp"-->
<%
	tim=now()
	ip=Request.serverVariables("REMOTE_ADDR")
	sql="update meetorderbig set DATE=null,WEEK=null,TIME=null,MC=null,ZT=null,ZJR=null,ROOM=null,KKR=null,ZBF=null,BZ=null,ORDTIME='"&tim&"',IP='"&ip&"' where XH='"&request("xh")&"'"
	rs.open sql,conn,1,3
	response.write "<script>alert('取消成功!');location.href='mt.asp';</script>"
%> 
