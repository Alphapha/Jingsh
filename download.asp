<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<%@Language="vbscript" Codepage="65001"%>
		<title>下载 | Download</title>
		<link rel="shortcut icon" href="img/logo1-3.png" />
		<script src="/css/bootstrap/js/jquery.min.js"></script>
		<script src="js/click.js" defer="defer"></script>
		<style type="text/css">
			*{
				cursor: url('./img/play/kn5.cur'),default;
				
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
	<body onselectstart="return false"  oncontextmenu="return false">
		<!--#include file='conn.asp'-->
		<table border="2" id="list">
			<thead>
				<tr>
					<th height="40px" width="200px">序号</th>
					<th height="40px" width="200px">类别</th>
					<th height="40px" width="500px">文件名</th>
					<th height="40px" width="200px">操作</th>
				</tr>
			</thead>
			<tbody>
				<%
					sql= "select * from download"
					rs.CursorLocation = 3
					rs.open sql,conn,1,3
					for i=1 to rs.recordcount
						Response.write "<tr>"
						Response.write "<td height='40px'>" &i& "</td>"
						Response.write "<td>" &rs.Fields.Item("type")& "</td>"
						Response.write "<td>" &rs.Fields.Item("name")& "</td>"
						Response.write "<td><a href='"&rs.Fields.Item("route")&""&rs.Fields.Item("name")&"'> 下载 </a></td>"
						Response.write "</tr>"
						rs.movenext
					next
					rs.close
				%>
			</tbody>
			<button onclick="jump()">管理</button><br /><br /><br />
		</table>
			<script language="JavaScript">
				function jump(){
					var checknum = 1;;
					var pass = prompt('请输入管理密码：');
					if (pass == "jsjsjs" || pass == "hshs"){
						location.href = "download_admin.asp";
					}
					else{
						alert('密码错误！！！');
						location.href = "download.asp";
					}
				}
			</script>
	</body>
</html>
