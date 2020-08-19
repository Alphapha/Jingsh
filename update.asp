<html>
	<head>
		<title>人员登记</title>
		<meta charset="utf-8" />
		<%@Language="vbscript" Codepage="65001"%>
	</head>
	<body>
		<!--#include file ="conn.asp"-->
		<%
			sql="select * from list where 序号='"&request("xh")&"'"
			response.write request("xh")
			rs.open sql,conn,1,3
		%>
		
		<form method="post" action="update_sql.asp">
			<input type="hidden" name="xh" value="<%=request("xh")%>" />  <!--xh对应list.asp中xh的值,该字段不能为中文-->
			
			
			
			律所：<select name="ls">
				<%
					if rs.Fields.Item("律所")="京师" then
						response.write "<option value='京师'>京师</option><option value='沪师'>沪师</option>"
					else
						response.write "<option value='沪师'>沪师</option><option value='京师'>京师</option>"
					end if
				%>
			</select><br />
			姓名：<input type="text" name="xm" value="<%=rs.Fields.Item("姓名")%>" /><br />
			类别：<select name="lb">
				<%
					
					if rs.Fields.Item("类别")="律师" then
						response.write "<option value='律师'>律师</option><option value='实习律师'>实习律师</option><option value='律师助理'>律师助理</option><option value='实习生'>实习生</option><option value='行政'>行政</option>"
					elseif rs.Fields.Item("类别")="实习律师" then
						response.write "<option value='实习律师'>实习律师</option><option value='律师'>律师</option><option value='律师助理'>律师助理</option><option value='实习生'>实习生</option><option value='行政'>行政</option>"
					elseif rs.Fields.Item("类别")="律师助理" then
						response.write "<option value='律师助理'>律师助理</option><option value='实习律师'>实习律师</option><option value='律师'>律师</option><option value='实习生'>实习生</option><option value='行政'>行政</option>"
					elseif rs.Fields.Item("类别")="实习生" then
						response.write "<option value='实习生'>实习生</option><option value='律师'>律师</option><option value='实习律师'>实习律师</option><option value='律师助理'>律师助理</option><option value='行政'>行政</option>"
					else
						response.write "<option value='行政'>行政</option><option value='律师'>律师</option><option value='实习律师'>实习律师</option><option value='律师助理'>律师助理</option><option value='实习生'>实习生</option>"
					end if
				%>
			</select><br />
			职务：<input type="text" name="zw" value="<%=rs.fields.item("职务")%>" /><br />
			手机：<input type="text" name="sj" value="<%=rs.fields.item("手机")%>" /><br />
			邮箱：<input type="text" name="yx" value="<%=rs.fields.item("邮箱")%>" /><br /><br />
			<input type="submit" value="哈哈 填完上传"/>
		</form>
	</body>
</html>