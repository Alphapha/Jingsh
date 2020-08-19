<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<%@Language="vbscript" Codepage="65001"%>
		<title>asp</title>
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
			<input type="submit" value="查询"/>
		</form><br />
		<button onclick="location.href='insert.asp'">登记</button>
		<button onclick="location.href='list.asp'">返回全部</button><br /><br />
		<table border="2" id="list">
			<thead>
				<tr>
					<th>律所</th>
					<th>姓名</th>
					<th>类别</th>
					<th>职务</th>
					<th>手机</th>
					<th>邮箱</th>
					<th>操作</th>
				</tr>
			</thead>
			<tbody><!-- -->
				<%
					lvsuo=request.form("ls")
					xingming=request.form("xm")
					leibie=request.form("lb")
					zhiwu=request.form("zw")
					shouji=request.form("sj")
					youxiang=request.form("yx")
					if trim(lvsuo)&"x"="x" and trim(xingming)&"x"="x" and trim(leibie)&"x"="x" and trim(zhiwu)&"x"="x" and trim(shouji)&"x"="x" and trim(youxiang)&"x"="x" then
						Response.write "查询条件不能全为空"
						sql="select * from list where 律所='"&request.form("ls")&"' and 姓名='"&request.form("xm")&"' and 类别='"&request.form("lb")&"' and 职务='"&request.form("zw")&"' and 手机='"&request.form("sj")&"' and 邮箱='"&request.form("yx")&"'"
					else if trim(xingming)&"x"="x" and trim(leibie)&"x"="x" and trim(zhiwu)&"x"="x" and trim(shouji)&"x"="x" and trim(youxiang)&"x"="x" then
						sql="select * from list where 律所='"&request.form("ls")&"'"<!--律所栏不为空，其他为空-->
					else if trim(lvsuo)&"x"="x" and trim(leibie)&"x"="x" and trim(zhiwu)&"x"="x" and trim(shouji)&"x"="x" and trim(youxiang)&"x"="x" then
						sql="select * from list where 姓名='"&request.form("xm")&"'"<!--姓名栏不为空，其他为空-->
					else if trim(lvsuo)&"x"="x" and trim(xingming)&"x"="x" and trim(zhiwu)&"x"="x" and trim(shouji)&"x"="x" and trim(youxiang)&"x"="x" then
						sql="select * from list where 类别='"&request.form("lb")&"'"<!--类别栏不为空，其他为空-->
					else if trim(lvsuo)&"x"="x" and trim(xingming)&"x"="x" and trim(leibie)&"x"="x" and trim(shouji)&"x"="x" and trim(youxiang)&"x"="x" then
						sql="select * from list where 职务='"&request.form("zw")&"'"<!--职务栏不为空，其他为空-->
					else if trim(lvsuo)&"x"="x" and trim(xingming)&"x"="x" and trim(leibie)&"x"="x" and trim(zhiwu)&"x"="x" and trim(youxiang)&"x"="x" then
						sql="select * from list where 手机='"&request.form("sj")&"'"<!--手机栏不为空，其他为空-->
					else if trim(lvsuo)&"x"="x" and trim(xingming)&"x"="x" and trim(leibie)&"x"="x" and trim(zhiwu)&"x"="x" and trim(shouji)&"x"="x" then
						sql="select * from list where 邮箱='"&request.form("yx")&"'"<!--邮箱栏不为空，其他为空-->
					else 
						sql="select * from list where 律所='"&request.form("ls")&"' and 姓名='"&request.form("xm")&"' and 类别='"&request.form("lb")&"' and 职务='"&request.form("zw")&"' and 手机='"&request.form("sj")&"' and 邮箱='"&request.form("yx")&"'"
					end if
					end if
					end if
					end if
					end if
					end if
					end if
					rs.CursorLocation = 3
					rs.open sql,conn,1,3
					Response.write sql
					for i=1 to rs.recordcount
						Response.write "<tr>"
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
					
					
				%>
			</tbody>
		</table>
	</body>
</html>