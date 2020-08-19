<meta charset="utf-8" />
<%@language="vbscript" codepage="65001"%>
<!--#include file ="conn.asp"-->
<%
	kkr = trim(request.form("kkr"))
	sjh = trim(request.form("sjh"))
	bz = trim(request.form("bz"))
	rq = trim(request.form("rq"))
	hys = trim(request.form("hys"))
	sj = trim(request.form("sj"))
	sj1 = trim(request.form("sj1"))
	sj2 = trim(request.form("sj2"))
	sj3 = trim(request.form("sj3"))
	cook=request.Form("cook")
	
	sql = "select * from meetorder_hs where DATE='"&rq&"' and ROOM='"&hys&"' and TIME='"&sj&"'"
	rs.open sql,conn,1,3
	if rs("USER")<>"" then
		response.write "<script language='javascript'>"
		response.write "alert('当前时间已经被预定!请重新预定');"
		response.write "location.href='javascript:history.go(-1)';"
		response.write "</script>"
		response.end
	end if
	
	if sj1 <> "" then
		sql1 = "select * from meetorder_hs where DATE='"&rq&"' and ROOM='"&hys&"' and TIME='"&sj1&"'"
		rs1.open sql1,conn,1,3
		if rs1("USER")<>"" then
			response.write "<script language='javascript'>"
			response.write "alert('当前时间已经被预定!请重新预定');"
			response.write "location.href='javascript:history.go(-1)';"
			response.write "</script>"
			response.end
		end if 
	end if 
	
	if sj2 <> "" then 
		sql2 = "select * from meetorder_hs where DATE='"&rq&"' and ROOM='"&hys&"' and TIME='"&sj2&"'"
		rs2.open sql2,conn,1,3
		if rs2("USER")<>"" then
			response.write "<script language='javascript'>"
			response.write "alert('当前时间已经被预定!请重新预定');"
			response.write "location.href='javascript:history.go(-1)';"
			response.write "</script>"
			response.end
		end if
	end if 
	
	if sj3 <> "" then
		sql3 = "select * from meetorder_hs where DATE='"&rq&"' and ROOM='"&hys&"' and TIME='"&sj3&"'"
		rs3.open sql3,conn,1,3
		if rs3("USER")<>"" then
			response.write "<script language='javascript'>"
			response.write "alert('当前时间已经被预定!请重新预定');"
			response.write "location.href='javascript:history.go(-1)';"
			response.write "</script>"
			response.end
		end if 
	end if 
	
	response.cookies("huancun")("DATE")= rq
	response.cookies("huancun")("ROOM")= hys
	response.cookies("huancun")("TIME")= sj
	response.cookies("huancun")("TIME1")= sj1
	response.cookies("huancun")("TIME2")= sj2
	response.cookies("huancun")("TIME3")= sj3
	response.cookies("huancun")("USER")= kkr
	response.cookies("huancun")("SJH")= sjh
	response.cookies("huancun")("BZ")= bz
	if request.form("cook")<>"0" then response.cookies("huancun").expires=now+cook
	response.write "<meta http-equiv='refresh' content='0;URL=hs_meet_sql_1.asp'>"

	
	rs.close
	set rs=nothing
%>