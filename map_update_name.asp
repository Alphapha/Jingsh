<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8" />
		<%@Language="vbscript" Codepage="65001"%>
		<title>修改信息</title>
		<link rel="stylesheet" type="text/css" href="css/map.css" />
	</head>
	<body onselectstart="return false">
		<!-- #include file="conn.asp" -->
		<%
			sql = "select * from site where Site='"&request("xh")&"'"
			rs.open sql,conn,1,3
		%>
		<form method="post" action="map_update_name_sql.asp">
			<input type="hidden" name="xh" value="<%=request("xh")%>" />
			房间号：<%=rs.fields.item("Site")%><br>
			使用人：<input type="text" name="xm" value="<%=rs.fields.item("User")%>" /><br>
			<input type="submit" value="提交" />
		</form>
	</body>
</html>