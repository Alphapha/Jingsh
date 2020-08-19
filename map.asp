<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<%@Language="vbscript" Codepage="65001"%>
		<title>律所地图</title>
		<link rel="stylesheet" type="text/css" href="/css/map.css" />
		<script src="/css/bootstrap/js/jquery.min.js"></script>
		<script src="js/click.js" defer="defer"></script>
		<style type="text/css">
			*{
				cursor: url('./img/play/kn5.cur'),default;
				
			}
		</style>
	</head>
	<body onselectstart="return false"  oncontextmenu="return false">
		<!--#include file='conn.asp'-->
		<%
			set rs=server.createObject("adodb.recordset")
			sql = "select * FROM site"
			rs.open sql,conn,1,3
			arr=rs.getrows()
		%>
		
		<input type="button" value="Floor 3" onclick="three()" style="height: 150px;width: 300px;">
		<input type="button" value="Floor 4" onclick="four()" style="height: 150px;width: 300px;">
		<input type="button" value="Floor 5" onclick="five()" style="height: 150px;width: 300px;">
		<input type="button" value="管理入口" onclick="jump()" style="height: 150px;width: 300px;"><br>
		<br><br>
		
		
		<div id="three" class="floor3"">
<!--1  <%=arr(2,1)%>-->
			<div class="middle">
				<div class="littlel">角落</div>
				<div class="littlel">角落</div>
				<div class="littlel">库房</div>
				<div class="littlel">库房</div>
				<div class="littles">C016<br><%=arr(2,97)%></div>
				<div class="littlel">货梯</div>
				<div class="littlel">货梯</div>
				<div class="littlel">货梯</div>
				<div class="littlel">货梯</div>
				<div class="littlel">卫生间</div>
				<div class="littlel">卫生间</div>
				<div class="littlel">卫生间</div>
				<div class="littles">D030<br><%=arr(2,135)%></div>
				<div class="littles">D029<br><%=arr(2,134)%></div>
				<div class="littles">D028<br><%=arr(2,133)%></div>
				<div class="littles">D027<br><%=arr(2,132)%></div>
				<div class="littles">D026<br><%=arr(2,131)%></div>
				<div class="littles">D025<br><%=arr(2,130)%></div>
				<div class="littles">D024<br><%=arr(2,129)%></div>
				<div class="littles">D023<br><%=arr(2,128)%></div>
				<div class="littles">D023<br><%=arr(2,128)%></div>
				<div class="littlel">墙</div>
				<div class="littlel">电梯</div>
				<div class="littlel">电房</div>
				<div class="littlel">楼梯</div>
				<div class="littlel">楼梯</div>
				<div class="littlel"></div>
				<div class="littlel">卫生间</div>
				<div class="littlel">墙</div>
				<div class="littlel">会议室7</div>
				<div class="little"></div>
				<div class="littles">财务室</div>
				<div class="littles">行政办2</div>
				<div class="littles">行政办2</div>
				<div class="littles">风控办公室</div>
				<div class="littles">行政办1</div>
				<div class="littlel">楼梯</div>
				<div class="littlel">茶室</div>
				<div class="littlel">茶室</div>
			</div>
<!--2-->
			<div class="middle">
				<div class="littlel">角落</div>
				<div class="littlel">角落</div>
				<div class="littlel">库房</div>
				<div class="littlel">库房</div>
				<div class="littles">C016<br><%=arr(2,97)%></div>
				<div class="littlel">货梯</div>
				<div class="littlel">货梯</div>
				<div class="littlel">货梯</div>
				<div class="littlel">货梯</div>
				<div class="littlel">卫生间</div>
				<div class="littlel">卫生间</div>
				<div class="littlel">卫生间</div>
				<div class="littles">D034<br><%=arr(2,139)%></div>
				<div class="littles">D033<br><%=arr(2,138)%></div>
				<div class="littles">D032<br><%=arr(2,137)%></div>
				<div class="littles">D031<br><%=arr(2,136)%></div>
				<div class="little"></div>
				<div class="littles">D022<br><%=arr(2,127)%></div>
				<div class="littles">D021<br><%=arr(2,126)%></div>
				<div class="littles">D020<br><%=arr(2,125)%></div>
				<div class="littles">D019<br><%=arr(2,124)%></div>
				<div class="littlel">墙</div>
				<div class="littlel">电梯</div>
				<div class="littlel">电房</div>
				<div class="littlel">楼梯</div>
				<div class="littlel">楼梯</div>
				<div class="little"></div>
				<div class="littlel">卫生间</div>
				<div class="littlel">墙</div>
				<div class="littlel">会议室7</div>
				<div class="little"></div>
				<div class="littles">综合服务台</div>
				<div class="littles">综合服务台</div>
				<div class="littles">综合服务台</div>
				<div class="littles">综合服务台</div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="littlel">茶室</div>
				<div class="littlel">茶室</div>
			</div>
<!--3-->
			<div class="middle">
				<div class="littles">C013<br><%=arr(2,94)%></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="littlel">大洽谈区</div>
				<div class="littlel">茶室</div>
			</div>
<!--4-->
			<div class="middle">
				<div class="littles">C012<br><%=arr(2,93)%></div>
				<div class="little"></div>
				<div class="littles">C014<br><%=arr(2,95)%></div>
				<div class="littles">C015<br><%=arr(2,96)%></div>
				<div class="littles">C017<br><%=arr(2,98)%></div>
				<div class="littles">C018<br><%=arr(2,99)%></div>
				<div class="littles">C019<br><%=arr(2,100)%></div>
				<div class="littles">C020<br><%=arr(2,101)%></div>
				<div class="littles">C021<br><%=arr(2,102)%></div>
				<div class="littles">C022<br><%=arr(2,103)%></div>
				<div class="littles">C023<br><%=arr(2,104)%></div>
				<div class="littles">C024<br><%=arr(2,105)%></div>
				<div class="little"></div>
				<div class="littles">D018<br><%=arr(2,123)%></div>
				<div class="littles">D017<br><%=arr(2,122)%></div>
				<div class="littles">D016<br><%=arr(2,121)%></div>
				<div class="littles">D015<br><%=arr(2,120)%></div>
				<div class="littles">D014<br><%=arr(2,119)%></div>
				<div class="littles">D013<br><%=arr(2,118)%></div>
				<div class="littles">D012<br><%=arr(2,117)%></div>
				<div class="littles">D011<br><%=arr(2,116)%></div>
				<div class="littles">D010<br><%=arr(2,115)%></div>
				<div class="little"></div>
				<div class="littlel">模拟法庭</div>
				<div class="littlel">模拟法庭</div>
				<div class="littlel">模拟法庭</div>
				<div class="littlel">会议室1</div>
				<div class="littlel">会议室2</div>
				<div class="littlel">会议室3</div>
				<div class="littlel">VIP会议室</div>
				<div class="littlel">VIP会议室</div>
				<div class="littlel">VIP会议室</div>
				<div class="littlel">会议室4</div>
				<div class="littlel">会议室5</div>
				<div class="littlel">会议室6</div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="littlel">大洽谈区</div>
				<div class="littlel">茶室</div>
			</div>
<!--5-->
			<div class="middle">
				<div class="littles">C011<br><%=arr(2,92)%></div>
				<div class="little"></div>
				<div class="littles">C010<br><%=arr(2,91)%></div>
				<div class="littles">C009<br><%=arr(2,90)%></div>
				<div class="littles">C008<br><%=arr(2,89)%></div>
				<div class="littles">C007<br><%=arr(2,88)%></div>
				<div class="littles">C006<br><%=arr(2,87)%></div>
				<div class="littles">C005<br><%=arr(2,86)%></div>
				<div class="littles">C004<br><%=arr(2,85)%></div>
				<div class="littles">C003<br><%=arr(2,84)%></div>
				<div class="littles">C002<br><%=arr(2,83)%></div>
				<div class="littles">C001<br><%=arr(2,82)%></div>
				<div class="little"></div>
				<div class="littles">D009<br><%=arr(2,114)%></div>
				<div class="littles">D008<br><%=arr(2,113)%></div>
				<div class="littles">D007<br><%=arr(2,112)%></div>
				<div class="littles">D006<br><%=arr(2,111)%></div>
				<div class="littles">D005<br><%=arr(2,110)%></div>
				<div class="littles">D004<br><%=arr(2,109)%></div>
				<div class="littles">D003<br><%=arr(2,108)%></div>
				<div class="littles">D002<br><%=arr(2,107)%></div>
				<div class="littles">D001<br><%=arr(2,106)%></div>
				<div class="little"></div>
				<div class="littlel">模拟法庭</div>
				<div class="littlel">模拟法庭</div>
				<div class="littlel">模拟法庭</div>
				<div class="littlel">会议室1</div>
				<div class="littlel">会议室2</div>
				<div class="littlel">会议室3</div>
				<div class="littlel">VIP会议室</div>
				<div class="littlel">VIP会议室</div>
				<div class="littlel">会议室4</div>
				<div class="littlel">VIP会议室</div>
				<div class="littlel">会议室5</div>
				<div class="littlel">会议室6</div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="littlel">大洽谈区</div>
				<div class="littlel">茶室</div>
			</div>
<!--6--->
			<div class="middle">
				<div class="littlel">水吧</div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="littlel">大洽谈区</div>
				<div class="littlel">茶室</div>
			</div>		
<!--6-->
			
<!--6工位-->
			<div class="middle-seat">
				<div class="little-seat-al">水吧</div>
				<div class="little-seat-a"></div>
				<div class="little-seat-a">
					<div class="little-seat">
						<div class="little-seat-atom">3-237<br><%=arr(2,507)%></div>
						<div class="little-seat-atom">3-238<br><%=arr(2,508)%></div>
						<div class="little-seat-atom">3-239<br><%=arr(2,509)%></div>
						<div class="little-seat-atom">3-240<br><%=arr(2,510)%></div>
					</div>
					<div class="little-seat">
						<div class="little-seat-atom">3-233<br><%=arr(2,503)%></div>
						<div class="little-seat-atom">3-234<br><%=arr(2,504)%></div>
						<div class="little-seat-atom">3-235<br><%=arr(2,505)%></div>
						<div class="little-seat-atom">3-236<br><%=arr(2,506)%></div>
					</div>
				</div>
				<div class="little-seat-a">
					<div class="little-seat">
						<div class="little-seat-atom">3-229<br><%=arr(2,499)%></div>
						<div class="little-seat-atom">3-230<br><%=arr(2,500)%></div>
						<div class="little-seat-atom">3-231<br><%=arr(2,501)%></div>
						<div class="little-seat-atom">3-232<br><%=arr(2,502)%></div>
					</div>
					<div class="little-seat">
						<div class="little-seat-atom">3-225<br><%=arr(2,495)%></div>
						<div class="little-seat-atom">3-226<br><%=arr(2,496)%></div>
						<div class="little-seat-atom">3-227<br><%=arr(2,497)%></div>
						<div class="little-seat-atom">3-228<br><%=arr(2,498)%></div>
					</div>
				</div>
				<div class="little-seat-a">
					<div class="little-seat">
						<div class="little-seat-atom">3-221<br><%=arr(2,491)%></div>
						<div class="little-seat-atom">3-222<br><%=arr(2,492)%></div>
						<div class="little-seat-atom">3-223<br><%=arr(2,493)%></div>
						<div class="little-seat-atom">3-224<br><%=arr(2,494)%></div>
					</div>
					<div class="little-seat">
						<div class="little-seat-atom">3-217<br><%=arr(2,487)%></div>
						<div class="little-seat-atom">3-218<br><%=arr(2,488)%></div>
						<div class="little-seat-atom">3-219<br><%=arr(2,489)%></div>
						<div class="little-seat-atom">3-220<br><%=arr(2,490)%></div>
					</div>
				</div>
				<div class="little-seat-a">
					<div class="little-seat">
						<div class="little-seat-atom">3-213<br><%=arr(2,483)%></div>
						<div class="little-seat-atom">3-214<br><%=arr(2,484)%></div>
						<div class="little-seat-atom">3-215<br><%=arr(2,485)%></div>
						<div class="little-seat-atom">3-216<br><%=arr(2,486)%></div>
					</div>
					<div class="little-seat">
						<div class="little-seat-atom">3-209<br><%=arr(2,479)%></div>
						<div class="little-seat-atom">3-210<br><%=arr(2,480)%></div>
						<div class="little-seat-atom">3-211<br><%=arr(2,481)%></div>
						<div class="little-seat-atom">3-212<br><%=arr(2,482)%></div>
					</div>
				</div>
				<div class="little-seat-a">
					<div class="little-seat">
						<div class="little-seat-atom">3-205<br><%=arr(2,475)%></div>
						<div class="little-seat-atom">3-206<br><%=arr(2,476)%></div>
						<div class="little-seat-atom">3-207<br><%=arr(2,477)%></div>
						<div class="little-seat-atom">3-208<br><%=arr(2,478)%></div>
					</div>
					<div class="little-seat">
						<div class="little-seat-atom">3-201<br><%=arr(2,471)%></div>
						<div class="little-seat-atom">3-202<br><%=arr(2,472)%></div>
						<div class="little-seat-atom">3-203<br><%=arr(2,473)%></div>
						<div class="little-seat-atom">3-204<br><%=arr(2,474)%></div>
					</div>
				</div>
				<div class="little-seat-a">
					<div class="little-seat">
						<div class="little-seat-atom">3-197<br><%=arr(2,467)%></div>
						<div class="little-seat-atom">3-198<br><%=arr(2,468)%></div>
						<div class="little-seat-atom">3-199<br><%=arr(2,469)%></div>
						<div class="little-seat-atom">3-200<br><%=arr(2,470)%></div>
					</div>
					<div class="little-seat">
						<div class="little-seat-atom">3-193<br><%=arr(2,463)%></div>
						<div class="little-seat-atom">3-194<br><%=arr(2,464)%></div>
						<div class="little-seat-atom">3-195<br><%=arr(2,465)%></div>
						<div class="little-seat-atom">3-196<br><%=arr(2,466)%></div>
					</div>
				</div>
				<div class="little-seat-a">
					<div class="little-seat">
						<div class="little-seat-atom">3-189<br><%=arr(2,459)%></div>
						<div class="little-seat-atom">3-190<br><%=arr(2,460)%></div>
						<div class="little-seat-atom">3-191<br><%=arr(2,461)%></div>
						<div class="little-seat-atom">3-192<br><%=arr(2,462)%></div>
					</div>
					<div class="little-seat">
						<div class="little-seat-atom">3-185<br><%=arr(2,455)%></div>
						<div class="little-seat-atom">3-186<br><%=arr(2,456)%></div>
						<div class="little-seat-atom">3-187<br><%=arr(2,457)%></div>
						<div class="little-seat-atom">3-188<br><%=arr(2,458)%></div>
					</div>
				</div>
				<div class="little-seat-a">
					<div class="little-seat">
						<div class="little-seat-atom">3-181<br><%=arr(2,451)%></div>
						<div class="little-seat-atom">3-182<br><%=arr(2,452)%></div>
						<div class="little-seat-atom">3-183<br><%=arr(2,453)%></div>
						<div class="little-seat-atom">3-184<br><%=arr(2,454)%></div>
					</div>
					<div class="little-seat">
						<div class="little-seat-atom">3-177<br><%=arr(2,447)%></div>
						<div class="little-seat-atom">3-178<br><%=arr(2,448)%></div>
						<div class="little-seat-atom">3-179<br><%=arr(2,449)%></div>
						<div class="little-seat-atom">3-180<br><%=arr(2,450)%></div>
					</div>
				</div>
				<div class="little-seat-a">
					<div class="little-seat">
						<div class="little-seat-atom">3-173<br><%=arr(2,443)%></div>
						<div class="little-seat-atom">3-174<br><%=arr(2,444)%></div>
						<div class="little-seat-atom">3-175<br><%=arr(2,445)%></div>
						<div class="little-seat-atom">3-176<br><%=arr(2,446)%></div>
					</div>
					<div class="little-seat">
						<div class="little-seat-atom">3-169<br><%=arr(2,439)%></div>
						<div class="little-seat-atom">3-170<br><%=arr(2,440)%></div>
						<div class="little-seat-atom">3-171<br><%=arr(2,441)%></div>
						<div class="little-seat-atom">3-172<br><%=arr(2,442)%></div>
					</div>
				</div>
				<div class="little-seat-a">
					<div class="little-seat">
						<div class="little-seat-atom">3-165<br><%=arr(2,435)%></div>
						<div class="little-seat-atom">3-166<br><%=arr(2,436)%></div>
						<div class="little-seat-atom">3-167<br><%=arr(2,437)%></div>
						<div class="little-seat-atom">3-168<br><%=arr(2,438)%></div>
					</div>
					<div class="little-seat">
						<div class="little-seat-atom">3-161<br><%=arr(2,431)%></div>
						<div class="little-seat-atom">3-162<br><%=arr(2,432)%></div>
						<div class="little-seat-atom">3-163<br><%=arr(2,433)%></div>
						<div class="little-seat-atom">3-164<br><%=arr(2,434)%></div>
					</div>
				</div>
				<div class="little-seat-a"></div>
				<div class="little-seat-a">
					<div class="little-seat">
						<div class="little-seat-atom">3-157<br><%=arr(2,427)%></div>
						<div class="little-seat-atom">3-158<br><%=arr(2,428)%></div>
						<div class="little-seat-atom">3-159<br><%=arr(2,429)%></div>
						<div class="little-seat-atom">3-160<br><%=arr(2,430)%></div>
					</div>
					<div class="little-seat">
						<div class="little-seat-atom">3-153<br><%=arr(2,423)%></div>
						<div class="little-seat-atom">3-154<br><%=arr(2,424)%></div>
						<div class="little-seat-atom">3-155<br><%=arr(2,425)%></div>
						<div class="little-seat-atom">3-156<br><%=arr(2,426)%></div>
					</div>
				</div>
				<div class="little-seat-a">
					<div class="little-seat">
						<div class="little-seat-atom">3-149<br><%=arr(2,419)%></div>
						<div class="little-seat-atom">3-150<br><%=arr(2,420)%></div>
						<div class="little-seat-atom">3-151<br><%=arr(2,421)%></div>
						<div class="little-seat-atom">3-152<br><%=arr(2,422)%></div>
					</div>
					<div class="little-seat">
						<div class="little-seat-atom">3-145<br><%=arr(2,415)%></div>
						<div class="little-seat-atom">3-146<br><%=arr(2,416)%></div>
						<div class="little-seat-atom">3-147<br><%=arr(2,417)%></div>
						<div class="little-seat-atom">3-148<br><%=arr(2,418)%></div>
					</div>
				</div>
				<div class="little-seat-a">
					<div class="little-seat">
						<div class="little-seat-atom">3-141<br><%=arr(2,411)%></div>
						<div class="little-seat-atom">3-142<br><%=arr(2,412)%></div>
						<div class="little-seat-atom">3-143<br><%=arr(2,413)%></div>
						<div class="little-seat-atom">3-144<br><%=arr(2,414)%></div>
					</div>
					<div class="little-seat">
						<div class="little-seat-atom">3-137<br><%=arr(2,407)%></div>
						<div class="little-seat-atom">3-138<br><%=arr(2,408)%></div>
						<div class="little-seat-atom">3-139<br><%=arr(2,409)%></div>
						<div class="little-seat-atom">3-140<br><%=arr(2,410)%></div>
					</div>
				</div>
				<div class="little-seat-a">
					<div class="little-seat">
						<div class="little-seat-atom">3-133<br><%=arr(2,403)%></div>
						<div class="little-seat-atom">3-134<br><%=arr(2,404)%></div>
						<div class="little-seat-atom">3-135<br><%=arr(2,405)%></div>
						<div class="little-seat-atom">3-136<br><%=arr(2,406)%></div>
					</div>
					<div class="little-seat">
						<div class="little-seat-atom">3-129<br><%=arr(2,399)%></div>
						<div class="little-seat-atom">3-130<br><%=arr(2,400)%></div>
						<div class="little-seat-atom">3-131<br><%=arr(2,401)%></div>
						<div class="little-seat-atom">3-132<br><%=arr(2,402)%></div>
					</div>
				</div>
				<div class="little-seat-a">
					<div class="little-seat">
						<div class="little-seat-atom">3-125<br><%=arr(2,395)%></div>
						<div class="little-seat-atom">3-126<br><%=arr(2,396)%></div>
						<div class="little-seat-atom">3-127<br><%=arr(2,397)%></div>
						<div class="little-seat-atom">3-128<br><%=arr(2,398)%></div>
					</div>
					<div class="little-seat">
						<div class="little-seat-atom">3-121<br><%=arr(2,391)%></div>
						<div class="little-seat-atom">3-122<br><%=arr(2,392)%></div>
						<div class="little-seat-atom">3-123<br><%=arr(2,393)%></div>
						<div class="little-seat-atom">3-124<br><%=arr(2,394)%></div>
					</div>
				</div>
				<div class="little-seat-a">
					<div class="little-seat">
						<div class="little-seat-atom">3-117<br><%=arr(2,387)%></div>
						<div class="little-seat-atom">3-118<br><%=arr(2,388)%></div>
						<div class="little-seat-atom">3-119<br><%=arr(2,389)%></div>
						<div class="little-seat-atom">3-120<br><%=arr(2,390)%></div>
					</div>
					<div class="little-seat">
						<div class="little-seat-atom">3-113<br><%=arr(2,383)%></div>
						<div class="little-seat-atom">3-114<br><%=arr(2,384)%></div>
						<div class="little-seat-atom">3-115<br><%=arr(2,385)%></div>
						<div class="little-seat-atom">3-116<br><%=arr(2,386)%></div>
					</div>
				</div>
				<div class="little-seat-a">
					<div class="little-seat">
						<div class="little-seat-atom">3-109<br><%=arr(2,379)%></div>
						<div class="little-seat-atom">3-110<br><%=arr(2,380)%></div>
						<div class="little-seat-atom">3-111<br><%=arr(2,381)%></div>
						<div class="little-seat-atom">3-112<br><%=arr(2,382)%></div>
					</div>
					<div class="little-seat">
						<div class="little-seat-atom">3-105<br><%=arr(2,375)%></div>
						<div class="little-seat-atom">3-106<br><%=arr(2,376)%></div>
						<div class="little-seat-atom">3-107<br><%=arr(2,377)%></div>
						<div class="little-seat-atom">3-108<br><%=arr(2,378)%></div>
					</div>
				</div>
				<div class="little-seat-a">
					<div class="little-seat">
						<div class="little-seat-atom">3-101<br><%=arr(2,371)%></div>
						<div class="little-seat-atom">3-102<br><%=arr(2,372)%></div>
						<div class="little-seat-atom">3-103<br><%=arr(2,373)%></div>
						<div class="little-seat-atom">3-104<br><%=arr(2,374)%></div>
					</div>
					<div class="little-seat">
						<div class="little-seat-atom">3-097<br><%=arr(2,367)%></div>
						<div class="little-seat-atom">3-098<br><%=arr(2,368)%></div>
						<div class="little-seat-atom">3-099<br><%=arr(2,369)%></div>
						<div class="little-seat-atom">3-100<br><%=arr(2,370)%></div>
					</div>
				</div>
				<div class="little-seat-a">
					<div class="little-seat">
						<div class="little-seat-atom">3-093<br><%=arr(2,363)%></div>
						<div class="little-seat-atom">3-094<br><%=arr(2,364)%></div>
						<div class="little-seat-atom">3-095<br><%=arr(2,365)%></div>
						<div class="little-seat-atom">3-096<br><%=arr(2,366)%></div>
					</div>
				</div>
				
				<div class="little-seat-a"></div>
				<div class="little-seat-a">
					<div class="little-seat">
						<div class="little-seat-atom">3-089<br><%=arr(2,359)%></div>
						<div class="little-seat-atom">3-090<br><%=arr(2,360)%></div>
						<div class="little-seat-atom">3-091<br><%=arr(2,361)%></div>
						<div class="little-seat-atom">3-092<br><%=arr(2,362)%></div>
					</div>
					<div class="little-seat">
						<div class="little-seat-atom">3-085<br><%=arr(2,355)%></div>
						<div class="little-seat-atom">3-086<br><%=arr(2,356)%></div>
						<div class="little-seat-atom">3-087<br><%=arr(2,357)%></div>
						<div class="little-seat-atom">3-088<br><%=arr(2,358)%></div>
					</div>
				</div>
				<div class="little-seat-a">
					<div class="little-seat">
						<div class="little-seat-atom">3-081<br><%=arr(2,351)%></div>
						<div class="little-seat-atom">3-082<br><%=arr(2,352)%></div>
						<div class="little-seat-atom">3-083<br><%=arr(2,353)%></div>
						<div class="little-seat-atom">3-084<br><%=arr(2,354)%></div>
					</div>
					<div class="little-seat">
						<div class="little-seat-atom">3-077<br><%=arr(2,347)%></div>
						<div class="little-seat-atom">3-078<br><%=arr(2,348)%></div>
						<div class="little-seat-atom">3-079<br><%=arr(2,349)%></div>
						<div class="little-seat-atom">3-080<br><%=arr(2,350)%></div>
					</div>
				</div>
				<div class="little-seat-a">
					<div class="little-seat">
						<div class="little-seat-atom">3-073<br><%=arr(2,343)%></div>
						<div class="little-seat-atom">3-074<br><%=arr(2,344)%></div>
						<div class="little-seat-atom">3-075<br><%=arr(2,345)%></div>
						<div class="little-seat-atom">3-076<br><%=arr(2,346)%></div>
					</div>
					<div class="little-seat">
						<div class="little-seat-atom">3-069<br><%=arr(2,339)%></div>
						<div class="little-seat-atom">3-070<br><%=arr(2,340)%></div>
						<div class="little-seat-atom">3-071<br><%=arr(2,341)%></div>
						<div class="little-seat-atom">3-072<br><%=arr(2,342)%></div>
					</div>
				</div>
				<div class="little-seat-a">
					<div class="little-seat">
						<div class="little-seat-atom">3-065<br><%=arr(2,335)%></div>
						<div class="little-seat-atom">3-066<br><%=arr(2,336)%></div>
						<div class="little-seat-atom">3-067<br><%=arr(2,337)%></div>
						<div class="little-seat-atom">3-068<br><%=arr(2,338)%></div>
					</div>
					<div class="little-seat">
						<div class="little-seat-atom">3-061<br><%=arr(2,331)%></div>
						<div class="little-seat-atom">3-062<br><%=arr(2,332)%></div>
						<div class="little-seat-atom">3-063<br><%=arr(2,333)%></div>
						<div class="little-seat-atom">3-064<br><%=arr(2,334)%></div>
					</div>
				</div>
				<div class="little-seat-a">
					<div class="little-seat">
						<div class="little-seat-atom">3-057<br><%=arr(2,327)%></div>
						<div class="little-seat-atom">3-058<br><%=arr(2,328)%></div>
						<div class="little-seat-atom">3-059<br><%=arr(2,329)%></div>
						<div class="little-seat-atom">3-060<br><%=arr(2,330)%></div>
					</div>
					<div class="little-seat">
						<div class="little-seat-atom">3-053<br><%=arr(2,323)%></div>
						<div class="little-seat-atom">3-054<br><%=arr(2,324)%></div>
						<div class="little-seat-atom">3-055<br><%=arr(2,325)%></div>
						<div class="little-seat-atom">3-056<br><%=arr(2,326)%></div>
					</div>
				</div>
				<div class="little-seat-a">
					<div class="little-seat">
						<div class="little-seat-atom">3-049<br><%=arr(2,319)%></div>
						<div class="little-seat-atom">3-050<br><%=arr(2,320)%></div>
						<div class="little-seat-atom">3-051<br><%=arr(2,321)%></div>
						<div class="little-seat-atom">3-052<br><%=arr(2,322)%></div>
					</div>
					<div class="little-seat">
						<div class="little-seat-atom">3-045<br><%=arr(2,315)%></div>
						<div class="little-seat-atom">3-046<br><%=arr(2,316)%></div>
						<div class="little-seat-atom">3-047<br><%=arr(2,317)%></div>
						<div class="little-seat-atom">3-048<br><%=arr(2,318)%></div>
					</div>
				</div>
				<div class="little-seat-a">
					<div class="little-seat">
						<div class="little-seat-atom">3-041<br><%=arr(2,311)%></div>
						<div class="little-seat-atom">3-042<br><%=arr(2,312)%></div>
						<div class="little-seat-atom">3-043<br><%=arr(2,313)%></div>
						<div class="little-seat-atom">3-044<br><%=arr(2,314)%></div>
					</div>
					<div class="little-seat">
						<div class="little-seat-atom">3-037<br><%=arr(2,307)%></div>
						<div class="little-seat-atom">3-038<br><%=arr(2,308)%></div>
						<div class="little-seat-atom">3-039<br><%=arr(2,309)%></div>
						<div class="little-seat-atom">3-040<br><%=arr(2,310)%></div>
					</div>
				</div>
				<div class="little-seat-a">
					<div class="little-seat">
						<div class="little-seat-atom">3-033<br><%=arr(2,303)%></div>
						<div class="little-seat-atom">3-034<br><%=arr(2,304)%></div>
						<div class="little-seat-atom">3-035<br><%=arr(2,305)%></div>
						<div class="little-seat-atom">3-036<br><%=arr(2,306)%></div>
					</div>
					<div class="little-seat">
						<div class="little-seat-atom">3-029<br><%=arr(2,299)%></div>
						<div class="little-seat-atom">3-030<br><%=arr(2,300)%></div>
						<div class="little-seat-atom">3-031<br><%=arr(2,301)%></div>
						<div class="little-seat-atom">3-032<br><%=arr(2,302)%></div>
					</div>
				</div>
				<div class="little-seat-a">
					<div class="little-seat">
						<div class="little-seat-atom">3-025<br><%=arr(2,295)%></div>
						<div class="little-seat-atom">3-026<br><%=arr(2,296)%></div>
						<div class="little-seat-atom">3-027<br><%=arr(2,297)%></div>
						<div class="little-seat-atom">3-028<br><%=arr(2,298)%></div>
					</div>
					<div class="little-seat">
						<div class="little-seat-atom">3-021<br><%=arr(2,291)%></div>
						<div class="little-seat-atom">3-022<br><%=arr(2,292)%></div>
						<div class="little-seat-atom">3-023<br><%=arr(2,293)%></div>
						<div class="little-seat-atom">3-024<br><%=arr(2,294)%></div>
					</div>
				</div>
				<div class="little-seat-a">
					<div class="little-seat">
						<div class="little-seat-atom">3-017<br><%=arr(2,287)%></div>
						<div class="little-seat-atom">3-018<br><%=arr(2,288)%></div>
						<div class="little-seat-atom">3-019<br><%=arr(2,289)%></div>
						<div class="little-seat-atom">3-020<br><%=arr(2,290)%></div>
					</div>
					<div class="little-seat">
						<div class="little-seat-atom">3-013<br><%=arr(2,283)%></div>
						<div class="little-seat-atom">3-014<br><%=arr(2,284)%></div>
						<div class="little-seat-atom">3-015<br><%=arr(2,285)%></div>
						<div class="little-seat-atom">3-016<br><%=arr(2,286)%></div>
					</div>
				</div>
				<div class="little-seat-a">
					<div class="little-seat">
						<div class="little-seat-atom">3-009<br><%=arr(2,279)%></div>
						<div class="little-seat-atom">3-010<br><%=arr(2,280)%></div>
						<div class="little-seat-atom">3-011<br><%=arr(2,281)%></div>
						<div class="little-seat-atom">3-012<br><%=arr(2,282)%></div>
					</div>
					<div class="little-seat">
						<div class="little-seat-atom">3-005<br><%=arr(2,275)%></div>
						<div class="little-seat-atom">3-006<br><%=arr(2,276)%></div>
						<div class="little-seat-atom">3-007<br><%=arr(2,277)%></div>
						<div class="little-seat-atom">3-008<br><%=arr(2,278)%></div>
					</div>
				</div>
				<div class="little-seat-a">
					<div class="little-seat">
						<div class="little-seat-atom">3-001<br><%=arr(2,271)%></div>
						<div class="little-seat-atom">3-002<br><%=arr(2,272)%></div>
						<div class="little-seat-atom">3-003<br><%=arr(2,273)%></div>
						<div class="little-seat-atom">3-004<br><%=arr(2,274)%></div>
					</div>
					<div class="little-seatl">
					水吧
					</div>
				</div>
				<div class="little-seat-a"></div>
				<div class="little-seat-a"></div>
				<div class="little-seat-al">茶室</div>
				<div class="little-seat-al">茶室</div>
			</div>			
			
<!--6--->
			<div class="middle">
				<div class="littlel">水吧</div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="littlel">墙</div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="littlel">墙</div>
				<div class="littled"></div>
			</div>	
<!--7-->
			<div class="middle">
				<div class="littles">B053<br><%=arr(2,76)%></div>
				<div class="little"></div>
				<div class="littles">B037<br><%=arr(2,60)%></div>
				<div class="littles">B038<br><%=arr(2,61)%></div>
				<div class="littles">B036<br><%=arr(2,59)%></div>
				<div class="littles">B035<br><%=arr(2,58)%></div>
				<div class="littles">B034<br><%=arr(2,57)%></div>
				<div class="littles">B033<br><%=arr(2,56)%></div>
				<div class="littles">B032<br><%=arr(2,55)%></div>
				<div class="littles">B031<br><%=arr(2,54)%></div>
				<div class="littles">B030<br><%=arr(2,53)%></div>
				<div class="littles">B029<br><%=arr(2,52)%></div>
				<div class="little"></div>
				<div class="littles">B028<br><%=arr(2,51)%></div>
				<div class="littles">B027<br><%=arr(2,50)%></div>
				<div class="littles">B025<br><%=arr(2,48)%></div>
				<div class="littles">B026<br><%=arr(2,49)%></div>
				<div class="littles">B024<br><%=arr(2,47)%></div>
				<div class="littles">B023<br><%=arr(2,46)%></div>
				<div class="littles">B022<br><%=arr(2,45)%></div>
				<div class="littles">B020<br><%=arr(2,43)%></div>
				<div class="littles">B021<br><%=arr(2,44)%></div>
				<div class="little"></div>
				<div class="littles">A008<br><%=arr(2,7)%></div>
				<div class="littles">A009<br><%=arr(2,8)%></div>
				<div class="littles">A010<br><%=arr(2,9)%></div>
				<div class="littles">A012<br><%=arr(2,11)%></div>
				<div class="littles">A011<br><%=arr(2,10)%></div>
				<div class="littles">A013<br><%=arr(2,12)%></div>
				<div class="littles">A014<br><%=arr(2,13)%></div>
				<div class="littles">A015<br><%=arr(2,14)%></div>
				<div class="littlel">墙</div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="littles">A023<br><%=arr(2,22)%></div>
				<div class="littles">A024<br><%=arr(2,23)%></div>
				<div class="littled"></div>
				<div class="littled"></div>
			</div>
<!--8-->
			<div class="middle">
				<div class="littles">B054<br><%=arr(2,77)%></div>
				<div class="little"></div>
				<div class="littles">B019<br><%=arr(2,42)%></div>
				<div class="littles">B018<br><%=arr(2,41)%></div>
				<div class="littles">B017<br><%=arr(2,40)%></div>
				<div class="littles">B016<br><%=arr(2,39)%></div>
				<div class="littles">B015<br><%=arr(2,38)%></div>
				<div class="littles">B014<br><%=arr(2,37)%></div>
				<div class="littles">B013<br><%=arr(2,36)%></div>
				<div class="littles">B012<br><%=arr(2,35)%></div>
				<div class="littles">B011<br><%=arr(2,34)%></div>
				<div class="littles">B010<br><%=arr(2,33)%></div>
				<div class="little"></div>
				<div class="littles">B009<br><%=arr(2,32)%></div>
				<div class="littles">B008<br><%=arr(2,31)%></div>
				<div class="littles">B007<br><%=arr(2,30)%></div>
				<div class="littles">B006<br><%=arr(2,29)%></div>
				<div class="littles">B005<br><%=arr(2,28)%></div>
				<div class="littles">B004<br><%=arr(2,27)%></div>
				<div class="littles">B003<br><%=arr(2,26)%></div>
				<div class="littles">B002<br><%=arr(2,25)%></div>
				<div class="littles">B001<br><%=arr(2,24)%></div>
				<div class="little"></div>
				<div class="littles">A001<br><%=arr(2,0)%></div>
				<div class="littles">A002<br><%=arr(2,1)%></div>
				<div class="littles">A003<br><%=arr(2,2)%></div>
				<div class="littles">A004<br><%=arr(2,3)%></div>
				<div class="littles">A005<br><%=arr(2,4)%></div>
				<div class="littles">A006<br><%=arr(2,5)%></div>
				<div class="littles">A007<br><%=arr(2,6)%></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="littles">A021<br><%=arr(2,20)%></div>
				<div class="littles">A022<br><%=arr(2,21)%></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
			</div>
<!--9-->
			<div class="middle">
				<div class="littles">B055<br><%=arr(2,78)%></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="littles">A019<br><%=arr(2,18)%></div>
				<div class="littles">A020<br><%=arr(2,19)%></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
			</div>
<!--10-->
			<div class="middle">
				<div class="littles">B056<br><%=arr(2,79)%></div>
				<div class="little"></div>
				<div class="littlel">仓库</div>
				<div class="littlel">仓库</div>
				<div class="littlel">安全通道</div>
				<div class="littlel">安全通道</div>
				<div class="littles">B043<br><%=arr(2,66)%></div>
				<div class="little"></div>
				<div class="littles">B042<br><%=arr(2,65)%></div>
				<div class="littles">B041<br><%=arr(2,64)%></div>
				<div class="littles">B039<br><%=arr(2,62)%></div>
				<div class="littles">B040<br><%=arr(2,63)%></div>
				<div class="littlel">墙</div>
				<div class="little"></div>
				<div class="littlel">前台</div>
				<div class="littlel">前台</div>
				<div class="littlel">前台</div>
				<div class="littlel">前台</div>
				<div class="littlel">前台</div>
				<div class="littlel">前台</div>
				<div class="littlel">前台</div>
				<div class="littlel">前台</div>
				<div class="little"></div>
				<div class="littlel">内部电梯</div>
				<div class="littlel">安全通道</div>
				<div class="littlel">安全通道</div>
				<div class="littlel">安全通道</div>
				<div class="littlel">安全通道</div>
				<div class="littlel">小洽谈区</div>
				<div class="littles">A017<br><%=arr(2,16)%></div>
				<div class="littles">A018<br><%=arr(2,17)%></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
			</div>
<!--11-->
			<div class="middle">
				<div class="littles">B057<br><%=arr(2,80)%></div>
				<div class="little"></div>
				<div class="littlel">仓库</div>
				<div class="littlel">仓库</div>
				<div class="littlel">安全通道</div>
				<div class="littlel">安全通道</div>
				<div class="littles">B044<br><%=arr(2,67)%></div>
				<div class="little"></div>
				<div class="littles">B052<br><%=arr(2,75)%></div>
				<div class="littles">B051<br><%=arr(2,74)%></div>
				<div class="littles">B050<br><%=arr(2,73)%></div>
				<div class="littles">B049<br><%=arr(2,72)%></div>
				<div class="littlel">墙</div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="littlel">内部电梯</div>
				<div class="littlel">安全通道</div>
				<div class="littlel">安全通道</div>
				<div class="littlel">安全通道</div>
				<div class="littlel">安全通道</div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
			</div>
<!--12-->
			<div class="middle">
				<div class="littles">B058<br><%=arr(2,81)%></div>
				<div class="little"></div>
				<div class="littlel">仓库</div>
				<div class="littlel">仓库</div>
				<div class="littlel">安全通道</div>
				<div class="littlel">安全通道</div>
				<div class="littles">机房</div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="littlel">墙</div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="littlel">咖啡吧</div>
				<div class="littlel">咖啡吧</div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
			</div>
<!--13-->
			<div class="middle">
				<div class="littles">B058<br><%=arr(2,81)%></div>
				<div class="littles">B058<br><%=arr(2,81)%></div>
				<div class="littlel">仓库</div>
				<div class="littlel">仓库</div>
				<div class="littlel">安全通道</div>
				<div class="littlel">安全通道</div>
				<div class="littles">B045<br><%=arr(2,68)%></div>
				<div class="littles">B045<br><%=arr(2,68)%></div>
				<div class="littles">B047<br><%=arr(2,70)%></div>
				<div class="littles">B046<br><%=arr(2,69)%></div>
				<div class="littles">B048<br><%=arr(2,71)%></div>
				<div class="littles">B048<br><%=arr(2,71)%></div>
				<div class="littlel">墙</div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="littlel">大门2</div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="littlel">大门1</div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="littlel">咖啡吧</div>
				<div class="littlel">咖啡吧</div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
			</div>
		</div>

		<div id="four" class="floor3" style="display: none;">
<!--1  <%=arr(2,1)%>-->
			<div class="middle">
				<div class="littlel">角落</div>
				<div class="littlel">角落</div>
				<div class="littlel">库房</div>
				<div class="littlel">库房</div>
				<div class="littles">C016<br><%=arr(2,232)%></div>
				<div class="littlel">货梯</div>
				<div class="littlel">货梯</div>
				<div class="littlel">货梯</div>
				<div class="littlel">货梯</div>
				<div class="littlel">卫生间</div>
				<div class="littlel">卫生间</div>
				<div class="littlel">卫生间</div>
				<div class="littles">D026<br><%=arr(2,266)%></div>
				<div class="littles">D025<br><%=arr(2,265)%></div>
				<div class="littles">D024<br><%=arr(2,264)%></div>
				<div class="littles">D022<br><%=arr(2,262)%></div>
				<div class="littles">D023<br><%=arr(2,263)%></div>
				<div class="littles">D021<br><%=arr(2,261)%></div>
				<div class="littles">D020<br><%=arr(2,260)%></div>
				<div class="littles">D019<br><%=arr(2,259)%></div>
				<div class="littles">D019<br><%=arr(2,259)%></div>
				<div class="littlel">墙</div>
				<div class="little"></div>
				<div class="littlel">电梯</div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
			</div>
<!--2-->
			<div class="middle">
				<div class="littlel">角落</div>
				<div class="littlel">角落</div>
				<div class="littlel">库房</div>
				<div class="littlel">库房</div>
				<div class="littles">C016<br><%=arr(2,232)%></div>
				<div class="littlel">货梯</div>
				<div class="littlel">货梯</div>
				<div class="littlel">货梯</div>
				<div class="littlel">货梯</div>
				<div class="littlel">卫生间</div>
				<div class="littlel">卫生间</div>
				<div class="littlel">卫生间</div>
				<div class="littles">D030<br><%=arr(2,270)%></div>
				<div class="littles">D029<br><%=arr(2,269)%></div>
				<div class="littles">D028<br><%=arr(2,268)%></div>
				<div class="littles">D027<br><%=arr(2,267)%></div>
				<div class="little"></div>
				<div class="littles">D018<br><%=arr(2,258)%></div>
				<div class="littles">D017<br><%=arr(2,257)%></div>
				<div class="littles">D016<br><%=arr(2,256)%></div>
				<div class="littles">D015<br><%=arr(2,255)%></div>
				<div class="littlel">墙</div>
				<div class="little"></div>
				<div class="littlel">电梯</div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
			</div>
<!--3-->
			<div class="middle">
				<div class="littles">C013<br><%=arr(2,229)%></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="littlel">墙</div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
			</div>
<!--4-->
			<div class="middle">
				<div class="littles">C012<br><%=arr(2,228)%></div>
				<div class="little"></div>
				<div class="littles">C014<br><%=arr(2,230)%></div>
				<div class="littles">C015<br><%=arr(2,231)%></div>
				<div class="littles">C017<br><%=arr(2,233)%></div>
				<div class="littles">C018<br><%=arr(2,234)%></div>
				<div class="littles">C019<br><%=arr(2,235)%></div>
				<div class="littles">C020<br><%=arr(2,236)%></div>
				<div class="littles">C021<br><%=arr(2,237)%></div>
				<div class="littles">C022<br><%=arr(2,238)%></div>
				<div class="littles">C023<br><%=arr(2,239)%></div>
				<div class="littles">C024<br><%=arr(2,240)%></div>
				<div class="little"></div>
				<div class="littles">D008<br><%=arr(2,248)%></div>
				<div class="littles">D009<br><%=arr(2,249)%></div>
				<div class="littles">D010<br><%=arr(2,250)%></div>
				<div class="littles">D011<br><%=arr(2,251)%></div>
				<div class="littles">D012<br><%=arr(2,252)%></div>
				<div class="littles">D013<br><%=arr(2,253)%></div>
				<div class="littles">D014<br><%=arr(2,254)%></div>
				<div class="little"></div>
				<div class="littlel">墙</div>
				<div class="littlel">墙</div>
				<div class="littlel">墙</div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
			</div>
<!--5-->
			<div class="middle">
				<div class="littles">C011<br><%=arr(2,227)%></div>
				<div class="little"></div>
				<div class="littles">C010<br><%=arr(2,226)%></div>
				<div class="littles">C009<br><%=arr(2,225)%></div>
				<div class="littles">C008<br><%=arr(2,224)%></div>
				<div class="littles">C006<br><%=arr(2,222)%></div>
				<div class="littles">C007<br><%=arr(2,223)%></div>
				<div class="littles">C004<br><%=arr(2,220)%></div>
				<div class="littles">C005<br><%=arr(2,221)%></div>
				<div class="littles">C003<br><%=arr(2,219)%></div>
				<div class="littles">C002<br><%=arr(2,218)%></div>
				<div class="littles">C001<br><%=arr(2,217)%></div>
				<div class="little"></div>
				<div class="littles">D007<br><%=arr(2,247)%></div>
				<div class="littles">D006<br><%=arr(2,246)%></div>
				<div class="littles">D005<br><%=arr(2,245)%></div>
				<div class="littles">D004<br><%=arr(2,244)%></div>
				<div class="littles">D003<br><%=arr(2,243)%></div>
				<div class="littles">D002<br><%=arr(2,242)%></div>
				<div class="littles">D001<br><%=arr(2,241)%></div>
				<div class="little"></div>
				<div class="littlel">墙</div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
			</div>
<!--6--->
			<div class="middle">
				<div class="littlel">水吧</div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="littlel">墙</div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
			</div>		
<!--4-6-->
			<div class="middle-seat">
				<div class="little-seat-al">水吧</div>
				<div class="little-seat-a"></div>
				<div class="little-seat-a">
					<div class="little-seat">
						<div class="little-seat-atom">4-125<br><%=arr(2,635)%></div>
						<div class="little-seat-atom">4-126<br><%=arr(2,636)%></div>
						<div class="little-seat-atom">4-127<br><%=arr(2,637)%></div>
						<div class="little-seat-atom">4-128<br><%=arr(2,638)%></div>
					</div>
					<div class="little-seat">
						<div class="little-seat-atom">4-121<br><%=arr(2,631)%></div>
						<div class="little-seat-atom">4-122<br><%=arr(2,632)%></div>
						<div class="little-seat-atom">4-123<br><%=arr(2,633)%></div>
						<div class="little-seat-atom">4-124<br><%=arr(2,634)%></div>
					</div>
				</div>
				<div class="little-seat-a">
					<div class="little-seat">
						<div class="little-seat-atom">4-117<br><%=arr(2,627)%></div>
						<div class="little-seat-atom">4-118<br><%=arr(2,628)%></div>
						<div class="little-seat-atom">4-119<br><%=arr(2,629)%></div>
						<div class="little-seat-atom">4-120<br><%=arr(2,630)%></div>
					</div>
					<div class="little-seat">
						<div class="little-seat-atom">4-113<br><%=arr(2,623)%></div>
						<div class="little-seat-atom">4-114<br><%=arr(2,624)%></div>
						<div class="little-seat-atom">4-115<br><%=arr(2,625)%></div>
						<div class="little-seat-atom">4-116<br><%=arr(2,626)%></div>
					</div>
				</div>
				<div class="little-seat-a">
					<div class="little-seat">
						<div class="little-seat-atom">4-109<br><%=arr(2,619)%></div>
						<div class="little-seat-atom">4-110<br><%=arr(2,620)%></div>
						<div class="little-seat-atom">4-111<br><%=arr(2,621)%></div>
						<div class="little-seat-atom">4-112<br><%=arr(2,622)%></div>
					</div>
					<div class="little-seat">
						<div class="little-seat-atom">4-105<br><%=arr(2,615)%></div>
						<div class="little-seat-atom">4-106<br><%=arr(2,616)%></div>
						<div class="little-seat-atom">4-107<br><%=arr(2,617)%></div>
						<div class="little-seat-atom">4-108<br><%=arr(2,618)%></div>
					</div>
				</div>
				<div class="little-seat-a">
					<div class="little-seat">
						<div class="little-seat-atom">4-101<br><%=arr(2,611)%></div>
						<div class="little-seat-atom">4-102<br><%=arr(2,612)%></div>
						<div class="little-seat-atom">4-103<br><%=arr(2,613)%></div>
						<div class="little-seat-atom">4-104<br><%=arr(2,614)%></div>
					</div>
					<div class="little-seat">
						<div class="little-seat-atom">4-097<br><%=arr(2,607)%></div>
						<div class="little-seat-atom">4-098<br><%=arr(2,608)%></div>
						<div class="little-seat-atom">4-099<br><%=arr(2,609)%></div>
						<div class="little-seat-atom">4-100<br><%=arr(2,610)%></div>
					</div>
				</div>
				<div class="little-seat-a">
					<div class="little-seat">
						<div class="little-seat-atom">4-093<br><%=arr(2,603)%></div>
						<div class="little-seat-atom">4-094<br><%=arr(2,604)%></div>
						<div class="little-seat-atom">4-095<br><%=arr(2,605)%></div>
						<div class="little-seat-atom">4-096<br><%=arr(2,606)%></div>
					</div>
					<div class="little-seat">
						<div class="little-seat-atom">4-089<br><%=arr(2,599)%></div>
						<div class="little-seat-atom">4-090<br><%=arr(2,600)%></div>
						<div class="little-seat-atom">4-091<br><%=arr(2,601)%></div>
						<div class="little-seat-atom">4-092<br><%=arr(2,602)%></div>
					</div>
				</div>
				<div class="little-seat-a">
					<div class="little-seat">
						<div class="little-seat-atom">4-085<br><%=arr(2,595)%></div>
						<div class="little-seat-atom">4-086<br><%=arr(2,596)%></div>
						<div class="little-seat-atom">4-087<br><%=arr(2,597)%></div>
						<div class="little-seat-atom">4-088<br><%=arr(2,598)%></div>
					</div>
					<div class="little-seat">
						<div class="little-seat-atom">4-081<br><%=arr(2,591)%></div>
						<div class="little-seat-atom">4-082<br><%=arr(2,592)%></div>
						<div class="little-seat-atom">4-083<br><%=arr(2,593)%></div>
						<div class="little-seat-atom">4-084<br><%=arr(2,594)%></div>
					</div>
				</div>
				<div class="little-seat-a">
					<div class="little-seat">
						<div class="little-seat-atom">4-077<br><%=arr(2,587)%></div>
						<div class="little-seat-atom">4-078<br><%=arr(2,588)%></div>
						<div class="little-seat-atom">4-079<br><%=arr(2,589)%></div>
						<div class="little-seat-atom">4-080<br><%=arr(2,590)%></div>
					</div>
					<div class="little-seat">
						<div class="little-seat-atom">4-073<br><%=arr(2,583)%></div>
						<div class="little-seat-atom">4-074<br><%=arr(2,584)%></div>
						<div class="little-seat-atom">4-075<br><%=arr(2,585)%></div>
						<div class="little-seat-atom">4-076<br><%=arr(2,586)%></div>
					</div>
				</div>
				<div class="little-seat-a">
					<div class="little-seat">
						<div class="little-seat-atom">4-069<br><%=arr(2,579)%></div>
						<div class="little-seat-atom">4-070<br><%=arr(2,580)%></div>
						<div class="little-seat-atom">4-071<br><%=arr(2,581)%></div>
						<div class="little-seat-atom">4-072<br><%=arr(2,582)%></div>
					</div>
					<div class="little-seat">
						<div class="little-seat-atom">4-065<br><%=arr(2,575)%></div>
						<div class="little-seat-atom">4-066<br><%=arr(2,576)%></div>
						<div class="little-seat-atom">4-067<br><%=arr(2,577)%></div>
						<div class="little-seat-atom">4-068<br><%=arr(2,578)%></div>
					</div>
				</div>
				<div class="little-seat-a">
					<div class="little-seat">
						<div class="little-seat-atom">4-061<br><%=arr(2,571)%></div>
						<div class="little-seat-atom">4-062<br><%=arr(2,572)%></div>
						<div class="little-seat-atom">4-063<br><%=arr(2,573)%></div>
						<div class="little-seat-atom">4-064<br><%=arr(2,574)%></div>
					</div>
					<div class="little-seat">
						<div class="little-seat-atom">4-057<br><%=arr(2,567)%></div>
						<div class="little-seat-atom">4-058<br><%=arr(2,568)%></div>
						<div class="little-seat-atom">4-059<br><%=arr(2,569)%></div>
						<div class="little-seat-atom">4-060<br><%=arr(2,570)%></div>
					</div>
				</div>
				<div class="little-seat-a">
					<div class="little-seat">
						<div class="little-seat-atom">4-053<br><%=arr(2,563)%></div>
						<div class="little-seat-atom">4-054<br><%=arr(2,564)%></div>
						<div class="little-seat-atom">4-055<br><%=arr(2,565)%></div>
						<div class="little-seat-atom">4-056<br><%=arr(2,566)%></div>
					</div>
					<div class="little-seat">
						<div class="little-seat-atom">4-049<br><%=arr(2,559)%></div>
						<div class="little-seat-atom">4-050<br><%=arr(2,560)%></div>
						<div class="little-seat-atom">4-051<br><%=arr(2,561)%></div>
						<div class="little-seat-atom">4-052<br><%=arr(2,562)%></div>
					</div>
				</div>
				<div class="little-seat-a">
					<div class="little-seat">
						<div class="little-seat-atom">4-129<br><%=arr(2,639)%></div>
						<div class="little-seat-atom">4-130<br><%=arr(2,640)%></div>
						<div class="little-seat-atom">4-131<br><%=arr(2,641)%></div>
						<div class="little-seat-atom">4-132<br><%=arr(2,642)%></div>
					</div>
				</div>
				<div class="little-seat-a"></div>
				<div class="little-seat-a">
					<div class="little-seat">
						<div class="little-seat-atom">4-045<br><%=arr(2,555)%></div>
						<div class="little-seat-atom">4-046<br><%=arr(2,556)%></div>
						<div class="little-seat-atom">4-047<br><%=arr(2,557)%></div>
						<div class="little-seat-atom">4-048<br><%=arr(2,558)%></div>
					</div>
					<div class="little-seat">
						<div class="little-seat-atom">4-041<br><%=arr(2,551)%></div>
						<div class="little-seat-atom">4-042<br><%=arr(2,552)%></div>
						<div class="little-seat-atom">4-043<br><%=arr(2,553)%></div>
						<div class="little-seat-atom">4-044<br><%=arr(2,554)%></div>
					</div>
				</div>
				<div class="little-seat-a">
					<div class="little-seat">
						<div class="little-seat-atom">4-037<br><%=arr(2,547)%></div>
						<div class="little-seat-atom">4-038<br><%=arr(2,548)%></div>
						<div class="little-seat-atom">4-039<br><%=arr(2,549)%></div>
						<div class="little-seat-atom">4-040<br><%=arr(2,550)%></div>
					</div>
					<div class="little-seat">
						<div class="little-seat-atom">4-033<br><%=arr(2,543)%></div>
						<div class="little-seat-atom">4-034<br><%=arr(2,544)%></div>
						<div class="little-seat-atom">4-035<br><%=arr(2,545)%></div>
						<div class="little-seat-atom">4-036<br><%=arr(2,546)%></div>
					</div>
				</div>
				<div class="little-seat-a">
					<div class="little-seat">
						<div class="little-seat-atom">4-029<br><%=arr(2,539)%></div>
						<div class="little-seat-atom">4-030<br><%=arr(2,540)%></div>
						<div class="little-seat-atom">4-031<br><%=arr(2,541)%></div>
						<div class="little-seat-atom">4-032<br><%=arr(2,542)%></div>
					</div>
					<div class="little-seat">
						<div class="little-seat-atom">4-025<br><%=arr(2,535)%></div>
						<div class="little-seat-atom">4-026<br><%=arr(2,536)%></div>
						<div class="little-seat-atom">4-027<br><%=arr(2,537)%></div>
						<div class="little-seat-atom">4-028<br><%=arr(2,538)%></div>
					</div>
				</div>
				<div class="little-seat-a">
					<div class="little-seat">
						<div class="little-seat-atom">4-021<br><%=arr(2,531)%></div>
						<div class="little-seat-atom">4-022<br><%=arr(2,532)%></div>
						<div class="little-seat-atom">4-023<br><%=arr(2,533)%></div>
						<div class="little-seat-atom">4-024<br><%=arr(2,534)%></div>
					</div>
					<div class="little-seat">
						<div class="little-seat-atom">4-017<br><%=arr(2,527)%></div>
						<div class="little-seat-atom">4-018<br><%=arr(2,528)%></div>
						<div class="little-seat-atom">4-019<br><%=arr(2,529)%></div>
						<div class="little-seat-atom">4-020<br><%=arr(2,530)%></div>
					</div>
				</div>
				<div class="little-seat-a">
					<div class="little-seat">
						<div class="little-seat-atom">4-013<br><%=arr(2,523)%></div>
						<div class="little-seat-atom">4-014<br><%=arr(2,524)%></div>
						<div class="little-seat-atom">4-015<br><%=arr(2,525)%></div>
						<div class="little-seat-atom">4-016<br><%=arr(2,526)%></div>
					</div>
					<div class="little-seat">
						<div class="little-seat-atom">4-009<br><%=arr(2,519)%></div>
						<div class="little-seat-atom">4-010<br><%=arr(2,520)%></div>
						<div class="little-seat-atom">4-011<br><%=arr(2,521)%></div>
						<div class="little-seat-atom">4-012<br><%=arr(2,522)%></div>
					</div>
				</div>
				<div class="little-seat-a">
					<div class="little-seat">
						<div class="little-seat-atom">4-005<br><%=arr(2,515)%></div>
						<div class="little-seat-atom">4-006<br><%=arr(2,516)%></div>
						<div class="little-seat-atom">4-007<br><%=arr(2,517)%></div>
						<div class="little-seat-atom">4-008<br><%=arr(2,518)%></div>
					</div>
					<div class="little-seat">
						<div class="little-seat-atom">4-001<br><%=arr(2,511)%></div>
						<div class="little-seat-atom">4-002<br><%=arr(2,512)%></div>
						<div class="little-seat-atom">4-003<br><%=arr(2,513)%></div>
						<div class="little-seat-atom">4-004<br><%=arr(2,514)%></div>
					</div>
				</div>
				<div class="little-seat-a"></div>
				<div class="little-seat-al">墙</div>
				<div class="little-seat-ad"></div>
				<div class="little-seat-ad"></div>
				<div class="little-seat-ad"></div>
				<div class="little-seat-ad"></div>
				<div class="little-seat-ad"></div>
				<div class="little-seat-ad"></div>
				<div class="little-seat-ad"></div>
				<div class="little-seat-ad"></div>
				<div class="little-seat-ad"></div>
				<div class="little-seat-ad"></div>
				<div class="little-seat-ad"></div>
				<div class="little-seat-ad"></div>
				<div class="little-seat-ad"></div>
				<div class="little-seat-ad"></div>
				<div class="little-seat-ad"></div>
				<div class="little-seat-ad"></div>
				<div class="little-seat-ad"></div>
			</div>			
<!--4-6--->
			<div class="middle">
				<div class="littlel">水吧</div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="littlel">墙</div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
			</div>	
<!--4-7-->
			<div class="middle">
				<div class="littles">B035<br><%=arr(2,211)%></div>
				<div class="little"></div>
				<div class="littles">B034<br><%=arr(2,210)%></div>
				<div class="littles">B033<br><%=arr(2,209)%></div>
				<div class="littles">B032<br><%=arr(2,208)%></div>
				<div class="littles">B031<br><%=arr(2,207)%></div>
				<div class="littles">B030<br><%=arr(2,206)%></div>
				<div class="littles">B029<br><%=arr(2,205)%></div>
				<div class="littles">B028<br><%=arr(2,204)%></div>
				<div class="littles">B027<br><%=arr(2,203)%></div>
				<div class="littles">B026<br><%=arr(2,202)%></div>
				<div class="littles">B025<br><%=arr(2,201)%></div>
				<div class="little"></div>
				<div class="littles">B024<br><%=arr(2,200)%></div>
				<div class="littles">B023<br><%=arr(2,199)%></div>
				<div class="littles">B022<br><%=arr(2,198)%></div>
				<div class="littles">B021<br><%=arr(2,197)%></div>
				<div class="littles">B020<br><%=arr(2,196)%></div>
				<div class="littles">B019<br><%=arr(2,195)%></div>
				<div class="littles">B018<br><%=arr(2,194)%></div>
				<div class="little"></div>
				<div class="littlel">墙</div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
			</div>
<!--4-8-->
			<div class="middle">
				<div class="littles">B036<br><%=arr(2,212)%></div>
				<div class="little"></div>
				<div class="littles">B017<br><%=arr(2,193)%></div>
				<div class="littles">B016<br><%=arr(2,192)%></div>
				<div class="littles">B015<br><%=arr(2,191)%></div>
				<div class="littles">B014<br><%=arr(2,190)%></div>
				<div class="littles">B013<br><%=arr(2,189)%></div>
				<div class="littles">B012<br><%=arr(2,188)%></div>
				<div class="littles">B011<br><%=arr(2,187)%></div>
				<div class="littles">B010<br><%=arr(2,186)%></div>
				<div class="littles">B009<br><%=arr(2,184)%></div>
				<div class="littles">B008<br><%=arr(2,185)%></div>
				<div class="little"></div>
				<div class="littles">B007<br><%=arr(2,183)%></div>
				<div class="littles">B005<br><%=arr(2,181)%></div>
				<div class="littles">B006<br><%=arr(2,182)%></div>
				<div class="littles">B004<br><%=arr(2,180)%></div>
				<div class="littles">B003<br><%=arr(2,179)%></div>
				<div class="littles">B002<br><%=arr(2,178)%></div>
				<div class="littles">B001<br><%=arr(2,177)%></div>
				<div class="little"></div>
				<div class="littlel">墙</div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
			</div>
<!--4-9-->
			<div class="middle">
				<div class="littles">B037<br><%=arr(2,213)%></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="littlel">墙</div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
			</div>
<!--4-10-->
			<div class="middle">
				<div class="littles">B038<br><%=arr(2,214)%></div>
				<div class="little"></div>
				<div class="littlel">仓库</div>
				<div class="littlel">仓库</div>
				<div class="littlel">安全通道</div>
				<div class="littlel">安全通道</div>
				<div class="littles">A036<br><%=arr(2,175)%></div>
				<div class="little"></div>
				<div class="littles">A035<br><%=arr(2,174)%></div>
				<div class="littles">A034<br><%=arr(2,173)%></div>
				<div class="littles">A033<br><%=arr(2,172)%></div>
				<div class="littles">A032<br><%=arr(2,171)%></div>
				<div class="littles">A031<br><%=arr(2,170)%></div>
				<div class="littles">A030<br><%=arr(2,169)%></div>
				<div class="littles">A029<br><%=arr(2,168)%></div>
				<div class="littles">A028<br><%=arr(2,167)%></div>
				<div class="littles">A027<br><%=arr(2,166)%></div>
				<div class="littles">A026<br><%=arr(2,165)%></div>
				<div class="littles">A025<br><%=arr(2,164)%></div>
				<div class="littles">A024<br><%=arr(2,163)%></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="littlel">内部电梯</div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
			</div>
<!--4-11-->
			<div class="middle">
				<div class="littles">B039<br><%=arr(2,215)%></div>
				<div class="little"></div>
				<div class="littlel">仓库</div>
				<div class="littlel">仓库</div>
				<div class="littlel">安全通道</div>
				<div class="littlel">安全通道</div>
				<div class="littles">A037<br><%=arr(2,176)%></div>
				<div class="little"></div>
				<div class="littles">A023<br><%=arr(2,162)%></div>
				<div class="littles">A021<br><%=arr(2,160)%></div>
				<div class="littles">A022<br><%=arr(2,161)%></div>
				<div class="littles">A020<br><%=arr(2,159)%></div>
				<div class="littles">A019<br><%=arr(2,158)%></div>
				<div class="littles">A018<br><%=arr(2,157)%></div>
				<div class="littles">A017<br><%=arr(2,156)%></div>
				<div class="littles">A016<br><%=arr(2,155)%></div>
				<div class="littles">A015<br><%=arr(2,154)%></div>
				<div class="littles">A014<br><%=arr(2,153)%></div>
				<div class="littles">A013<br><%=arr(2,152)%></div>
				<div class="littles">A012<br><%=arr(2,151)%></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="littlel">内部电梯</div>
				<div class="littlel">墙</div>
				<div class="littlel">墙</div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
			</div>
<!--4-12-->
			<div class="middle">
				<div class="littles">B040<br><%=arr(2,216)%></div>
				<div class="little"></div>
				<div class="littlel">仓库</div>
				<div class="littlel">仓库</div>
				<div class="littlel">安全通道</div>
				<div class="littlel">安全通道</div>
				<div class="littles">机房</div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="littlel">墙</div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
			</div>
<!--4-13-->
			<div class="middle">
				<div class="littles">B040<br><%=arr(2,216)%></div>
				<div class="littles">B040<br><%=arr(2,216)%></div>
				<div class="littlel">仓库</div>
				<div class="littlel">仓库</div>
				<div class="littlel">安全通道</div>
				<div class="littlel">安全通道</div>
				<div class="littles">A011<br><%=arr(2,150)%></div>
				<div class="littles">A011<br><%=arr(2,150)%></div>
				<div class="littles">A010<br><%=arr(2,149)%></div>
				<div class="littles">A009<br><%=arr(2,148)%></div>
				<div class="littles">A009<br><%=arr(2,148)%></div>
				<div class="littles">A008<br><%=arr(2,147)%></div>
				<div class="littles">A007<br><%=arr(2,146)%></div>
				<div class="littles">A006<br><%=arr(2,145)%></div>
				<div class="littles">A005<br><%=arr(2,144)%></div>
				<div class="littles">A004<br><%=arr(2,143)%></div>
				<div class="littles">A004<br><%=arr(2,143)%></div>
				<div class="littles">A003<br><%=arr(2,142)%></div>
				<div class="littles">A002<br><%=arr(2,141)%></div>
				<div class="littles">A002<br><%=arr(2,141)%></div>
				<div class="littles">A001<br><%=arr(2,140)%></div>
				<div class="littles">A001<br><%=arr(2,140)%></div>
				<div class="littlel">水吧</div>
				<div class="littlel">水吧</div>
				<div class="littlel">墙</div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
			</div>			
		</div>
		
		<div id="five" class="floor3" style="display: none;">
<!--1  <%=arr(2,1)%>-->
			<div class="middle">
				<div class="littlel">角落</div>
				<div class="littlel">角落</div>
				<div class="littlel">库房</div>
				<div class="littlel">库房</div>
				<div class="littles">C023<br><%=arr(2,722)%></div>
				<div class="littlel">货梯</div>
				<div class="littlel">货梯</div>
				<div class="littlel">货梯</div>
				<div class="littlel">货梯</div>
				<div class="littlel">卫生间</div>
				<div class="littlel">卫生间</div>
				<div class="littlel">卫生间</div>
				<div class="littles">D004<br></div>
				<div class="littles">D004<br><%=arr(2,739)%></div>
				<div class="littles">D007<br><%=arr(2,742)%></div>
				<div class="littles">D006<br><%=arr(2,741)%></div>
				<div class="littles">D005<br><%=arr(2,740)%></div>
				<div class="littles">D008<br><%=arr(2,743)%></div>
				<div class="littlel">前台<br></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="littlel">电梯</div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
			</div>
<!--2-->
			<div class="middle">
				<div class="littlel">角落</div>
				<div class="littlel">角落</div>
				<div class="littlel">库房</div>
				<div class="littlel">库房</div>
				<div class="littles">C023<br><%=arr(2,722)%></div>
				<div class="littlel">货梯</div>
				<div class="littlel">货梯</div>
				<div class="littlel">货梯</div>
				<div class="littlel">货梯</div>
				<div class="littlel">卫生间</div>
				<div class="littlel">卫生间</div>
				<div class="littlel">卫生间</div>
				<div class="littles">D012<br><%=arr(2,747)%></div>
				<div class="littles">D011<br><%=arr(2,746)%></div>
				<div class="littles">D010<br><%=arr(2,745)%></div>
				<div class="littles">D009<br><%=arr(2,744)%></div>
				<div class="little"></div>
				<div class="littles">D003<br><%=arr(2,738)%></div>
				<div class="littlel">前台</div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="littlel">电梯</div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
			</div>
<!--3-->
			<div class="middle">
				<div class="littles">C020<br><%=arr(2,719)%></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="littlel">墙</div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
			</div>
<!--4-->
			<div class="middle">
				<div class="littles">C019<br><%=arr(2,718)%></div>
				<div class="little"></div>
				<div class="littles">C021<br><%=arr(2,720)%></div>
				<div class="littles">C022<br><%=arr(2,721)%></div>
				<div class="littles">C024<br><%=arr(2,723)%></div>
				<div class="littles">C025<br><%=arr(2,724)%></div>
				<div class="littles">C026<br><%=arr(2,725)%></div>
				<div class="littles">C027<br><%=arr(2,726)%></div>
				<div class="littles">C028<br><%=arr(2,727)%></div>
				<div class="littles">C029<br><%=arr(2,728)%></div>
				<div class="littles">C030<br><%=arr(2,729)%></div>
				<div class="littles">C031<br><%=arr(2,730)%></div>
				<div class="little"></div>
				<div class="littles">C032<br><%=arr(2,731)%></div>
				<div class="littles">C033<br><%=arr(2,732)%></div>
				<div class="littles">C034<br><%=arr(2,733)%></div>
				<div class="littles">C035<br><%=arr(2,734)%></div>
				<div class="littles">C036<br><%=arr(2,735)%></div>
				<div class="littles">D002<br><%=arr(2,736)%></div>
				<div class="littles">D001<br><%=arr(2,737)%></div>
				<div class="little"></div>
				<div class="littlel">墙</div>
				<div class="littlel">墙</div>
				<div class="littlel">墙</div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
			</div>
<!--5-->
			<div class="middle">
				<div class="littles">C018<br><%=arr(2,717)%></div>
				<div class="little"></div>
				<div class="littles">C017<br><%=arr(2,716)%></div>
				<div class="littles">C016<br><%=arr(2,715)%></div>
				<div class="littles">C015<br><%=arr(2,714)%></div>
				<div class="littles">C014<br><%=arr(2,713)%></div>
				<div class="littles">C013<br><%=arr(2,712)%></div>
				<div class="littles">C012<br><%=arr(2,711)%></div>
				<div class="littles">C011<br><%=arr(2,710)%></div>
				<div class="littles">C010<br><%=arr(2,709)%></div>
				<div class="littles">C009<br><%=arr(2,708)%></div>
				<div class="littles">C008<br><%=arr(2,707)%></div>
				<div class="little"></div>
				<div class="littles">C007<br><%=arr(2,706)%></div>
				<div class="littles">C006<br><%=arr(2,705)%></div>
				<div class="littles">C005<br><%=arr(2,704)%></div>
				<div class="littles">C004<br><%=arr(2,703)%></div>
				<div class="littles">C003<br><%=arr(2,702)%></div>
				<div class="littles">C002<br><%=arr(2,701)%></div>
				<div class="littles">C001<br><%=arr(2,700)%></div>
				<div class="little"></div>
				<div class="littlel">墙</div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
			</div>
<!--6--->
			<div class="middle">
				<div class="littlel">服务台</div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="littlel">墙</div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
			</div>		
<!--5-6-->
			<div class="middle-seat">
				<div class="little-seat-al">服务台</div>
				<div class="little-seat-a"></div>
				<div class="little-seat-a">
					<div class="little-seat">
						<div class="little-seat-atom">5-125<br><%=arr(2,872)%></div>
						<div class="little-seat-atom">5-126<br><%=arr(2,873)%></div>
						<div class="little-seat-atom">5-127<br><%=arr(2,874)%></div>
						<div class="little-seat-atom">5-128<br><%=arr(2,875)%></div>
					</div>
					<div class="little-seat">
						<div class="little-seat-atom">5-121<br><%=arr(2,868)%></div>
						<div class="little-seat-atom">5-122<br><%=arr(2,869)%></div>
						<div class="little-seat-atom">5-123<br><%=arr(2,870)%></div>
						<div class="little-seat-atom">5-124<br><%=arr(2,871)%></div>
					</div>
				</div>
				<div class="little-seat-a">
					<div class="little-seat">
						<div class="little-seat-atom">5-117<br><%=arr(2,864)%></div>
						<div class="little-seat-atom">5-118<br><%=arr(2,865)%></div>
						<div class="little-seat-atom">5-119<br><%=arr(2,866)%></div>
						<div class="little-seat-atom">5-120<br><%=arr(2,867)%></div>
					</div>
					<div class="little-seat">
						<div class="little-seat-atom">5-113<br><%=arr(2,860)%></div>
						<div class="little-seat-atom">5-114<br><%=arr(2,861)%></div>
						<div class="little-seat-atom">5-115<br><%=arr(2,862)%></div>
						<div class="little-seat-atom">5-116<br><%=arr(2,863)%></div>
					</div>
				</div>
				<div class="little-seat-a">
					<div class="little-seat">
						<div class="little-seat-atom">5-109<br><%=arr(2,856)%></div>
						<div class="little-seat-atom">5-110<br><%=arr(2,857)%></div>
						<div class="little-seat-atom">5-111<br><%=arr(2,858)%></div>
						<div class="little-seat-atom">5-112<br><%=arr(2,859)%></div>
					</div>
					<div class="little-seat">
						<div class="little-seat-atom">5-105<br><%=arr(2,852)%></div>
						<div class="little-seat-atom">5-106<br><%=arr(2,853)%></div>
						<div class="little-seat-atom">5-107<br><%=arr(2,854)%></div>
						<div class="little-seat-atom">5-108<br><%=arr(2,855)%></div>
					</div>
				</div>
				<div class="little-seat-a">
					<div class="little-seat">
						<div class="little-seat-atom">5-101<br><%=arr(2,848)%></div>
						<div class="little-seat-atom">5-102<br><%=arr(2,849)%></div>
						<div class="little-seat-atom">5-103<br><%=arr(2,850)%></div>
						<div class="little-seat-atom">5-104<br><%=arr(2,851)%></div>
					</div>
					<div class="little-seat">
						<div class="little-seat-atom">5-097<br><%=arr(2,844)%></div>
						<div class="little-seat-atom">5-098<br><%=arr(2,845)%></div>
						<div class="little-seat-atom">5-099<br><%=arr(2,846)%></div>
						<div class="little-seat-atom">5-100<br><%=arr(2,847)%></div>
					</div>
				</div>
				<div class="little-seat-a">
					<div class="little-seat">
						<div class="little-seat-atom">5-093<br><%=arr(2,840)%></div>
						<div class="little-seat-atom">5-094<br><%=arr(2,841)%></div>
						<div class="little-seat-atom">5-095<br><%=arr(2,842)%></div>
						<div class="little-seat-atom">5-096<br><%=arr(2,843)%></div>
					</div>
					<div class="little-seat">
						<div class="little-seat-atom">5-089<br><%=arr(2,836)%></div>
						<div class="little-seat-atom">5-090<br><%=arr(2,837)%></div>
						<div class="little-seat-atom">5-091<br><%=arr(2,838)%></div>
						<div class="little-seat-atom">5-092<br><%=arr(2,839)%></div>
					</div>
				</div>
				<div class="little-seat-a">
					<div class="little-seat">
						<div class="little-seat-atom">5-085<br><%=arr(2,832)%></div>
						<div class="little-seat-atom">5-086<br><%=arr(2,833)%></div>
						<div class="little-seat-atom">5-087<br><%=arr(2,834)%></div>
						<div class="little-seat-atom">5-088<br><%=arr(2,835)%></div>
					</div>
					<div class="little-seat">
						<div class="little-seat-atom">5-081<br><%=arr(2,828)%></div>
						<div class="little-seat-atom">5-082<br><%=arr(2,829)%></div>
						<div class="little-seat-atom">5-083<br><%=arr(2,830)%></div>
						<div class="little-seat-atom">5-084<br><%=arr(2,831)%></div>
					</div>
				</div>
				<div class="little-seat-a">
					<div class="little-seat">
						<div class="little-seat-atom">5-077<br><%=arr(2,824)%></div>
						<div class="little-seat-atom">5-078<br><%=arr(2,825)%></div>
						<div class="little-seat-atom">5-079<br><%=arr(2,826)%></div>
						<div class="little-seat-atom">5-080<br><%=arr(2,827)%></div>
					</div>
					<div class="little-seat">
						<div class="little-seat-atom">5-073<br><%=arr(2,820)%></div>
						<div class="little-seat-atom">5-074<br><%=arr(2,821)%></div>
						<div class="little-seat-atom">5-075<br><%=arr(2,822)%></div>
						<div class="little-seat-atom">5-076<br><%=arr(2,823)%></div>
					</div>
				</div>
				<div class="little-seat-a">
					<div class="little-seat">
						<div class="little-seat-atom">5-069<br><%=arr(2,816)%></div>
						<div class="little-seat-atom">5-070<br><%=arr(2,817)%></div>
						<div class="little-seat-atom">5-071<br><%=arr(2,818)%></div>
						<div class="little-seat-atom">5-072<br><%=arr(2,819)%></div>
					</div>
					<div class="little-seat">
						<div class="little-seat-atom">5-065<br><%=arr(2,812)%></div>
						<div class="little-seat-atom">5-066<br><%=arr(2,813)%></div>
						<div class="little-seat-atom">5-067<br><%=arr(2,814)%></div>
						<div class="little-seat-atom">5-068<br><%=arr(2,815)%></div>
					</div>
				</div>
				<div class="little-seat-a">
					<div class="little-seat">
						<div class="little-seat-atom">5-061<br><%=arr(2,808)%></div>
						<div class="little-seat-atom">5-062<br><%=arr(2,809)%></div>
						<div class="little-seat-atom">5-063<br><%=arr(2,810)%></div>
						<div class="little-seat-atom">5-064<br><%=arr(2,811)%></div>
					</div>
					<div class="little-seat">
						<div class="little-seat-atom">5-057<br><%=arr(2,804)%></div>
						<div class="little-seat-atom">5-058<br><%=arr(2,805)%></div>
						<div class="little-seat-atom">5-059<br><%=arr(2,806)%></div>
						<div class="little-seat-atom">5-060<br><%=arr(2,807)%></div>
					</div>
				</div>
				<div class="little-seat-a">
					<div class="little-seat">
						<div class="little-seat-atom">5-053<br><%=arr(2,800)%></div>
						<div class="little-seat-atom">5-054<br><%=arr(2,801)%></div>
						<div class="little-seat-atom">5-055<br><%=arr(2,802)%></div>
						<div class="little-seat-atom">5-056<br><%=arr(2,803)%></div>
					</div>
					<div class="little-seat">
						<div class="little-seat-atom">5-049<br><%=arr(2,796)%></div>
						<div class="little-seat-atom">5-050<br><%=arr(2,797)%></div>
						<div class="little-seat-atom">5-051<br><%=arr(2,798)%></div>
						<div class="little-seat-atom">5-052<br><%=arr(2,799)%></div>
					</div>
				</div>
				<div class="little-seat-a">
					<div class="little-seat">
						<div class="little-seat-atom">5-129<br><%=arr(2,876)%></div>
						<div class="little-seat-atom">5-130<br><%=arr(2,877)%></div>
						<div class="little-seat-atom">5-131<br><%=arr(2,878)%></div>
						<div class="little-seat-atom">5-132<br><%=arr(2,879)%></div>
					</div>
				</div>
				<div class="little-seat-a"></div>
				<div class="little-seat-a">
					<div class="little-seat">
						<div class="little-seat-atom">5-045<br><%=arr(2,792)%></div>
						<div class="little-seat-atom">5-046<br><%=arr(2,793)%></div>
						<div class="little-seat-atom">5-047<br><%=arr(2,794)%></div>
						<div class="little-seat-atom">5-048<br><%=arr(2,795)%></div>
					</div>
					<div class="little-seat">
						<div class="little-seat-atom">5-041<br><%=arr(2,788)%></div>
						<div class="little-seat-atom">5-042<br><%=arr(2,789)%></div>
						<div class="little-seat-atom">5-043<br><%=arr(2,790)%></div>
						<div class="little-seat-atom">5-044<br><%=arr(2,791)%></div>
					</div>
				</div>
				<div class="little-seat-a">
					<div class="little-seat">
						<div class="little-seat-atom">5-037<br><%=arr(2,784)%></div>
						<div class="little-seat-atom">5-038<br><%=arr(2,785)%></div>
						<div class="little-seat-atom">5-039<br><%=arr(2,786)%></div>
						<div class="little-seat-atom">5-040<br><%=arr(2,787)%></div>
					</div>
					<div class="little-seat">
						<div class="little-seat-atom">5-033<br><%=arr(2,780)%></div>
						<div class="little-seat-atom">5-034<br><%=arr(2,781)%></div>
						<div class="little-seat-atom">5-035<br><%=arr(2,782)%></div>
						<div class="little-seat-atom">5-036<br><%=arr(2,783)%></div>
					</div>
				</div>
				<div class="little-seat-a">
					<div class="little-seat">
						<div class="little-seat-atom">5-029<br><%=arr(2,776)%></div>
						<div class="little-seat-atom">5-030<br><%=arr(2,777)%></div>
						<div class="little-seat-atom">5-031<br><%=arr(2,778)%></div>
						<div class="little-seat-atom">5-032<br><%=arr(2,779)%></div>
					</div>
					<div class="little-seat">
						<div class="little-seat-atom">5-025<br><%=arr(2,772)%></div>
						<div class="little-seat-atom">5-026<br><%=arr(2,773)%></div>
						<div class="little-seat-atom">5-027<br><%=arr(2,774)%></div>
						<div class="little-seat-atom">5-028<br><%=arr(2,775)%></div>
					</div>
				</div>
				<div class="little-seat-a">
					<div class="little-seat">
						<div class="little-seat-atom">5-021<br><%=arr(2,768)%></div>
						<div class="little-seat-atom">5-022<br><%=arr(2,769)%></div>
						<div class="little-seat-atom">5-023<br><%=arr(2,770)%></div>
						<div class="little-seat-atom">5-024<br><%=arr(2,771)%></div>
					</div>
					<div class="little-seat">
						<div class="little-seat-atom">5-017<br><%=arr(2,764)%></div>
						<div class="little-seat-atom">5-018<br><%=arr(2,765)%></div>
						<div class="little-seat-atom">5-019<br><%=arr(2,766)%></div>
						<div class="little-seat-atom">5-020<br><%=arr(2,767)%></div>
					</div>
				</div>
				<div class="little-seat-a">
					<div class="little-seat">
						<div class="little-seat-atom">5-013<br><%=arr(2,760)%></div>
						<div class="little-seat-atom">5-014<br><%=arr(2,761)%></div>
						<div class="little-seat-atom">5-015<br><%=arr(2,762)%></div>
						<div class="little-seat-atom">5-016<br><%=arr(2,763)%></div>
					</div>
					<div class="little-seat">
						<div class="little-seat-atom">5-009<br><%=arr(2,756)%></div>
						<div class="little-seat-atom">5-010<br><%=arr(2,757)%></div>
						<div class="little-seat-atom">5-011<br><%=arr(2,758)%></div>
						<div class="little-seat-atom">5-012<br><%=arr(2,759)%></div>
					</div>
				</div>
				<div class="little-seat-a">
					<div class="little-seat">
						<div class="little-seat-atom">5-005<br><%=arr(2,752)%></div>
						<div class="little-seat-atom">5-006<br><%=arr(2,753)%></div>
						<div class="little-seat-atom">5-007<br><%=arr(2,754)%></div>
						<div class="little-seat-atom">5-008<br><%=arr(2,755)%></div>
					</div>
					<div class="little-seat">
						<div class="little-seat-atom">5-001<br><%=arr(2,748)%></div>
						<div class="little-seat-atom">5-002<br><%=arr(2,749)%></div>
						<div class="little-seat-atom">5-003<br><%=arr(2,750)%></div>
						<div class="little-seat-atom">5-004<br><%=arr(2,751)%></div>
					</div>
				</div>
				<div class="little-seat-a"></div>
				<div class="little-seat-al">墙</div>
				<div class="little-seat-ad"></div>
				<div class="little-seat-ad"></div>
				<div class="little-seat-ad"></div>
				<div class="little-seat-ad"></div>
				<div class="little-seat-ad"></div>
				<div class="little-seat-ad"></div>
				<div class="little-seat-ad"></div>
				<div class="little-seat-ad"></div>
				<div class="little-seat-ad"></div>
				<div class="little-seat-ad"></div>
				<div class="little-seat-ad"></div>
				<div class="little-seat-ad"></div>
				<div class="little-seat-ad"></div>
				<div class="little-seat-ad"></div>
				<div class="little-seat-ad"></div>
				<div class="little-seat-ad"></div>
				<div class="little-seat-ad"></div>
			</div>			
<!--5-6--->
			<div class="middle">
				<div class="littlel">服务台</div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="littlel">墙</div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
			</div>	
<!--5-7-->
			<div class="middle">
				<div class="littles">B035<br><%=arr(2,694)%></div>
				<div class="little"></div>
				<div class="littles">B034<br><%=arr(2,693)%></div>
				<div class="littles">B033<br><%=arr(2,692)%></div>
				<div class="littles">B032<br><%=arr(2,691)%></div>
				<div class="littles">B031<br><%=arr(2,690)%></div>
				<div class="littles">B030<br><%=arr(2,689)%></div>
				<div class="littles">B029<br><%=arr(2,688)%></div>
				<div class="littles">B028<br><%=arr(2,687)%></div>
				<div class="littles">B027<br><%=arr(2,686)%></div>
				<div class="littles">B026<br><%=arr(2,685)%></div>
				<div class="littles">B025<br><%=arr(2,684)%></div>
				<div class="little"></div>
				<div class="littles">B024<br><%=arr(2,683)%></div>
				<div class="littles">B023<br><%=arr(2,682)%></div>
				<div class="littles">B022<br><%=arr(2,681)%></div>
				<div class="littles">B021<br><%=arr(2,680)%></div>
				<div class="littles">B020<br><%=arr(2,679)%></div>
				<div class="littles">B019<br><%=arr(2,678)%></div>
				<div class="littles">B018<br><%=arr(2,677)%></div>
				<div class="little"></div>
				<div class="littlel">墙</div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
			</div>
<!--5-8-->
			<div class="middle">
				<div class="littles">B036<br><%=arr(2,695)%></div>
				<div class="little"></div>
				<div class="littles">B017<br><%=arr(2,676)%></div>
				<div class="littles">B016<br><%=arr(2,675)%></div>
				<div class="littles">B015<br><%=arr(2,674)%></div>
				<div class="littles">B014<br><%=arr(2,673)%></div>
				<div class="littles">B013<br><%=arr(2,672)%></div>
				<div class="littles">B012<br><%=arr(2,671)%></div>
				<div class="littles">B011<br><%=arr(2,670)%></div>
				<div class="littles">B010<br><%=arr(2,669)%></div>
				<div class="littles">B009<br><%=arr(2,668)%></div>
				<div class="littles">B008<br><%=arr(2,667)%></div>
				<div class="little"></div>
				<div class="littles">B007<br><%=arr(2,666)%></div>
				<div class="littles">B005<br><%=arr(2,665)%></div>
				<div class="littles">B006<br><%=arr(2,664)%></div>
				<div class="littles">B004<br><%=arr(2,663)%></div>
				<div class="littles">B003<br><%=arr(2,662)%></div>
				<div class="littles">B002<br><%=arr(2,661)%></div>
				<div class="littles">B001<br><%=arr(2,660)%></div>
				<div class="little"></div>
				<div class="littlel">墙</div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
			</div>
<!--5-9-->
			<div class="middle">
				<div class="littles">B037<br><%=arr(2,696)%></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="littlel">墙</div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
			</div>
<!--5-10-->
			<div class="middle">
				<div class="littles">B038<br><%=arr(2,697)%></div>
				<div class="little"></div>
				<div class="littlel">仓库</div>
				<div class="littlel">仓库</div>
				<div class="littlel">安全通道</div>
				<div class="littlel">安全通道</div>
				<div class="littles">A015<br><%=arr(2,657)%></div>
				<div class="little"></div>
				<div class="littles">A016<br><%=arr(2,658)%></div>
				<div class="littles">A017<br><%=arr(2,659)%></div>
				<div class="littlel">党建室</div>
				<div class="littlel">党建室</div>
				<div class="littlel">党建室</div>
				<div class="littlel">大会议室</div>
				<div class="littlel">大会议室</div>
				<div class="littlel">大会议室</div>
				<div class="littlel">大会议室</div>
				<div class="littlel">大会议室</div>
				<div class="littlel">大会议室</div>
				<div class="littlel">大会议室</div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="littlel">内部电梯</div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
			</div>
<!--5-11-->
			<div class="middle">
				<div class="littles">B039<br><%=arr(2,698)%></div>
				<div class="little"></div>
				<div class="littlel">仓库</div>
				<div class="littlel">仓库</div>
				<div class="littlel">安全通道</div>
				<div class="littlel">安全通道</div>
				<div class="littles">A014<br><%=arr(2,656)%></div>
				<div class="little"></div>
				<div class="littles">A013<br><%=arr(2,655)%></div>
				<div class="littles">A012<br><%=arr(2,654)%></div>
				<div class="littlel">党建室</div>
				<div class="littlel">党建室</div>
				<div class="littlel">党建室</div>
				<div class="littlel">大会议室</div>
				<div class="littlel">大会议室</div>
				<div class="littlel">大会议室</div>
				<div class="littlel">大会议室</div>
				<div class="littlel">大会议室</div>
				<div class="littlel">大会议室</div>
				<div class="littlel">大会议室</div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="littlel">内部电梯</div>
				<div class="littlel">墙</div>
				<div class="littlel">墙</div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
			</div>
<!--5-12-->
			<div class="middle">
				<div class="littles">B040<br><%=arr(2,699)%></div>
				<div class="little"></div>
				<div class="littlel">仓库</div>
				<div class="littlel">仓库</div>
				<div class="littlel">安全通道</div>
				<div class="littlel">安全通道</div>
				<div class="littles">机房</div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="little"></div>
				<div class="littlel">墙</div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
			</div>
<!--5-13-->
			<div class="middle">
				<div class="littles">B040<br><%=arr(2,699)%></div>
				<div class="littles">B040<br><%=arr(2,699)%></div>
				<div class="littlel">仓库</div>
				<div class="littlel">仓库</div>
				<div class="littlel">安全通道</div>
				<div class="littlel">安全通道</div>
				<div class="littles">A011<br><%=arr(2,653)%></div>
				<div class="littles">A011<br><%=arr(2,653)%></div>
				<div class="littles">A010<br><%=arr(2,652)%></div>
				<div class="littles">A009<br><%=arr(2,651)%></div>
				<div class="littles">A009<br><%=arr(2,651)%></div>
				<div class="littles">A008<br><%=arr(2,650)%></div>
				<div class="littles">A007<br><%=arr(2,649)%></div>
				<div class="littles">A006<br><%=arr(2,648)%></div>
				<div class="littles">A005<br><%=arr(2,647)%></div>
				<div class="littles">A004<br><%=arr(2,646)%></div>
				<div class="littles">A004<br><%=arr(2,646)%></div>
				<div class="littles">A003<br><%=arr(2,645)%></div>
				<div class="littles">A002<br><%=arr(2,644)%></div>
				<div class="littles">A002<br><%=arr(2,644)%></div>
				<div class="littles">A001<br><%=arr(2,643)%></div>
				<div class="littles">A001<br><%=arr(2,643)%></div>
				<div class="littlel">水吧</div>
				<div class="littlel">水吧</div>
				<div class="littlel">墙</div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
				<div class="littled"></div>
			</div>		
		</div>
	
	<script language="JavaScript">
		function three(){
			var page1=document.getElementById("three");
			var page2=document.getElementById("four");
			var page3=document.getElementById("five");
			page1.style.display = "block";
			page2.style.display = "none";
			page3.style.display = "none";
		}
		function four(){
			var page1=document.getElementById("three");
			var page2=document.getElementById("four");
			var page3=document.getElementById("five");
			page1.style.display = "none";
			page2.style.display = "block";
			page3.style.display = "none";
		}
		function five(){
			var page1=document.getElementById("three");
			var page2=document.getElementById("four");
			var page3=document.getElementById("five");
			page1.style.display = "none";
			page2.style.display = "none";
			page3.style.display = "block";
		}
		function jump(){
			var checknum = 1;;
			var pass = prompt('请输入管理密码：');
			if (pass == "jsjsjs" || pass == "hshs"){
				location.href = "map_update.asp";
			}
			else{
				alert('密码错误！！！');
				location.href = "map.asp";
			}
		}
	</script>
	
	</body>
</html>
