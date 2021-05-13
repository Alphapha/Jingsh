<meta charset="utf-8" />
<%@language="vbscript" codepage="65001"%>
<!--#include file ="../conn.asp"-->
<%
	tim=now()
	ip=Request.serverVariables("REMOTE_ADDR")
	sql1="update js_express set kd_name1='"&request.form("kd_name1")&"',kd_name2='"&request.form("kd_name2")&"',kd_phone='"&request.form("kd_phone")&"',kd_com='"&request.form("kd_com")&"',kd_date='"&request.form("kd_date")&"',kd_num='"&request.form("kd_num")&"',kd_des='"&request.form("kd_des")&"',kd_dcom='"&request.form("kd_dcom")&"',kd_weight='"&request.form("kd_weight")&"',kd_type='"&request.form("kd_type")&"',kd_pay='"&request.form("kd_pay")&"',kd_fee='"&request.form("kd_fee")&"',备注='"&request.form("备注")&"' where kd_id='"&request.form("kd_id")&"'"
	<!--response.write sql1
	sql2="insert into log (log_user,log_time,log_ip,log_content) values('"&request.form("kd_name1")&request.form("kd_name2")&"','"&tim&"','"&ip&"','"&replace(sql1,chr(39),chr(34))&"')"<!--repalce(str,chr(39),chr(34))将''转换为""使能够写入数据库
	
	<!--response.write sql2
	rs.open sql1,conn,1,3
	rs1.open sql2,conn,1,3
	response.write"<script>alert('修改成功！');location.href='express_mt.asp'; </script>"
	
%>