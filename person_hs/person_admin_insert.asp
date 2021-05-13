<html>
	<head>
		<title>律所人员添加</title>
		<meta charset="utf-8" />
		<%@Language="vbscript" Codepage="65001"%>
	</head>
	<body>
		<h1>新人员添加</h1>
		<form method="post" action="person_admin_insert_sql.asp">
			姓名<br /><input type="text" name="姓名"><br />
			性别<br /><input type="text" name="性别"><br />
			类别<br /><input type="text" name="类别"><br />
			职务<br /><input type="text" name="职务"><br />
			主管律师<br /><input type="text" name="主管律师"><br />
			<!--执业证号<br /><input type="text" name="执业证号" hidden="hidden"><br />
			业务领域<br /><input type="text" name="业务领域" hidden="hidden"><br />-->
			手机<br /><input type="text" name="手机"><br />
			<!--QQ号<br /><input type="text" name="QQ号" hidden="hidden"><br />
			微信<br /><input type="text" name="微信" hidden="hidden"><br />-->
			邮箱<br /><input type="text" name="邮箱"><br />
			备注<br /><input type="text" name="备注"><br />
			是否可补卡<br /><select type="text" name="是否可补卡">
				<option value="不可">不可</option>
				<option value="可">可</option>
			</select>
			<br />
			状态<br /><select type="text" name="状态">
				<option value="在职">在职</option>
				<option value="离职">离职</option>
			</select>
			<br><br />
			<input type="submit" value="上传"/>
		</form>
	</body>
</html>