<meta charset="utf-8" />
<%@language="vbscript" codepage="65001"%>
<!--#include file ="../conn.asp"-->
<%
	tim=now()
	ip=Request.serverVariables("REMOTE_ADDR")
	sql3="select * from hs_list where 姓名='"&request.form("姓名")&"' and '"&request.form("手机")&"'"
	rs3.open sql3,conn,1,3
	if (rs3.bof and rs3.eof) then'查找表判断是否重复
		sql1="insert into hs_list (姓名,性别,类别,职务,主管律师,执业证号,业务领域,手机,QQ号,微信,邮箱,备注,状态,是否可补卡,门禁状态,上次修改时间,IP) values('"&request.form("姓名")&"','"&request.form("性别")&"','"&request.form("类别")&"','"&request.form("职务")&"','"&request.form("主管律师")&"','"&request.form("执业证号")&"','"&request.form("业务领域")&"','"&request.form("手机")&"','"&request.form("QQ号")&"','"&request.form("微信")&"','"&request.form("邮箱")&"','"&request.form("备注")&"','"&request.form("状态")&"','不可','录入','"&tim&"','"&ip&"')"
		<!--response.write sql1
		sql2="insert into log_hs (log_user,log_time,log_ip,log_content) values('"&request.form("姓名")&request.form("手机")&"','"&tim&"','"&ip&"','"&replace(sql1,chr(39),chr(34))&"')"<!--repalce(str,chr(39),chr(34))将''转换为""使能够写入数据库
		
		<!--response.write sql2
		rs.open sql1,conn,1,3
		rs1.open sql2,conn,1,3
		response.write"<script>alert('添加成功！');location.href='person_mt.asp'; </script>"
	else
		response.write "<script>alert('重复登记!');location.href='person_mt.asp';</script>"
		response.end
	end if
%>