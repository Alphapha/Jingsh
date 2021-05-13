<meta charset="utf-8" />
<%@language="vbscript" codepage="65001"%>
<!--#include file="../conn.asp"-->


<%
wenjian = request.Form("express_import_file")
 
'获取文件扩展名
ext = FileExec(wenjian)
'判断文件扩展名
if ext <> "xls" then
  response.Write("<script>alert('文件类型不对，请核实！');window.location.href='express_admin_search.asp';</script>")
  response.End()
end if

Dim objConn,objRS
Dim strConn,strSql

 
set objConn=Server.CreateObject("ADODB.Connection")
set objRS=Server.CreateObject("ADODB.Recordset")
 
 
 
excelFile = server.mappath(wenjian) 
response.write wenjian

'针对excel 2007
'strConn = "Provider=Microsoft.ACE.OLEDB.12.0; Data Source=" & excelFile & ";" & "Extended Properties=Excel 8.0;"Driver={Microsoft Excel Driver (*.xls)};
strConn = "Provider=Microsoft.Jet.OLEDB.4.0; Data Source=" & excelFile & ";" & "Extended Properties=Excel 8.0;"
response.write excelFile
objConn.Open strConn
response.write excelFile
strSql="SELECT * FROM [express$]"
 
objRS.Open strSql,objConn,1,1
objRS.MoveFirst
 
%>
<%
'循环excel中所有记录
while not objRS.eof
  set rs = Server.CreateObject("Adodb.Recordset")
  '查询语句
  sql_s = "select * from js_express where kd_name1='" & objRS(0) & "' and kd_name2='" & objRS(1) & "' and kd_phone='" & objRS(2) & "' and kd_com='" & objRS(3) & "' and kd_num='" & objRS(4) & "' and kd_date='" & objRS(5) & "' and kd_des='" & objRS(6) & "' and kd_dcom='" & objRS(7) & "' and kd_type='" & objRS(8) & "' and kd_pay='" & objRS(9) & "' and kd_weight='" & objRS(10) & "' and kd_fee='" & objRS(11) & "'"
  rs.open sql_s, conn, 1, 1
  '重复的数据不做录入操作
  response.write sql_s
  if rs.eof then
    '插入语句
    '****excel中第一条不会被录入****
    sql = "insert into ceshi (kd_name1, kd_name2, kd_phone, kd_com, kd_num,kd_date,kd_des,kd_dcom,kd_type,kd_pay,kd_weight,kd_fee)values ('" & objRS(0) & "', '" & objRS(1) & "', '" & objRS(2) & "', '" & objRS(3) & "', '" & objRS(4) & "','" & objRS(5) & "','" & objRS(6) & "','" & objRS(7) & "','" & objRS(8) & "','" & objRS(9) & "','" & objRS(10) & "','" & objRS(11) & "')"
    '执行插入
    conn.execute(sql)
  end if
  objRS.MoveNext 
  rs.close
  set rs = nothing
wend
 
'又到了各种关闭的时候
conn.close
set conn = nothing
objRS.Close
objConn.Close
set objRS = Nothing
set objConn = Nothing
 
response.Write("<script>alert('导入成功');window.location.href='express_mt.asp.html';</script>")
response.End()
 
Function FileExec(fileName)
 FileExec = Mid(fileName,Instr(fileName,".")+1,Len(fileName)-Instr(fileName,"."))
End Function
%>

