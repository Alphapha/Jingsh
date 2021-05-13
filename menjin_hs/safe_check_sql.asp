<meta charset="utf-8" />
<%@language="vbscript" codepage="65001"%>
<!--#include file="../conn.asp"-->
<%
	menjin_name = trim(request.Form("menjin_name"))
	menjin_phone = trim(request.Form("menjin_phone"))
	tim=now()
	ip=Request.serverVariables("REMOTE_ADDR")
	
	sql = "select * from hs_list where 姓名 ='"&menjin_name&"' and 手机 ='"&menjin_phone&"' and 状态='在职'"
	sql3 = "insert into log_hs (log_user,log_time,log_ip,log_content) values('"&request.form("menjin_name")&request.form("menjin_phone")&"','"&tim&"','"&ip&"','"&replace(sql,chr(39),chr(34))&"')"
	rs.open sql,conn,1,3
	rs1.open sql3,conn,1,3
	
	if (rs.bof and rs.eof) then'查找表判断是否已入职
		response.write "<script>alert('你不满足办卡条件,请联系相关负责人处理后再来办理');location.href='../aadmin/hr_lawyer_hs.asp'</script>"
		response.end
	else
		response.write "<script>alert('审核通过,进入下一步');location.href='../menjin_hs/safe_pay.asp'</script>"
	end if
%>