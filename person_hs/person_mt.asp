<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<%@Language="vbscript" Codepage="65001"%>
		<title>沪师律所人员信息表</title>
		<!-- Bootstrap -->
		<!-- jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边) -->
		<script src="/css/bootstrap/js/jquery.min.js"></script>
		<!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->
		<script src="/css/bootstrap/js/bootstrap.min.js"></script>
		<script src="../js/click.js" defer="defer"></script>
		<link rel="shortcut icon" href="../img/hs/logo_hs.png" />
		<style type="text/css">
			body{
				text-align: center;
			}
			#list{
				margin: 0 auto;
			}
			*{
				cursor: url('../img/play/kn5.cur'),default;
			}
		</style>
	</head>
	<body >
		<h1>沪师律所人员信息管理</h1>
		<!--#include file='../conn.asp'-->
		<!--<div style="display: inline-block;">
			<form method="post" action="search.asp">
				姓名：<input type="text" name="xm"  />
				手机：<input type="text" name="sj"  />
				<input type="submit" value="查询">
			</form>
		</div>-->
		
		<button onclick="location.href='person_admin_insert.asp'">登记</button><br /><br />
		<br>变动情况表<br><br>
		<table border="2" id="list">
			<thead>
				<tr>
					<th>序号</th>
					<th>姓名</th>
					<th>性别</th>
					<th>类别</th>
					<th>职务</th>
					<th>主管律师</th>
					<th>手机</th>
					<th>邮箱</th>
					<th>备注</th>
					<th>状态</th>
					<th>操作</th>
					<th>上次修改时间</th>
					<th>IP</th>
				</tr>
			</thead>
			<tbody>
				<%
					sql1= "select * from hs_list where 状态='离职' order by 上次修改时间 desc"
					rs1.CursorLocation = 3
					rs1.open sql1,conn,1,3
					for i=1 to rs1.recordcount
						Response.write "<tr>"
						Response.write "<td>" &i& "</td>"
						Response.write "<td>" &rs1.Fields.Item("姓名")& "</td>"
						Response.write "<td>" &rs1.Fields.Item("性别")& "</td>"
						Response.write "<td>" &rs1.Fields.Item("类别")& "</td>"
						Response.write "<td>" &rs1.Fields.Item("职务")& "</td>"
						Response.write "<td>" &rs1.Fields.Item("主管律师")& "</td>"
						Response.write "<td>" &rs1.Fields.Item("手机")& "</td>"
						Response.write "<td>" &rs1.Fields.Item("邮箱")& "</td>"
						Response.write "<td>" &rs1.Fields.Item("备注")& "</td>"
						Response.write "<td>" &rs1.Fields.Item("状态")& "</td>"
						Response.write "<td><a href='person_admin_update.asp?xlh="&rs1.Fields.Item("序列号")&"'> 修改 </a></td>"
						Response.write "<td>" &rs1.Fields.Item("上次修改时间")& "</td>"
						Response.write "<td>" &rs1.Fields.Item("IP")& "</td>"
						Response.write "</tr>"
						rs1.movenext
					next
					rs1.close
				%>
			</tbody>
		</table>
		
		<br>在职情况表<br><br>
		<table border="2" id="list">
			<thead>
				<tr>
					<th>序号</th>
					<th>姓名</th>
					<th>性别</th>
					<th>类别</th>
					<th>职务</th>
					<th>主管律师</th>
					<th>手机</th>
					<th>邮箱</th>
					<th>备注</th>
					<th>状态</th>
					<th>是否可补卡</th>
					<th>操作</th>
					<th>上次修改时间</th>
					<th>IP</th>
				</tr>
			</thead>
			<tbody>
				<%
					sql= "select * from hs_list where 状态='在职' or 状态='待转入' order by 上次修改时间 desc"
					rs.CursorLocation = 3
					rs.open sql,conn,1,3
					for i=1 to rs.recordcount
						Response.write "<tr>"
						Response.write "<td>" &i& "</td>"
						Response.write "<td>" &rs.Fields.Item("姓名")& "</td>"
						Response.write "<td>" &rs.Fields.Item("性别")& "</td>"
						Response.write "<td>" &rs.Fields.Item("类别")& "</td>"
						Response.write "<td>" &rs.Fields.Item("职务")& "</td>"
						Response.write "<td>" &rs.Fields.Item("主管律师")& "</td>"
						Response.write "<td>" &rs.Fields.Item("手机")& "</td>"
						Response.write "<td>" &rs.Fields.Item("邮箱")& "</td>"
						Response.write "<td>" &rs.Fields.Item("备注")& "</td>"
						Response.write "<td>" &rs.Fields.Item("状态")& "</td>"
						Response.write "<td>" &rs.Fields.Item("是否可补卡")& "</td>"
						Response.write "<td><a href='person_admin_update.asp?xlh="&rs.Fields.Item("序列号")&"'> 修改 </a></td>"
						Response.write "<td>" &rs.Fields.Item("上次修改时间")& "</td>"
						Response.write "<td>" &rs.Fields.Item("IP")& "</td>"
						Response.write "</tr>"
						rs.movenext
					next
					rs.close
				%>
			</tbody>
		</table>
	</body>
</html>
