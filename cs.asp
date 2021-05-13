<meta charset="utf-8" />
<%@language="vbscript" codepage="65001"%>
<!--#include file="conn.asp"-->
<!--#include file="md5.asp"-->
<%
	Url = trim(Request.ServerVariables("HTTP_REFERER"))
	if Url <> "http://192.168.7.160/" and Url<>"http://jingsh.xyz/" and Url<>"http://192.168.7.160/index.html" then
	response.redirect "http://192.168.7.160/index.html"		
	else
	response.redirect "http://jingsh.xyz/meetingbooking.asp"	
	end if
%>