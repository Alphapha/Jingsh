<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8" />
		<%@Language="vbscript" Codepage="65001"%>
		<title>京师房间座位表</title>
		<link rel="stylesheet" type="text/css" href="css/map.css" />
	</head>
	<body onselectstart="return false" oncontextmenu="return false">
		<!-- #include file="conn.asp" -->
		<%
			set rs=server.createObject("adodb.recordset")
			rs.CursorLocation = 3
			sql = "select * from site"
			rs.open sql,conn,1,3
		%>
		<table border="10">
			<thead>
				<tr>
					<th>序号</th>
					<th>房间/座位号</th>
					<th>使用人</th>
				</tr>
			</thead>
			<tbody>
				<%
					for i=1 to rs.recordcount
						response.write "<tr>"
						response.write "<td>" &rs.fields.item("Num")& "</td>"
						response.write "<td>" &rs.fields.item("Site")& "</td>"
						response.write "<td>" &rs.fields.item("User")& "</td>"
						response.write "<td><a href='map_update_name.asp?xh="&rs.fields.item("Site")&"'>修改</a></td>" 
						response.write "</tr>"
						rs.movenext
					next
					rs.close
				%>
			</tbody>
		</table>
	</body>
</html>