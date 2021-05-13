<meta charset="utf-8" />
<%@language="vbscript" codepage="65001"%>
<!--#include file ="../conn.asp"-->
<%
	tim=now()
	ip=Request.serverVariables("REMOTE_ADDR")
	sql1="update js_list set 姓名='"&request.form("姓名")&"',性别='"&request.form("性别")&"',类别='"&request.form("类别")&"',职务='"&request.form("职务")&"',主管律师='"&request.form("主管律师")&"',执业证号='"&request.form("执业证号")&"',业务领域='"&request.form("业务领域")&"',手机='"&request.form("手机")&"',QQ号='"&request.form("QQ号")&"',微信='"&request.form("微信")&"',邮箱='"&request.form("邮箱")&"',备注='"&request.form("备注")&"',状态='"&request.form("状态")&"',是否可补卡='"&request.form("是否可补卡")&"',上次修改时间='"&tim&"',IP='"&ip&"' where 序列号='"&request.form("xlh")&"'"
	<!--response.write sql1
	sql2="insert into log (log_user,log_time,log_ip,log_content) values('"&request.form("姓名")&request.form("手机")&"','"&tim&"','"&ip&"','"&replace(sql1,chr(39),chr(34))&"')"<!--repalce(str,chr(39),chr(34))将''转换为""使能够写入数据库
	
	<!--response.write sql2
	rs.open sql1,conn,1,3
	rs1.open sql2,conn,1,3
	response.write"<script>alert('修改成功！');location.href='person_mt.asp'; </script>"
	
%>