<!DOCTYPE >
<html>
<head runat="server">
	<meta charset="utf-8" />
	<meta http-equiv="refresh" content="300">
	<meta content="yes" name="apple-mobile-web-app-capable">
	<meta name="viewport" content="width=device-width, initial-scale=0.5, maximum-scale=0.5, user-scalable=no">	
	<%@Language="vbscript" Codepage="65001"%>
	<title>会议室预定 | MeetingBooking</title>
	<link rel="shortcut icon" href="img/logo1-3.png" />
	<link rel="stylesheet" type="text/css" href="/css/index.css" />
	
	<script src="/css/bootstrap/js/jquery.min.js"></script>
	<script src="js/click.js" defer="defer"></script>
	<style type="text/css">
		body{
			text-align: center;
			background-color: lightgoldenrodyellow;
			font-size: 20px;
		}
		.meet1{
			margin: 0 auto;
			text-align: center;
		}
		.rowrow{
			width: 300px;height: 50px;
			font-size: 20px;
		}
		*{
			cursor: url('./img/play/kn5.cur'),default;
			
		}
	</style>
</head>
<body onselectstart="return false" oncontextmenu="return false">
	<!--#include file = 'conn.asp'-->
	<h1>数据导出</h1>
	<form method="post" action="export_meeting.asp">
		<input type="date" name="e_rq1" class="rowrow">-<input type="date" name="e_rq2" class="rowrow"><br /><br />
		<input type="submit" value="京师" style="width: 50px;height: 50px;background-color: whitesmoke;border-radius: 100%;"/>
	</form>
	<h1>会议室预定</h1>
	<form method="post" action="mt_insert_sql.asp" name="order">
		日期：<input type="date" name="rq" class="rowrow">
		
		星期：<input type="text" name="xq" class="rowrow" placeholder="请填写星期"><br><br>
		
		时间：<input type="text" name="sj" class="rowrow" placeholder="请填写时间(如8:00-9:00)">
		
		名称：<input type="text" name="mc" class="rowrow" placeholder="请填写会议名称"><br><br>
		
		主题：<input type="text" name="zt" class="rowrow" placeholder="请填写会议主题">
		
		主讲人：<input type="text" name="zjr" class="rowrow" placeholder="请填写主讲人"><br><br>
		
		会议室：<input type="text" name="hys" class="rowrow" placeholder="请填写会议室">
		
		扣款人：<input type="text" name="kkr" class="rowrow" placeholder="请填写扣款律师"><br><br>
		
		主办方：<select name="zbf" class="rowrow">
			<option value="京师">京师</option>
			<option value="沪师">沪师</option>
		</select>
		
		备注：<input type="text" name="bz" class="rowrow" placeholder="请填写备注信息" ><br /><br />
		
		
		<input type="hidden" name="cook" value="0">
		
		<input type="submit" value="预定" style="width: 50px;height: 50px;background-color: whitesmoke;border-radius: 100%;"/>
	</form>
	
	<table border="2" class="meet1">
		<thead>
			<tr>
				<th>时间</th>
				<th>名称</th>
				<th>主题</th>
				<th>扣款律师</th>
				<th>主讲人</th>
				<th>主办方</th>
				<th>地点</th>
				<th>备注</th>
				<th>操作</th>
			</tr>
		</thead>
		<tbody>
			<%
				sql1= "select * from meetorderbig WHERE DATE >= CURDATE() and TIME IS NOT NULL  ORDER BY DATE ASC"
				rs1.CursorLocation = 3
				rs1.open sql1,conn,1,3
				for i=1 to rs1.recordcount
					Response.write "<tr>"
					Response.write "<td>" &rs1.Fields.Item("DATE")& "<br>"&rs1.Fields.Item("WEEK")& "<br>"&rs1.Fields.Item("TIME")& "</td>"
					Response.write "<td>" &rs1.Fields.Item("MC")& "</td>"
					Response.write "<td>" &rs1.Fields.Item("ZT")& "</td>"
					Response.write "<td>" &rs1.Fields.Item("KKR")& "</td>"
					Response.write "<td>" &rs1.Fields.Item("ZJR")& "</td>"
					Response.write "<td>" &rs1.Fields.Item("ZBF")& "</td>"
					Response.write "<td>" &rs1.Fields.Item("ROOM")& "</td>"
					Response.write "<td>" &rs1.Fields.Item("BZ")& "</td>"
					Response.write "<td><a href='mt_update.asp?xh="&rs1.Fields.Item("XH")&"'> 修改 </a>&nbsp;&nbsp;&nbsp;丨&nbsp;&nbsp;&nbsp;<a href='mt_delete_sql1.asp?xh="&rs1.Fields.Item("XH")&"'> 取消 </a></td>"
					Response.write "</tr>"
					rs1.movenext
				next
				rs1.close
			%>
			
		</tbody>
	</table>
	<table border="2" class="meet1">
		<thead>
			
			<tr> 
				<td colspan="9" height="60px">京师会议室预定情况</td>
			</tr>
			<tr>
				<th>日期</th>
				<th>时间</th>
				<th>会议室</th>
				<th>扣款律师</th>
				<th>预定人</th>
				<th>备注</th>
				<th>操作</th>
			</tr>
		</thead>
		<tbody>
			<%
				set rs=server.createObject("adodb.recordset")
				sql= "SELECT * from meetorder WHERE DATE >= CURDATE()  and USER IS NOT NULL"
				rs.CursorLocation = 3
				rs.open sql,conn,1,3
				for i=1 to rs.recordcount
					Response.write "<tr>"
					Response.write "<td>" &rs.Fields.Item("DATE")&  "</td>"
					Response.write "<td>" &rs.Fields.Item("ROOM")& "</td>"
					Response.write "<td>" &rs.Fields.Item("TIME")&  "</td>"
					
					Response.write "<td>" &rs.Fields.Item("USER")& "</td>"
					Response.write "<td>" &rs.Fields.Item("SJH")& "</td>"
					Response.write "<td>" &rs.Fields.Item("BZ")& "</td>"
					Response.write "<td><a href='mt_delete_sql.asp?r_rq="&rs.Fields.Item("DATE")&"&r_sj="&rs.Fields.Item("TIME")&"&r_fj="&rs.Fields.Item("ROOM")&"'> 取消 </a></td>"
					Response.write "</tr>"
					rs.movenext
				next
				rs.close
			%>
		</tbody>
	</table>
	<table border="2" class="meet1">
		<thead>
			
			<tr> 
				<td colspan="9" height="60px">沪师会议室预定情况</td>
			</tr>
			<tr>
				<th>日期</th>
				<th>时间</th>
				<th>会议室</th>
				<th>扣款律师</th>
				<th>预定人</th>
				<th>备注</th>
				<th>操作</th>
			</tr>
		</thead>
		<tbody>
			<%
				set rs=server.createObject("adodb.recordset")
				sql= "SELECT * from meetorder_hs WHERE DATE >= CURDATE()  and USER IS NOT NULL"
				rs.CursorLocation = 3
				rs.open sql,conn,1,3
				for i=1 to rs.recordcount
					Response.write "<tr>"
					Response.write "<td>" &rs.Fields.Item("DATE")&  "</td>"
					Response.write "<td>" &rs.Fields.Item("ROOM")& "</td>"
					Response.write "<td>" &rs.Fields.Item("TIME")&  "</td>"
					
					Response.write "<td>" &rs.Fields.Item("USER")& "</td>"
					Response.write "<td>" &rs.Fields.Item("SJH")& "</td>"
					Response.write "<td>" &rs.Fields.Item("BZ")& "</td>"
					Response.write "<td><a href='mt_delete_sql2.asp?r_rq="&rs.Fields.Item("DATE")&"&r_sj="&rs.Fields.Item("TIME")&"&r_fj="&rs.Fields.Item("ROOM")&"'> 取消 </a></td>"
					Response.write "</tr>"
					rs.movenext
				next
				rs.close
			%>
		</tbody>
	</table>
	<br><br><br>
	
	

	<br><br><br>
	</body>
</html>