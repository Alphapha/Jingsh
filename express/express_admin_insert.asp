<html>
	<head>
		<title>快递记录添加</title>
		<meta charset="utf-8" />
		<%@Language="vbscript" Codepage="65001"%>
	</head>
	<body>
		<form method="post" action="express_admin_insert_sql.asp">
			挂账人<br /><input type="text" name="kd_name1"><br />
			经手人<br /><input type="text" name="kd_name2"><br />
			手机号<br /><input type="text" name="kd_phone"><br />
			快递公司<br /><input type="text" name="kd_com"><br />
			日期<br /><input type="date" name="kd_date"><br />
			运单号<br /><input type="text" name="kd_num"><br />
			对方地区<br /><input type="text" name="kd_des"><br />
			对方公司名称<br /><input type="text" name="kd_dcom"><br />
			计费重量<br /><input type="text" name="kd_weight"><br />
			快递类型<br /><input type="text" name="kd_type"><br />
			付款方式<br /><input type="text" name="kd_pay"><br />
			应付金额<br /><input type="text" name="kd_fee"><br />
			备注<br /><input type="text" name="备注"><br /><br />
			<input type="submit" value="上传"/>
		</form>
	</body>
</html>