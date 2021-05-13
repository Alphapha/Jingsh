<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<%@Language="vbscript" Codepage="65001"%>
		<title>asp</title>
		<style type="text/css">
			body{
				text-align: center;
			}
			#list{
				margin: 0 auto;
			}
		</style>
	</head>
	<body onselectstart="return false" oncontextmenu="return false">
		<!--#include file='conn.asp'-->
		<form method="post" action="search.asp">
			律所：<select name="ls">
				<option value=""></option>
				<option value="京师">京师</option>
				<option value="沪师">沪师</option>
			</select>
			姓名：<input type="text" name="xm"  /><br /><br />
			类别：<select name="lb">
				<option value=""></option>
				<option value="律师">律师</option>
				<option value="实习律师">实习律师</option>
				<option value="律师助理">律师助理</option>
				<option value="实习生">实习生</option>
				<option value="行政">行政</option>
			</select>
			职务：<input type="text" name="zw"  /><br /><br />
			手机：<input type="text" name="sj"  />
			邮箱：<input type="text" name="yx"  /><br /><br />
			<input type="submit" value="查询">
		</form><br />
		<button onclick="location.href='insert.asp'">登记</button><br /><br />
		
		<table border="2" id="list">
			<thead>
				<tr>
					<th>律所</th>
					<th>姓名</th>
					<th>类别</th>
					<th>职务</th>
					<th>手机</th>
					<th>邮箱</th>
				</tr>
			</thead>
			
				
				<div>
					<%
						sql="select * from list"
						rs.CursorLocation = 3
						rs.open sql,conn,1,3
						rs.pagesize=25
						tatalrecord=rs.recordcount
						tatalpages=rs.pagecount
						rs.movefirst
						nowpage=request("page")
						if nowpage&"x"="x" then
						nowpage=1
						else
						nowpage=cint(nowpage)
						rs.absolutepage=nowpage
						n=1
							Do while not rs.eof and n<=rs.pagesize
					%>
						<tbody>
							<tr>
								<td><%=rs("律所")%></td>
								<td><%=rs("姓名")%></td>
								<td><%=rs("类别")%></td>
								<td><%=rs("职务")%></td>
								<td><%=rs("手机")%></td>
								<td><%=rs("邮箱")%></td>
							</tr>
							</tbody>
						</body>
					<%
						n=n+1
							rs.movenext        
							Loop
						end if
						set rs=nothing

					%> 
				</div>	
<h4>  
<!--/* %=mypage.showpage()%> */-->
共:<%=tatalpages%>页 当前为:<%=nowpage%>页 <%if nowpage>1 then%><a href="class.asp?page=<%=nowpage-1%>"> 上一页 </a><%else%> 上一页 <%end if%>
<%for k=1 to tatalpages%>
<%if k<>nowpage then %>
<a href="class.asp?page=<%=k%>"><%=k%></a><%else%><%=k%>
<%end if%>
<%next%>
<%if nowpage < tatalpages then%><a href="class.asp?page=<%=nowpage+1%>">下一页</a><%else%> 下一页<%end if%>  
<%if nowpage<>1 then%><a href="class.asp?page=<%=1%>"> 首页</a><%else%>首页<%end if%>
<%if nowpage<>tatalpages then %><a href="class.asp?page=<%=tatalpages%>">末页</a><%else%>末页<%end if%>
</h4>
</html>	

