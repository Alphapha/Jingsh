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
		<div class="hehe">
			<div>快递管理后台</div>
			<br />
			<!--#include file='../conn.asp'-->
			<div class="xixi">
				<div style="display: inline-block;">
					<form method="post" action="express_admin_search.asp">
						名  字<input type="text" name="kd_name"  />&nbsp;&nbsp;
						时  间<input type="date" name="kd_date_s" placeholder="2021-01-01"/>-<input type="date" name="kd_date_e" placeholder="2021-01-01"/>&nbsp;&nbsp;
						单  号<input type="text" name="kd_num" />
						<input type="submit" value="查询">
					</form>
				</div>
				<div style="display: inline-block;">
					<button onclick="location.href='express_mt.asp'">查看全部</button>
				</div>
				
			</div>
			<br />
			<div class="xixi">
				<div style="display: inline-block;">
					<form method="post" action="express_admin_export.asp">
						名  字<input type="text" name="kd_name_ex" />&nbsp;&nbsp;
						时  间<input type="date" name="kd_date_ex_s" placeholder="2021-01-01"/>-<input type="date" name="kd_date_ex_e" placeholder="2021-01-01"/>&nbsp;&nbsp;
						<input type="submit" value="导出">
					</form>
					
				</div>
				&nbsp;&nbsp;<button onclick="location.href='express_admin_insert.asp'">添加一条</button>&nbsp;&nbsp;
				<div style="display: inline-block;">
					<form method="post" action="" >
						<!--<input type="file" name="express_import_file" width="10px"/>-->
						<input type="submit" value="批量导入功能无期限开发中....">
					</form>
				</div>
			</div>
		</div>
		<div><br></div>
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
					gzr=request.form("kd_name")
					riqi_s=request.form("kd_date_s")
					riqi_e=request.form("kd_date_e")
					danhao=request.form("kd_num")
					if trim(gzr)&"x"="x" and trim(riqi_s)&"x"="x" and trim(danhao)&"x"="x" and trim(riqi_e)&"x"="x" then
						sql="select * from js_express ORDER BY kd_date DESC limit 0"
					else if trim(riqi_s)&"x"="x" and trim(danhao)&"x"="x" and trim(riqi_e)&"x"="x" then
						sql="select * from js_express where kd_name1 like '"&"%"&request.form("kd_name")&"%"&"' ORDER BY kd_date DESC"<!--根据姓名查询模糊搜索，其他为空-->
					else if trim(gzr)&"x"="x" and trim(danhao)&"x"="x" and trim(riqi_e)&"x"="x"  then
						sql="select * from js_express where kd_date='"&request.form("kd_date_s")&"' ORDER BY kd_date DESC"<!--根据日期1查询，其他为空-->
					else if trim(gzr)&"x"="x" and trim(danhao)&"x"="x" and trim(riqi_s)&"x"="x"  then
						sql="select * from js_express where kd_date='"&request.form("kd_date_e")&"' ORDER BY kd_date DESC"<!--根据日期2查询，其他为空-->
					else if trim(gzr)&"x"="x" and trim(riqi_s)&"x"="x" and trim(riqi_e)&"x"="x" then
						sql="select * from js_express where kd_num='"&request.form("kd_num")&"' ORDER BY kd_date DESC"<!--根据单号查询，其他为空-->
					else if trim(gzr)&"x"="x" and trim(danhao)&"x"="x" then       
						sql="select * from js_express where kd_date >='"&request.form("kd_date_s")&"' and kd_date <='"&request.form("kd_date_e")&"' ORDER BY kd_date DESC"<!--根据日期区间查询,其他为空-->
					else if trim(danhao)&"x"="x" then       
						sql="select * from js_express where kd_date >='"&request.form("kd_date_s")&"' and kd_date <='"&request.form("kd_date_e")&"' and kd_name1 like '"&"%"&request.form("kd_name")&"%"&"' ORDER BY kd_date DESC"<!--根据挂账人和日期区间查询,其他为空-->
					else 
						sql="select * from js_express where kd_date >='"&request.form("kd_date_s")&"' and kd_date <='"&request.form("kd_date_e")&"' and kd_name1 like '"&"%"&request.form("kd_name")&"%"&"' and kd_num='"&request.form("kd_num")&"' ORDER BY kd_date DESC"
						
					
					end if
					end if
					end if
					end if
					end if
					end if
					end if
					rs.CursorLocation = 3
					rs.open sql,conn,1,3
					<!-->Response.write sql
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
					
					
				%>
			</tbody>
		</table>
	</body>
</html>