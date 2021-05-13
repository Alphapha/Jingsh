<meta charset="utf-8" />
<%@language="vbscript" codepage="65001"%>
<!--#include file="../conn.asp"-->

<%
Response.ContentType = "application/vnd.ms-excel"

Response.AddHeader "Content-Disposition","attachment;filename=express.xls"
%>
<table>
	<thead>
		
		<tr> 
			<td colspan="12">快递数据导出表格</td>
		</tr>
		<tr>
			<th>挂账人</th>
			<th>经办人</th>
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
		</tr>
	</thead>
	<tbody>
		<%
			gzr=request.form("kd_name_ex")
			riqi_s=request.form("kd_date_ex_s")
			riqi_e=request.form("kd_date_ex_e")
			if trim(gzr)&"x"="x" and trim(riqi_s)&"x"="x" and trim(riqi_e)&"x"="x" then
				Response.write "你什么都没有输入,当然空空如也啦!"<!--无输入弹窗警告
			else if trim(riqi_s)&"x"="x" and trim(riqi_e)&"x"="x" then
				sql="select * from js_express where kd_name1 like '"&"%"&request.form("kd_name_ex")&"%"&"' ORDER BY kd_date DESC"<!--根据姓名查询模糊搜索，其他为空-->
			else if trim(gzr)&"x"="x" and trim(riqi_e)&"x"="x"  then
				sql="select * from js_express where kd_date='"&request.form("kd_date_ex_s")&"' ORDER BY kd_date DESC"<!--根据日期1查询，其他为空-->
			else if trim(gzr)&"x"="x" and trim(riqi_s)&"x"="x"  then
				sql="select * from js_express where kd_date='"&request.form("kd_date_ex_e")&"' ORDER BY kd_date DESC"<!--根据日期2查询，其他为空-->
			else if trim(gzr)&"x"="x" then       
				sql="select * from js_express where kd_date >='"&request.form("kd_date_ex_s")&"' and kd_date <='"&request.form("kd_date_ex_e")&"' ORDER BY kd_date DESC"<!--根据日期区间查询,其他为空-->
			else 
				sql="select * from js_express where kd_date >='"&request.form("kd_date_s")&"' and kd_date <='"&request.form("kd_date_e")&"' and kd_name1 like '"&"%"&request.form("kd_name_ex")&"%"&"' ORDER BY kd_date DESC"
			end if
			end if
			end if
			end if
			end if
			rs.CursorLocation = 3
			rs.open sql,conn,1,3
			for i=1 to rs.recordcount
				Response.write "<tr>"
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
				Response.write "</tr>"
				rs.movenext
			next
			rs.close
		%>
	</tbody>
</table>