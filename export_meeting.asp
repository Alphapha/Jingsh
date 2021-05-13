<meta charset="utf-8" />
<%@language="vbscript" codepage="65001"%>
<!--#include file="conn.asp"-->

<%
Response.ContentType = "application/vnd.ms-excel"

Response.AddHeader "Content-Disposition","attachment;filename=js.asp"
%>

<table>
	<thead>
		
		<tr> 
			<td colspan="6">京师会议室预定情况</td>
		</tr>
		<tr>
			<th>日期</th>
			<th>时间</th>
			<th>会议室</th>
			<th>扣款律师</th>
			<th>预定人</th>
			<th>备注</th>
		</tr>
	</thead>
	<tbody>
		<%
			set rs=server.createObject("adodb.recordset")
			sql = "SELECT * from meetorder WHERE DATE >= '"&request.form("e_rq1")&"' and DATE <= '"&request.form("e_rq2")&"' and USER IS NOT NULL"
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
				Response.write "</tr>"
				rs.movenext
			next
			rs.close
		%>
	</tbody>
</table>