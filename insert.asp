<html>
	<head>
		<title>人员登记</title>
		<meta charset="utf-8" />
		<%@Language="vbscript" Codepage="65001"%>
	</head>
	<body onselectstart="return false" oncontextmenu="return false">
		<form method="post" action="insert_sql.asp">
			律所：<select name="ls">
				<option value="京师">京师</option>
				<option value="沪师">沪师</option>
			</select><br />
			姓名：<input type="text" name="xm"  /><br />
			类别：<select name="lb">
				<option value="律师">律师</option>
				<option value="实习律师">实习律师</option>
				<option value="律师助理">律师助理</option>
				<option value="实习生">实习生</option>
				<option value="行政">行政</option>
			</select><br />
			职务：<input type="text" name="zw"  /><br />
			手机：<input type="text" name="sj"  /><br />
			邮箱：<input type="text" name="yx"  /><br /><br />
			<input type="submit" value="哈哈 填完上传"/>
		</form>
	</body>
</html>