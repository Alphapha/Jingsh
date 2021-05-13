<meta charset="utf-8" />
<%@language="vbscript" codepage="65001"%>
<!--#include file ="../conn.asp"-->
<%
	tim=now()
	ip=Request.serverVariables("REMOTE_ADDR")
	sql1="update hs_safe set 备注='"&request.form("备注")&"' where mj_id='"&request.form("xlh")&"'"
	sql3="update hs_list set 是否可补卡='"&request.form("zt")&"',上次修改时间='"&tim&"',IP='"&ip&"' where 姓名='"&request.form("xm")&"' and 手机='"&request.form("sj")&"'"
	<!--response.write sql1
	sql2="insert into log_hs (log_user,log_time,log_ip,log_content) values('"&request.form("xm")&request.form("sj")&"','"&tim&"','"&ip&"','"&replace(sql1,chr(39),chr(34))&"')"<!--repalce(str,chr(39),chr(34))将''转换为""使能够写入数据库
	sql4="insert into log_hs (log_user,log_time,log_ip,log_content) values('"&request.form("xm")&request.form("sj")&"','"&tim&"','"&ip&"','"&replace(sql3,chr(39),chr(34))&"')"
	<!--response.write sql2
	rs.open sql1,conn,1,3
	rs1.open sql2,conn,1,3
	rs3.open sql3,conn,1,3
	rs4.open sql4,conn,1,3
	response.write"<script>alert('修改成功！');location.href='safe_mt.asp'; </script>"
	
%>