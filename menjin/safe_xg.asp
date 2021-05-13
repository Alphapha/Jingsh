<html>
	<head>
		<title>京师门禁表修改</title>
		<meta charset="utf-8" />
		<%@Language="vbscript" Codepage="65001"%>
	</head>
	<body>
		<!--#include file ="../conn.asp"-->
		<%
			sql="select * from js_safe where mj_id='"&request("xlh")&"'"
			response.write request("kd_id")
			rs.open sql,conn,1,3
		%>
		
		<form method="post" action="safe_xg_sql.asp">
			<input type="hidden" name="xlh" value="<%=request("xlh")%>" />  
			<input type="hidden" name="xm" value="<%=rs.fields.item("姓名")%>" />  
			<input type="hidden" name="sj" value="<%=rs.fields.item("手机")%>" />  
			姓名:<%=rs.fields.item("姓名")%><br>
			手机:<%=rs.fields.item("手机")%><br>
			缴费凭证:<%=rs.fields.item("费用_门禁卡")%><br>
			卡号：<%=rs.fields.item("编号_门禁卡")%><br><br>
			备注：
			<input type="text" name="备注" value="<%=rs.fields.item("备注")%>" /><br><br>
			卡状态：
			<select name="zt" >
				<option value="不可">正常</option>
				<option value="可">挂失</option>
				<option value="不可">已退卡</option>
			</select><br><br>
			<input type="submit" value="上传"/>
		</form>
	</body>
</html>