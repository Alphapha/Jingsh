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
			img{
				width:300px;
			}
		</style>
		<script language="JavaScript">
			function Check(){
				if (document.order.safe_num.length > 7 || document.order.safe_num.value.length < 7){
					alert("Dangerous！！！Out！Out！Out！");
					document.order.safe_num.focus();
					return false;
				}
			}
		</script>
	</head>
	<body >
		<h1>qqqs</h1>
		<!--#include file='coonnn.asp'-->
		<div style="display: inline-block;">
			<form onsubmit="return Check()" method="post" name="order" action="menjin_search.asp">
				名  字<input type="text" name="menjin_name"  />&nbsp;&nbsp;
				授权码<input type="password" name="safe_num" >&nbsp;&nbsp;
				<input type="submit" value="查询">
			</form>
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
				</tr>
			</thead>
			<tbody>
				<%
					gzr = request.form("menjin_name")
					if trim(gzr)&"x"="x" then
						sql="select * from [zsd_FaceCheck222].[dbo].[Record] ORDER BY AuthTime DESC limit 0"
					else	
						sql= "SELECT * FROM [zsd_FaceCheck222].[dbo].[Record] where Name like '"&"%"&request.form("menjin_name")&"%"&"' order by Record_CreateTime Desc"
					end if
						rs.CursorLocation = 3
						rs.open sql,conn,1,3
						for i=1 to rs.recordcount
							Response.write "<tr>"
							Response.write "<td>" &i& "</td>"
							Response.write "<td>" &rs.Fields.Item("Name")& "</td>"
							Response.write "<td><img src='http://192.168.7.17:12580/人脸文件夹/人员进出记录/" &right(rs.Fields.Item("ShootImgPath"),52)& "'></td>"
							
							Response.write "<td><img src='http://192.168.7.17:12580/人脸文件夹/人员进出记录/" &right(rs.Fields.Item("ShootImgPath"),45)& "'></td>"
							Response.write "<td><img src='http://192.168.7.17:12580" &mid(replace(rs.Fields.Item("ShootImgPath"),"\\","\"),14,100)& "'></td>"
							Response.write "<td>" &rs.Fields.Item("Device_Name")& "</td>"
							Response.write "<td>" &rs.Fields.Item("AuthTime")& "</td>"
							Response.write "<td>" &rs.Fields.Item("UUID")& "</td>"
							Response.write "</tr>"
							rs.movenext
						next
						rs.close
					
				%>
			</tbody>
	</body>
</html>
