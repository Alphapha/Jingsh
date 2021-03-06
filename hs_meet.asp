<!DOCTYPE >
<html>
<head runat="server">
	<meta charset="utf-8" />
	<meta http-equiv="refresh" content="100">
	<meta content="yes" name="apple-mobile-web-app-capable">
	<meta name="viewport" content="width=device-width, initial-scale=0.5, maximum-scale=0.5, user-scalable=no">	
	<%@Language="vbscript" Codepage="65001"%>
	<title>沪师会议室预定 | HS MeetingBooking</title>
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
		.meet{
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
	<script language="JavaScript">
		
		function Check(){
			var reg = /^[\u4E00-\u9FA5]{2,4}$/;
			var date1 = new Date(document.order.rq.value);
			var date = new Date();
			var sep = "-";
			var year = date.getFullYear(); //获取完整的年份(4位)
			var month = date.getMonth() + 1; //获取当前月份(0-11,0代表1月)
			var day = date.getDate(); //获取当前日
				if (month <= 9) {
					month = "0" + month;
				}
				if (day <= 9) {
					day = "0" + day;
				}
			var currentdate = year + sep + month + sep + day;
			var date2 = new Date(currentdate)
			var date3 = new Date("2021-12-31")
			if (date1.getTime() < date2.getTime()){
				alert("过去的就让它过去吧！！！");
				document.order.rq.focus();
				return false;
			}
			if (date1.getTime() > date3.getTime()){
				alert("以后的就留给以后吧！！！");
				document.order.rq.focus();
				return false;
			}
			if (document.order.hys.value.length < 2){
				alert("请选择会议室！！！");
				document.order.hys.focus();
				return false;
			}
			if (document.order.sj.value < 2){
				alert("请选择时间！！！");
				document.order.sj.focus();
				return false;
			}
			if (!reg.test(document.order.kkr.value)){
				alert("扣费律师名字限2-4汉字！！！");
					document.order.kkr.focus();
					return false;
			}
			if (document.order.kkr.value.length > 4 || document.order.kkr.value.length < 2){
				alert("扣费律师名字有问题！！！");
				document.order.kkr.focus();
				return false;
			}
			if (!reg.test(document.order.sjh.value)){
				alert("扣费律师名字限2-4汉字！！！");
					document.order.sjh.focus();
					return false;
			}
			if (document.order.sjh.value.length > 4 || document.order.sjh.value.length < 2){
				alert("预定人名字有问题！！！");
				document.order.sjh.focus();
				return false;
			}
			if (document.order.bz.value.length > 6 ){
				alert("请精简备注信息，限6字，详细信息请对接会议负责人！！！");
				document.order.bz.focus();
				return false;
			}
		}
	</script>
</head>
<body onselectstart="return false" oncontextmenu="return false">
	<!--#include file = 'conn.asp'-->
	<%
		set rs=server.createObject("adodb.recordset")
		sql= "SELECT * from meetorder_hs WHERE DATE=CURDATE()"
		rs.CursorLocation = 3
		rs.open sql,conn,1,3
		att=rs.getRows()
	%>
	<h1>沪师会议室预定</h1>
	<form method="post" action="hs_meet_sql.asp" onsubmit="return Check()" name="order">
		<input type="date" name="rq" value="<%=att(0,0)%>" class="rowrow"/><br><br>
		
		<select name="hys" class="rowrow" >
			<option value="">请选择会议室(必填)</option>
			<option value="洽谈室(1)">洽谈室(1)</option>
			<option value="洽谈室(2)">洽谈室(2)</option>
			<option value="洽谈室(3)">洽谈室(3)</option>
			<option value="洽谈室(4)">洽谈室(4)</option>
			<option value="洽谈室(5)">洽谈室(5)</option>
			<option value="洽谈室(6)">洽谈室(6)</option>
			<option value="洽谈室(7)">洽谈室(7)</option>
			<option value="洽谈室(8)">洽谈室(8)</option>
			<option value="洽谈室(8)">洽谈室(9)</option>
		</select>
		
		
		
		<select name="sj" class="rowrow">
			<option value="">请选择时间(必填)</option>
			<option value="08:00-09:00">08:00-09:00</option>
			<option value="09:00-10:00">09:00-10:00</option>
			<option value="10:00-11:00">10:00-11:00</option>
			<option value="11:00-12:00">11:00-12:00</option>
			<option value="12:00-13:00">12:00-13:00</option>
			<option value="13:00-14:00">13:00-14:00</option>
			<option value="14:00-15:00">14:00-15:00</option>
			<option value="15:00-16:00">15:00-16:00</option>
			<option value="16:00-17:00">16:00-17:00</option>
			<option value="17:00-18:00">17:00-18:00</option>
		</select><br><br>
		
		<select name="sj1" class="rowrow">
			<option value="">请选择时间(选填)</option>
			<option value="08:00-09:00">08:00-09:00</option>
			<option value="09:00-10:00">09:00-10:00</option>
			<option value="10:00-11:00">10:00-11:00</option>
			<option value="11:00-12:00">11:00-12:00</option>
			<option value="12:00-13:00">12:00-13:00</option>
			<option value="13:00-14:00">13:00-14:00</option>
			<option value="14:00-15:00">14:00-15:00</option>
			<option value="15:00-16:00">15:00-16:00</option>
			<option value="16:00-17:00">16:00-17:00</option>
			<option value="17:00-18:00">17:00-18:00</option>
		</select>
		
		<select name="sj2" class="rowrow">
			<option value="">请选择时间(选填)</option>
			<option value="08:00-09:00">08:00-09:00</option>
			<option value="09:00-10:00">09:00-10:00</option>
			<option value="10:00-11:00">10:00-11:00</option>
			<option value="11:00-12:00">11:00-12:00</option>
			<option value="12:00-13:00">12:00-13:00</option>
			<option value="13:00-14:00">13:00-14:00</option>
			<option value="14:00-15:00">14:00-15:00</option>
			<option value="15:00-16:00">15:00-16:00</option>
			<option value="16:00-17:00">16:00-17:00</option>
			<option value="17:00-18:00">17:00-18:00</option>
		</select><br><br>
		
		<select name="sj3" class="rowrow">
			<option value="">请选择时间(选填)</option>
			<option value="08:00-09:00">08:00-09:00</option>
			<option value="09:00-10:00">09:00-10:00</option>
			<option value="10:00-11:00">10:00-11:00</option>
			<option value="11:00-12:00">11:00-12:00</option>
			<option value="12:00-13:00">12:00-13:00</option>
			<option value="13:00-14:00">13:00-14:00</option>
			<option value="14:00-15:00">14:00-15:00</option>
			<option value="15:00-16:00">15:00-16:00</option>
			<option value="16:00-17:00">16:00-17:00</option>
			<option value="17:00-18:00">17:00-18:00</option>
		</select>
		
		<input type="text" name="kkr" class="rowrow" placeholder="扣费律师(必填)"  ><br><br>
		
		<input type="text" name="sjh" class="rowrow" placeholder="预定人姓名(必填)" >
		
		<input type="text" name="bz" class="rowrow" placeholder="备注:茶水-投影 (选填)" ><br /><br />
		
		
		<input type="hidden" name="cook" value="0">
		
		<input type="submit" value="预定" style="width: 50px;height: 50px;background-color: whitesmoke;border-radius: 100%;"/>
	</form>
	
	
	注意：党建室、大会议室预定需审核通过才可使用，具体联系行政办公室前台021-62637999。
	<br /><br />
	<table border="1" class="meet">
		<thead>
			<tr> 
				<td colspan="12" height="60px"><%=att(0,0)%></td>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td height="50px">会议室\时间</td>
				<td>08:00-09:00</td>
				<td>09:00-10:00</td>
				<td>10:00-11:00</td>
				<td>11:00-12:00</td>
				<td>12:00-13:00</td>
				<td>13:00-14:00</td>
				<td>14:00-15:00</td>
				<td>15:00-16:00</td>
				<td>16:00-17:00</td>
				<td>17:00-18:00</td>
			</tr>
		</tbody>
		<tfoot>
			<tr>
				<td >洽谈室(1)</td>
				<td height="50px"><%=att(3,0)%><br><%=att(4,0)%><br><%=att(5,0)%></td>
				<td><%=att(3,1)%><br><%=att(4,1)%><br><%=att(5,1)%></td>
				<td><%=att(3,2)%><br><%=att(4,2)%><br><%=att(5,2)%></td>
				<td><%=att(3,3)%><br><%=att(4,3)%><br><%=att(5,3)%></td>
				<td><%=att(3,4)%><br><%=att(4,4)%><br><%=att(5,4)%></td>
				<td><%=att(3,5)%><br><%=att(4,5)%><br><%=att(5,5)%></td>
				<td><%=att(3,6)%><br><%=att(4,6)%><br><%=att(5,6)%></td>
				<td><%=att(3,7)%><br><%=att(4,7)%><br><%=att(5,7)%></td>
				<td><%=att(3,8)%><br><%=att(4,8)%><br><%=att(5,8)%></td>
				<td><%=att(3,9)%><br><%=att(4,9)%><br><%=att(5,9)%></td>
			</tr>	
			<tr>
				<td height="50px">洽谈室(2)</td>
				<td><%=att(3,10)%><br><%=att(4,10)%><br><%=att(5,10)%></td>
				<td><%=att(3,11)%><br><%=att(4,11)%><br><%=att(5,11)%></td>
				<td><%=att(3,12)%><br><%=att(4,12)%><br><%=att(5,12)%></td>
				<td><%=att(3,13)%><br><%=att(4,13)%><br><%=att(5,13)%></td>
				<td><%=att(3,14)%><br><%=att(4,14)%><br><%=att(5,14)%></td>
				<td><%=att(3,15)%><br><%=att(4,15)%><br><%=att(5,15)%></td>
				<td><%=att(3,16)%><br><%=att(4,16)%><br><%=att(5,16)%></td>
				<td><%=att(3,17)%><br><%=att(4,17)%><br><%=att(5,17)%></td>
				<td><%=att(3,18)%><br><%=att(4,18)%><br><%=att(5,18)%></td>
				<td><%=att(3,19)%><br><%=att(4,19)%><br><%=att(5,19)%></td>
			</tr>		
			<tr>
				<td height="50px">洽谈室(3)</td>
				<td><%=att(3,20)%><br><%=att(4,20)%><br><%=att(5,20)%></td>
				<td><%=att(3,21)%><br><%=att(4,21)%><br><%=att(5,21)%></td>
				<td><%=att(3,22)%><br><%=att(4,22)%><br><%=att(5,22)%></td>
				<td><%=att(3,23)%><br><%=att(4,23)%><br><%=att(5,23)%></td>
				<td><%=att(3,24)%><br><%=att(4,24)%><br><%=att(5,24)%></td>
				<td><%=att(3,25)%><br><%=att(4,25)%><br><%=att(5,25)%></td>
				<td><%=att(3,26)%><br><%=att(4,26)%><br><%=att(5,26)%></td>
				<td><%=att(3,27)%><br><%=att(4,27)%><br><%=att(5,27)%></td>
				<td><%=att(3,28)%><br><%=att(4,28)%><br><%=att(5,28)%></td>
				<td><%=att(3,29)%><br><%=att(4,29)%><br><%=att(5,29)%></td>
			</tr>		
			<tr>
				<td height="50px">洽谈室(4)</td>
				<td><%=att(3,30)%><br><%=att(4,30)%><br><%=att(5,30)%></td>
				<td><%=att(3,31)%><br><%=att(4,31)%><br><%=att(5,31)%></td>
				<td><%=att(3,32)%><br><%=att(4,32)%><br><%=att(5,32)%></td>
				<td><%=att(3,33)%><br><%=att(4,33)%><br><%=att(5,33)%></td>
				<td><%=att(3,34)%><br><%=att(4,34)%><br><%=att(5,34)%></td>
				<td><%=att(3,35)%><br><%=att(4,35)%><br><%=att(5,35)%></td>
				<td><%=att(3,36)%><br><%=att(4,36)%><br><%=att(5,36)%></td>
				<td><%=att(3,37)%><br><%=att(4,37)%><br><%=att(5,37)%></td>
				<td><%=att(3,38)%><br><%=att(4,38)%><br><%=att(5,38)%></td>
				<td><%=att(3,39)%><br><%=att(4,39)%><br><%=att(5,39)%></td>
			</tr>		
			<tr>
				<td height="50px">洽谈室(5)</td>
				<td><%=att(3,40)%><br><%=att(4,40)%><br><%=att(5,40)%></td>
				<td><%=att(3,41)%><br><%=att(4,41)%><br><%=att(5,41)%></td>
				<td><%=att(3,42)%><br><%=att(4,42)%><br><%=att(5,42)%></td>
				<td><%=att(3,43)%><br><%=att(4,43)%><br><%=att(5,43)%></td>
				<td><%=att(3,44)%><br><%=att(4,44)%><br><%=att(5,44)%></td>
				<td><%=att(3,45)%><br><%=att(4,45)%><br><%=att(5,45)%></td>
				<td><%=att(3,46)%><br><%=att(4,46)%><br><%=att(5,46)%></td>
				<td><%=att(3,47)%><br><%=att(4,47)%><br><%=att(5,47)%></td>
				<td><%=att(3,48)%><br><%=att(4,48)%><br><%=att(5,48)%></td>
				<td><%=att(3,49)%><br><%=att(4,49)%><br><%=att(5,49)%></td>
			</tr>		
			<tr>
				<td height="50px">洽谈室(6)</td>
				<td><%=att(3,50)%><br><%=att(4,50)%><br><%=att(5,50)%></td>
				<td><%=att(3,51)%><br><%=att(4,51)%><br><%=att(5,51)%></td>
				<td><%=att(3,52)%><br><%=att(4,52)%><br><%=att(5,52)%></td>
				<td><%=att(3,53)%><br><%=att(4,53)%><br><%=att(5,53)%></td>
				<td><%=att(3,54)%><br><%=att(4,54)%><br><%=att(5,54)%></td>
				<td><%=att(3,55)%><br><%=att(4,55)%><br><%=att(5,55)%></td>
				<td><%=att(3,56)%><br><%=att(4,56)%><br><%=att(5,56)%></td>
				<td><%=att(3,57)%><br><%=att(4,57)%><br><%=att(5,57)%></td>
				<td><%=att(3,58)%><br><%=att(4,58)%><br><%=att(5,58)%></td>
				<td><%=att(3,59)%><br><%=att(4,59)%><br><%=att(5,59)%></td>
			</tr>		
			<tr>
				<td height="50px">洽谈室(7)</td>
				<td><%=att(3,60)%><br><%=att(4,60)%><br><%=att(5,60)%></td>
				<td><%=att(3,61)%><br><%=att(4,61)%><br><%=att(5,61)%></td>
				<td><%=att(3,62)%><br><%=att(4,62)%><br><%=att(5,62)%></td>
				<td><%=att(3,63)%><br><%=att(4,63)%><br><%=att(5,63)%></td>
				<td><%=att(3,64)%><br><%=att(4,64)%><br><%=att(5,64)%></td>
				<td><%=att(3,65)%><br><%=att(4,65)%><br><%=att(5,65)%></td>
				<td><%=att(3,66)%><br><%=att(4,66)%><br><%=att(5,66)%></td>
				<td><%=att(3,67)%><br><%=att(4,67)%><br><%=att(5,67)%></td>
				<td><%=att(3,68)%><br><%=att(4,68)%><br><%=att(5,68)%></td>
				<td><%=att(3,69)%><br><%=att(4,69)%><br><%=att(5,69)%></td>
			</tr>		
			<tr>
				<td height="50px">洽谈室(8)</td>
				<td><%=att(3,70)%><br><%=att(4,70)%><br><%=att(5,70)%></td>
				<td><%=att(3,71)%><br><%=att(4,71)%><br><%=att(5,71)%></td>
				<td><%=att(3,72)%><br><%=att(4,72)%><br><%=att(5,72)%></td>
				<td><%=att(3,73)%><br><%=att(4,73)%><br><%=att(5,73)%></td>
				<td><%=att(3,74)%><br><%=att(4,74)%><br><%=att(5,74)%></td>
				<td><%=att(3,75)%><br><%=att(4,75)%><br><%=att(5,75)%></td>
				<td><%=att(3,76)%><br><%=att(4,76)%><br><%=att(5,76)%></td>
				<td><%=att(3,77)%><br><%=att(4,77)%><br><%=att(5,77)%></td>
				<td><%=att(3,78)%><br><%=att(4,78)%><br><%=att(5,78)%></td>
				<td><%=att(3,79)%><br><%=att(4,79)%><br><%=att(5,79)%></td>
			</tr>	
			<tr>
				<td height="50px">洽谈室(9)</td>
				<td><%=att(3,80)%><br><%=att(4,80)%><br><%=att(5,80)%></td>
				<td><%=att(3,81)%><br><%=att(4,81)%><br><%=att(5,81)%></td>
				<td><%=att(3,82)%><br><%=att(4,82)%><br><%=att(5,82)%></td>
				<td><%=att(3,83)%><br><%=att(4,83)%><br><%=att(5,83)%></td>
				<td><%=att(3,84)%><br><%=att(4,84)%><br><%=att(5,84)%></td>
				<td><%=att(3,85)%><br><%=att(4,85)%><br><%=att(5,85)%></td>
				<td><%=att(3,86)%><br><%=att(4,86)%><br><%=att(5,86)%></td>
				<td><%=att(3,87)%><br><%=att(4,87)%><br><%=att(5,87)%></td>
				<td><%=att(3,88)%><br><%=att(4,88)%><br><%=att(5,88)%></td>
				<td><%=att(3,89)%><br><%=att(4,89)%><br><%=att(5,89)%></td>
			</tr>	
		</tfoot>	
	</table>
	
	<table border="2" class="meet">
		<thead>
			
			<tr> 
				<td colspan="9" height="60px">非当日会议室预定情况</td>
			</tr>
			<tr>
				<th>日期</th>
				<th>时间</th>
				<th>会议室</th>
				<th>扣费律师</th>
				<th>预定人</th>
				<th>备注</th>
			</tr>
		</thead>
		<tbody>
			<%
				set rs3=server.createObject("adodb.recordset")
				sql3= "SELECT * from meetorder_hs WHERE DATE > CURDATE()  and USER IS NOT NULL"
				rs3.CursorLocation = 3
				rs3.open sql3,conn,1,3
				for i=1 to rs3.recordcount
					Response.write "<tr>"
					Response.write "<td>" &rs3.Fields.Item("DATE")&  "</td>"
					Response.write "<td>" &rs3.Fields.Item("ROOM")& "</td>"
					Response.write "<td>" &rs3.Fields.Item("TIME")&  "</td>"
					
					Response.write "<td>" &rs3.Fields.Item("USER")& "</td>"
					Response.write "<td>" &rs3.Fields.Item("SJH")& "</td>"
					Response.write "<td>" &rs3.Fields.Item("BZ")& "</td>"
					Response.write "</tr>"
					rs3.movenext
				next
				rs3.close
			%>
		</tbody>
	</table>
	
	<table border="2" class="meet">
		<thead>
			<tr>
				<td colspan="12" height="60px">京师沪师活动安排表</td>
			</tr>
			<tr>
				<th>时间</th>
				<th>名称</th>
				<th>主题</th>
				<th>主讲人</th>
				<th>主办方</th>
				<th>地点</th>
				<th>备注</th>
			</tr>
		</thead>
		<tbody>
			<%
				sql1= "select * from meetorderbig WHERE DATE >= CURDATE() and TIME IS NOT NULL"
				rs1.CursorLocation = 3
				rs1.open sql1,conn,1,3
				for i=1 to rs1.recordcount
					Response.write "<tr>"
					Response.write "<td>" &rs1.Fields.Item("DATE")& "<br>"&rs1.Fields.Item("WEEK")& "<br>"&rs1.Fields.Item("TIME")& "</td>"
					Response.write "<td>" &rs1.Fields.Item("MC")& "</td>"
					Response.write "<td>" &rs1.Fields.Item("ZT")& "</td>"
					Response.write "<td>" &rs1.Fields.Item("ZJR")& "</td>"
					Response.write "<td>" &rs1.Fields.Item("ZBF")& "</td>"
					Response.write "<td>" &rs1.Fields.Item("ROOM")& "</td>"
					Response.write "<td>" &rs1.Fields.Item("BZ")& "</td>"
					
					Response.write "</tr>"
					rs1.movenext
				next
				rs1.close
			%>
			
		</tbody>
	</table>
	
	
</body>
</html>