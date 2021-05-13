<html>
	<head>
		<title>快递记录修改</title>
		<meta charset="utf-8" />
		<%@Language="vbscript" Codepage="65001"%>
	</head>
	<body>
		<!--#include file ="../conn.asp"-->
		<%
			sql="select * from js_express where kd_id='"&request("kd_id")&"'"
			response.write request("kd_id")
			rs.open sql,conn,1,3
		%>
		
		<form method="post" action="express_admin_update_sql.asp">
			<input type="hidden" name="kd_id" value="<%=request("kd_id")%>" />  <!--kd_id对应express_admin_saerch.asp中kd_id的值,该字段不能为中文-->
			挂账人<br /><input type="text" name="kd_name1" value="<%=rs.fields.item("kd_name1")%>"><br />
			经手人<br /><input type="text" name="kd_name2" value="<%=rs.fields.item("kd_name2")%>"><br />
			手机号<br /><input type="text" name="kd_phone" value="<%=rs.fields.item("kd_phone")%>"><br />
			快递公司<br /><input type="text" name="kd_com" value="<%=rs.fields.item("kd_com")%>"><br />
			日期<br /><input type="text" name="kd_date" value="<%=rs.fields.item("kd_date")%>"><br />
			运单号<br /><input type="text" name="kd_num" value="<%=rs.fields.item("kd_num")%>"><br />
			对方地区<br /><input type="text" name="kd_des" value="<%=rs.fields.item("kd_des")%>"><br />
			对方公司名称<br /><input type="text" name="kd_dcom" value="<%=rs.fields.item("kd_dcom")%>"><br />
			计费重量<br /><input type="text" name="kd_weight" value="<%=rs.fields.item("kd_weight")%>"><br />
			快递类型<br /><input type="text" name="kd_type" value="<%=rs.fields.item("kd_type")%>"><br />
			付款方式<br /><input type="text" name="kd_pay" value="<%=rs.fields.item("kd_pay")%>"><br />
			应付金额<br /><input type="text" name="kd_fee" value="<%=rs.fields.item("kd_fee")%>"><br />
			备注<br /><input type="text" name="kd_fee" value="<%=rs.fields.item("备注")%>"><br /><br />
			<input type="submit" value="上传"/>
		</form>
	</body>
</html>