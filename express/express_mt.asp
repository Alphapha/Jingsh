<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<%@Language="vbscript" Codepage="65001"%>
		<title>快递室管理后台</title>
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
		<div>快递管理后台</div>
		<br />
		<!--#include file='../conn.asp'-->
		<form method="post" action="express_admin_search.asp">

			名  字<input type="text" name="kd_name"  />&nbsp;&nbsp;
			时  间<input type="date" name="kd_date_s"  />-<input type="date" name="kd_date_e" />&nbsp;&nbsp;
			单  号<input type="text" name="kd_num" />
			<input type="submit" value="查询">
		</form><br />

		<table border="2" id="list">
			<thead>
				<tr>
					<th>序号</th>
					<th>挂账人</th>
					<th>经手人</th>
					<th>手机号</th>
					<th>快递公司</th>
					<th>日期</th>
					<th>运单号</th>
					<th>对方地区</th>
					<th>对方公司名称</th>
					<th>计费重量</th>
					<th>产品类型</th>
					<th>付款方式</th>
					<th>应付费用</th>
					<th>备注</th>
					<th>操作</th>
				</tr>
			</thead>
			<tbody>
				<%
					sql= "select * from js_express ORDER BY kd_date DESC"
					rs.CursorLocation = 3
					rs.open sql,conn,1,3
					for i=1 to rs.recordcount
						Response.write "<tr>"
						Response.write "<td>" &i& "</td>"
						Response.write "<td>" &rs.Fields.Item("kd_name1")& "</td>"
						Response.write "<td>" &rs.Fields.Item("kd_name2")& "</td>"
						Response.write "<td>" &rs.Fields.Item("kd_phone")& "</td>"
						Response.write "<td>" &rs.Fields.Item("kd_com")& "</td>"
						Response.write "<td>" &rs.Fields.Item("kd_date")& "</td>"
						Response.write "<td>" &rs.Fields.Item("kd_num")& "</td>"
						Response.write "<td>" &rs.Fields.Item("kd_des")& "</td>"
						Response.write "<td>" &rs.Fields.Item("kd_dcom")& "</td>"
						Response.write "<td>" &rs.Fields.Item("kd_weight")& "</td>"
						Response.write "<td>" &rs.Fields.Item("kd_type")& "</td>"
						Response.write "<td>" &rs.Fields.Item("kd_pay")& "</td>"
						Response.write "<td>" &rs.Fields.Item("kd_fee")& "</td>"
						Response.write "<td>" &rs.Fields.Item("备注")& "</td>"
						Response.write "<td><a href='express_admin_update.asp?kd_id="&rs.Fields.Item("kd_id")&"'> 修改 </a></td>"
						Response.write "</tr>"
						rs.movenext
					next
					rs.close
				%>
			</tbody>
	</body>
</html>
