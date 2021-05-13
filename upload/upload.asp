
<meta charset="utf-8" />
<%@language="vbscript" codepage="65001"%>
<!--#include file="UpLoad_Class.asp"-->
<!--#include file="conn.asp"-->

<%

i=0
dim upload
set upload = new AnUpLoad
upload.Exe = "*"
upload.MaxSize = 1024 * 1024 * 1024 '1024M
upload.GetData()
if upload.ErrorID>0 then 
	response.Write upload.Description
else
	dim file,savpath
	savepath = "upload"
	for each frm in upload.forms("-1")
		
		response.Write frm & "=" & upload.forms(frm) & "<br />"
	next
	
	set file = upload.Files("file1")
	if file.isfile then
		result = file.saveToFile(savepath,0,true)
		if result then
			response.Write "文件'" & file.LocalName & "'上传成功，保存位置'" & server.MapPath(savepath & "/" & file.filename) & "',文件大小" & file.size & "字节<br />"
		else
			response.Write file.Exception & "<br />"
		end if
	end if
	
	set file = upload.Files_Muti("file1",1)
	if file.isfile then
		result = file.saveToFile(savepath,1,true)
		if result then
			response.Write "文件'" & file.LocalName & "'上传成功，保存位置'" & server.MapPath(savepath & "/" & file.filename) & "',文件大小" & file.size & "字节<br />"
			
		else
			response.Write file.Exception & "<br />"
		end if
	end if
	
	Response.Write "成功保存的文件个数：" & Upload.QuickSave("file1",savepath) & "个"
	ff1 = UpLoad.forms("ll1")
	ff2 = UpLoad.forms("ll2")
	ff3 = UpLoad.forms("ll3")
	ff4 = UpLoad.forms("ll4")
	ff5 = UpLoad.forms("ll5")
	ff6 = UpLoad.forms("ll6")
	ff7 = UpLoad.forms("ll7")
	ff8 = Request.serverVariables("REMOTE_ADDR")
	ff9 = now()
	ff10 = upload.Files("file1").filename
	sql = "insert into PC(mingzi,xitong,OfficeType,ExistOffice,UseAdobe,ExistAdobe,UseSoftware,Suggestion,IP,Time) values('"&ff1&"','"&ff10&"','"&ff2&"','"&ff3&"','"&ff4&"','"&ff5&"','"&ff6&"','"&ff7&"','"&ff8&"','"&ff9&"')"
	rs.open sql,conn,1,3
	
end if

	
set upload = nothing

	response.write "<script language='javascript'>"
	response.write "alert('提交成功');location.href='soft.asp';"	
	response.write "</script>"
	
%>