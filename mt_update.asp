<!DOCTYPE >
<html>
<head runat="server">
	<meta charset="utf-8" />
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
	
	<h1>会议室预定</h1>
	<form method="post" action="mt_update_sql.asp" onsubmit="return Check()" name="order">
		<%
			sql1= "select * from meetorderbig WHERE XH='"&request("xh")&"'"
			rs1.CursorLocation = 3
			rs1.open sql1,conn,1,3
			
		%>
		<input type="hidden" name="xh" value="<%=rs1.Fields.Item("XH")%>">
		日期：<input type="date" name="rq" class="rowrow" value="<%=rs1.Fields.Item("DATE")%>">
		
		星期：<input type="text" name="xq" class="rowrow" value="<%=rs1.Fields.Item("WEEK")%>"><br><br>
		
		时间：<input type="text" name="sj" class="rowrow" value="<%=rs1.Fields.Item("TIME")%>">
		
		名称：<input type="text" name="mc" class="rowrow" value="<%=rs1.Fields.Item("MC")%>"><br><br>
		
		主题：<input type="text" name="zt" class="rowrow" value="<%=rs1.Fields.Item("ZT")%>">
		
		主讲人：<input type="text" name="zjr" class="rowrow" value="<%=rs1.Fields.Item("ZJR")%>"><br><br>
		
		会议室：<input type="text" name="hys" class="rowrow" value="<%=rs1.Fields.Item("ROOM")%>">
		
		扣款人：<input type="text" name="kkr" class="rowrow" value="<%=rs1.Fields.Item("KKR")%>"><br><br>
		
		主办方：<select name="zbf" class="rowrow" >
			<%
				if rs1.Fields.Item("ZBF")="京师" then
					response.write "<option value='京师'>京师</option><option value='沪师'>沪师</option>"
				else
					response.write "<option value='沪师'>沪师</option><option value='京师'>京师</option>"
				end if
			%>
		</select>
		
		备注：<input type="text" name="bz" class="rowrow" value="<%=rs1.Fields.Item("BZ")%>"><br /><br />
		
		
		
		<input type="submit" value="修改" style="width: 50px;height: 50px;background-color: whitesmoke;border-radius: 100%;"/>
	</form>
	</body>
</html>