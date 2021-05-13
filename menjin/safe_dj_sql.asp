
<meta charset="utf-8" />
<%@language="vbscript" codepage="65001"%>
<!--#include file="../conn.asp"-->
<%
	menjin_name = trim(request.Form("menjin_name"))
	menjin_phone = trim(request.Form("menjin_phone"))
	menjin_card_fee=trim(request.Form("menjin_card_fee"))
	menjin_card_num=trim(request.Form("menjin_card_num"))
	login=request.Form("login")
	cook=request.Form("cook")
	tim=now()
	ip=Request.serverVariables("REMOTE_ADDR")
	if request.Form("login")<>"ok" then response.redirect "index.html"
	
	sql = "select * from js_list where 姓名 ='"&menjin_name&"' and 手机 ='"&menjin_phone&"' and 状态='在职'"
	sql1 = "select * from js_safe where 姓名 ='"&menjin_name&"' and 手机 ='"&menjin_phone&"'"
	sql2 = "insert into js_safe (姓名,手机,卡_人脸,卡_指纹,卡_电梯,费用_门禁卡,编号_门禁卡,门禁卡办理时间,门禁卡办理IP,服务类型,是否可退卡,退卡卡号) values('"&menjin_name&"','"&menjin_phone&"','已录','已录','已录','"&menjin_card_fee&"','"&menjin_card_num&"','"&tim&"','"&ip&"','初次办卡','可','"&menjin_card_num&"') "
	
	sql3 = "insert into log (log_user,log_time,log_ip,log_content) values('"&request.form("menjin_name")&request.form("menjin_phone")&"','"&tim&"','"&ip&"','"&replace(sql2,chr(39),chr(34))&"')"
	sql4 = "update js_safe_card_statistics set 使用情况 ='1' where 卡号='"&request.form("menjin_card_num")&"'"
	sql5 = "insert into log (log_user,log_time,log_ip,log_content) values('"&request.form("menjin_name")&request.form("menjin_phone")&"','"&tim&"','"&ip&"','"&replace(sql4,chr(39),chr(34))&"')"
	sql6 = "select 费用_门禁卡 from js_safe where 费用_门禁卡='"&request.form("menjin_card_fee")&"'"
	sql7 = "select 编号_门禁卡 from js_safe where 编号_门禁卡='"&request.form("menjin_card_num")&"'"
	sql8 = "insert into log (log_user,log_time,log_ip,log_content) values('"&request.form("menjin_name")&request.form("menjin_phone")&"','"&tim&"','"&ip&"','"&replace(sql6,chr(39),chr(34))&"')"
	sql9 = "insert into log (log_user,log_time,log_ip,log_content) values('"&request.form("menjin_name")&request.form("menjin_phone")&"','"&tim&"','"&ip&"','"&replace(sql7,chr(39),chr(34))&"')"
	rs.open sql,conn,1,3
	
	if (rs.bof and rs.eof) then'查找表判断是否已入职
		response.write "<script>alert('申请失败!!!!!!原因:查无此人,信息错误或未在京师办理相关手续,请联系相关负责人处理后再来办理');location.href='../aadmin/hr_lawyer.asp'</script>"
		response.end
	end if
	
	rs6.open sql6,conn,1,3
	rs8.open sql8,conn,1,3
	if (rs6.bof and rs6.eof) then'查找表判断是否转账单号重复
		rs7.open sql7,conn,1,3
		rs9.open sql9,conn,1,3
		if (rs7.bof and rs7.eof) then'查找表判断是否门禁卡编号重复
			rs1.open sql1,conn,1,3
			if (rs1.bof and rs1.eof) then
				rs2.open sql2,conn,1,3
				rs3.open sql3,conn,1,3
				rs4.open sql4,conn,1,3
				rs5.open sql5,conn,1,3
				
				
				response.write "<script>alert('申请成功!!!工作人员已收到你的信息并在努力做卡,请明下午1点后至综合服务台领取,点击获取申请凭证');</script>"
				
				response.cookies("huancun")("name")=menjin_name
				response.cookies("huancun")("phone")=menjin_phone
				response.cookies("huancun")("login")=login
				if request.form("cook")<>"0" then response.cookies("huancun").expires=(now()+1/24)
				response.write "<meta http-equiv='refresh' content='0;URL=safe_user_center.asp'>"
				response.end
			else
				response.write "<script>alert('申请失败!!!!!!你已办理,请勿重复办理,补卡请前往补卡界面');location.href='../index.html';</script>"
				response.end
			end if
		else 
			response.write "<script>alert('哎呀糟糕,这个卡号在前1秒钟被抢走了,请刷新界面重新选择卡号');location.href='safe_dj.asp';</script>"
			response.end
		end if
	else 
		response.write "<script>alert('申请失败!!!!!!转账单号重复!请确认转账单号再来!可联系管理员协助:13379874775');location.href='safe_dj.asp';</script>"
		response.end
	end if
	
	
	
	
	
	rs.close
	rs1.close
	rs2.close
	rs3.close
	rs4.close
	rs5.close
	rs6.close
	rs7.close
	set rs=nothing
	set rs1=nothing
	set rs2=nothing
	set rs3=nothing
	set rs4=nothing
	set rs5=nothing
	set rs6=nothing
	set rs7=nothing
%>