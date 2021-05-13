<meta charset="utf-8" />
<%@language="vbscript" codepage="65001"%>
<!--#include file ="../conn.asp"-->
<%
	tim=now()
	ip=Request.serverVariables("REMOTE_ADDR")
	sql3="select 是否可退卡 from hs_safe where mj_id='"&request("xlh")&"'"
	rs3.open sql3,conn,1,3
	if rs3("是否可退卡")<>"可" then
		response.write"<script>alert('不满足退卡条件！');location.href='safe_mt.asp'; </script>"
	else
		sql4="update hs_safe_card_statistics set 使用情况 ='0' where 卡号='"&request("kh")&"'"
		sql1="update hs_safe set 编号_门禁卡='已退卡',退卡时间='"&tim&"',退卡操作IP='"&ip&"',是否可退卡='不可' where mj_id='"&request("xlh")&"'"
		<!--response.write sql1
		sql2="insert into log_hs (log_user,log_time,log_ip,log_content) values('退卡','"&tim&"','"&ip&"','"&replace(sql1,chr(39),chr(34))&"')"<!--repalce(str,chr(39),chr(34))将''转换为""使能够写入数据库
		sql5="insert into log_hs (log_user,log_time,log_ip,log_content) values('退卡','"&tim&"','"&ip&"','"&replace(sql4,chr(39),chr(34))&"')"
		<!--response.write sql2
		rs.open sql1,conn,1,3
		rs1.open sql2,conn,1,3
		rs4.open sql2,conn,1,3
		rs5.open sql2,conn,1,3
		response.write"<script>alert('退卡成功！');location.href='safe_mt.asp'; </script>"
	end if
%>