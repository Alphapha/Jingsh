<html>
	<head>
		<title>快递记录修改</title>
		<meta charset="utf-8" />
		<%@Language="vbscript" Codepage="65001"%>
	</head>
	<body>
		<!--#include file ="../conn.asp"-->
		<%
			sql="select * from hs_list where 序列号='"&request("xlh")&"'"
			response.write request("xlh")
			rs.open sql,conn,1,3
		%>
		
		<form method="post" action="person_admin_update_sql.asp">
			<input type="hidden" name="xlh" value="<%=request("xlh")%>" />  <!--xlh对应express_admin_saerch.asp中xlh的值,该字段不能为中文-->
			姓名<br /><input type="text" name="姓名" value="<%=rs.fields.item("姓名")%>"><br />
			性别<br /><input type="text" name="性别" value="<%=rs.fields.item("性别")%>"><br />
			类别<br /><input type="text" name="类别" value="<%=rs.fields.item("类别")%>"><br />
			职务<br /><input type="text" name="职务" value="<%=rs.fields.item("职务")%>"><br />
			主管律师<br /><input type="text" name="主管律师" value="<%=rs.fields.item("主管律师")%>"><br />
			执业证号<br /><input type="text" name="执业证号" value="<%=rs.fields.item("执业证号")%>"><br />
			业务领域<br /><input type="text" name="业务领域" value="<%=rs.fields.item("业务领域")%>"><br />
			手机<br /><input type="text" name="手机" value="<%=rs.fields.item("手机")%>"><br />
			QQ号<br /><input type="text" name="QQ号" value="<%=rs.fields.item("QQ号")%>"><br />
			微信<br /><input type="text" name="微信" value="<%=rs.fields.item("微信")%>"><br />
			邮箱<br /><input type="text" name="邮箱" value="<%=rs.fields.item("邮箱")%>"><br />
			备注<br /><input type="text" name="备注" value="<%=rs.fields.item("备注")%>"><br />
			状态(填：在职或离职)<br /><input type="text" name="状态" value="<%=rs.fields.item("状态")%>"><br />
			是否可补卡(填：可或不可)<br /><input type="text" name="是否可补卡" value="<%=rs.fields.item("是否可补卡")%>">
			<br /><br />
			<input type="submit" value="上传"/>
		</form>
	</body>
</html>