<meta charset="utf-8" />
<%@language="vbscript" codepage="65001"%>
<!--#include file="conn.asp"-->
<!--#include file="md5.asp"-->
<%
	dim Userid,Password,Phone,Email
	Userid=request.Form("Userid")
	Password=request.Form("Password")
	Password=md5(Password)
	Phone=request.Form("Phone")
	Email=request.Form("Email")
	if trim(Userid)&"x"="x" or trim(Password)&"x"="x" or trim(Phone)&"x"="x" or trim(Email)&"x"="x" then
		response.write "<script>alert('注册信息不能为空');location.href='sign_up.asp';</script>"
	else if trim(Userid) <>Userid then
		response.write "<script>alert('用户名不能有空格');location.href='sign_up.asp';</script>"
	else
		sql="select * from member where Phone='"&Phone&"' or Userid='"&Userid&"' or Email='"&Email&"'"
		rs.open sql,conn,1,3
		if rs.eof then
			rs.addnew
			rs("Userid")=Userid
			rs("Password")=Password
			rs("Phone")=Phone
			rs("Email")=Email
			rs("Status")=1
			rs("Totallogin")=0
			rs.update
			rs.close
			conn.close
			set rs=nothing
			set conn=nothing
			response.write "<script>alert('注册成功');location.href='sign_in.asp';</script>"
		end if
		rs.close
		conn.close
		set rs=nothing
		set conn=nothing
		response.write "<script>alert('注册重复');location.href='sign_up.asp'</script>"
	end if 
	end if
%>