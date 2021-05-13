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
			
		<div id="five" class="floor3">
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
	</body>
</html>
