<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<%@Language="vbscript" Codepage="65001"%>
		<title>律所门禁卡登记表</title>
		<script src="../js/click.js" defer="defer"></script>
		<link rel="shortcut icon" href="../img/logo1-3.png" />
		<style type="text/css">
			*{
				cursor: url('../img/play/kn5.cur'),default;
			}
		</style>
		<style type="text/css">
			body{
				text-align: center;
			}
			#list{
				margin: 0 auto;
			}
		</style>
	</head>
	<body >
		<h1>律所门禁卡登记表</h1>
		<!--#include file='../conn.asp'-->
		<div style="display: inline-block;">
		</div>
		<br /><br />
		
		<table border="4" id="list">
			<thead>
				<tr>
					<th>序号</th>
					<th>姓名</th>
					<th>手机</th>
					<th>一卡通卡号</th>
					<th>缴费凭证</th>
					<th>办理时间</th>
					<th>办理IP</th>
					<th>办理类型</th>
					<th>操作</th>
					<th>是否可退卡</th>
					<th>退卡卡号</th>
					<th>退卡时间</th>
					<th>退卡操作IP</th>
					<th>备注</th>
					<th>操作</th>
				</tr>
			</thead>
			<tbody>
				<%
					sql= "select * from js_safe order by 门禁卡办理时间 desc"
					rs.CursorLocation = 3
					rs.open sql,conn,1,3
					for i=1 to rs.recordcount
						Response.write "<tr>"
						Response.write "<td>" &i& "</td>"
						Response.write "<td>" &rs.Fields.Item("姓名")& "</td>"
						Response.write "<td>" &rs.Fields.Item("手机")& "</td>"
						Response.write "<td>" &rs.Fields.Item("编号_门禁卡")& "</td>"
						Response.write "<td>" &rs.Fields.Item("费用_门禁卡")& "</td>"
						Response.write "<td>" &rs.Fields.Item("门禁卡办理时间")& "</td>"
						Response.write "<td>" &rs.Fields.Item("门禁卡办理IP")& "</td>"
						Response.write "<td>" &rs.Fields.Item("服务类型")& "</td>"
						Response.write "<td><a href='safe_tk.asp?xlh="&rs.Fields.Item("mj_id")&"&kh="&rs.Fields.Item("mj_id")&"'> 退卡 </a></td>"
						Response.write "<td>" &rs.Fields.Item("是否可退卡")& "</td>"
						Response.write "<td>" &rs.Fields.Item("退卡卡号")& "</td>"
						Response.write "<td>" &rs.Fields.Item("退卡时间")& "</td>"
						Response.write "<td>" &rs.Fields.Item("退卡操作IP")& "</td>"
						Response.write "<td>" &rs.Fields.Item("备注")& "</td>"
						Response.write "<td><a href='safe_xg.asp?xlh="&rs.Fields.Item("mj_id")&"'> 修改 </a></td>"
						Response.write "</tr>"
						rs.movenext
					next
					rs.close
				%>
			</tbody>
	</body>
</html>
