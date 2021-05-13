<meta charset="utf-8" />
<%@language="vbscript" codepage="65001"%>
<!--#include file ="../conn.asp"-->
<%
	tim=now()
	ip=Request.serverVariables("REMOTE_ADDR")
	sql1="insert into js_express (kd_name1,kd_name2,kd_phone,kd_com,kd_date,kd_num,kd_des,kd_dcom,kd_weight,kd_type,kd_pay,kd_fee,备注) values('"&request.form("kd_name1")&"','"&request.form("kd_name2")&"','"&request.form("kd_phone")&"','"&request.form("kd_com")&"','"&request.form("kd_date")&"','"&request.form("kd_num")&"','"&request.form("kd_des")&"','"&request.form("kd_dcom")&"','"&request.form("kd_weight")&"','"&request.form("kd_type")&"','"&request.form("kd_pay")&"','"&request.form("kd_fee")&"','"&request.form("备注")&"')"
	<!--response.write sql1
	sql2="insert into log (log_user,log_time,log_ip,log_content) values('测试','"&tim&"','"&ip&"','"&replace(sql1,chr(39),chr(34))&"')"<!--repalce(str,chr(39),chr(34))将''转换为""使能够写入数据库
	
	<!--response.write sql2
	rs.open sql1,conn,1,3
	rs1.open sql2,conn,1,3
	response.write"<script>alert('添加成功！');location.href='express_mt.asp'; </script>"
	
%>