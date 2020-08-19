<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<%@Language="vbscript" Codepage="65001"%>
		<title>律所人员信息表</title>
		<style type="text/css">
			body{
				text-align: center;
			}
			#list{
				margin: 0 auto;
			}
		</style>
	</head>
	<body onselectstart="return false" oncontextmenu="return false">
		<!--#include file='conn.asp'-->
		<form method="post" action="search.asp">
			律所：<select name="ls">
				<option value=""></option>
				<option value="京师">京师</option>
				<option value="沪师">沪师</option>
			</select>
			姓名：<input type="text" name="xm"  /><br /><br />
			类别：<select name="lb">
				<option value=""></option>
				<option value="律师">律师</option>
				<option value="实习律师">实习律师</option>
				<option value="律师助理">律师助理</option>
				<option value="实习生">实习生</option>
				<option value="行政">行政</option>
			</select>
			职务：<input type="text" name="zw"  /><br /><br />
			手机：<input type="text" name="sj"  />
			邮箱：<input type="text" name="yx"  /><br /><br />
			<input type="submit" value="查询">
		</form><br />
		<button onclick="location.href='insert.asp'">登记</button><br /><br />
		
		<table border="2" id="list">
			<thead>
				<tr>
					<th>序号</th>
					<th>律所</th>
					<th>姓名</th>
					<th>类别</th>
					<th>职务</th>
					<th>手机</th>
					<th>邮箱</th>
					<th>操作</th>
				</tr>
			</thead>
			<tbody>
				<%
					sql= "select * from list"
					rs.CursorLocation = 3
					rs.open sql,conn,1,3
					for i=1 to rs.recordcount
						Response.write "<tr>"
						Response.write "<td>" &i& "</td>"
						Response.write "<td>" &rs.Fields.Item("律所")& "</td>"
						Response.write "<td>" &rs.Fields.Item("姓名")& "</td>"
						Response.write "<td>" &rs.Fields.Item("类别")& "</td>"
						Response.write "<td>" &rs.Fields.Item("职务")& "</td>"
						Response.write "<td>" &rs.Fields.Item("手机")& "</td>"
						Response.write "<td>" &rs.Fields.Item("邮箱")& "</td>"
						Response.write "<td><a href='update.asp?xh="&rs.Fields.Item("序号")&"'> 修改 </a></td>"
						Response.write "</tr>"
						rs.movenext
					next
					rs.close
				%>
			</tbody>
	</body>
</html>
