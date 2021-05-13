<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<%@language=vbscript codepage="65001"%>
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
	<title>京师律师联盟</title>
	<!-- Bootstrap -->
	<!-- jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边) -->
	<script src="/css/bootstrap/js/jquery.min.js"></script>
	<!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->
	<script src="/css/bootstrap/js/bootstrap.min.js"></script>
	<link href="/css/bootstrap/css/bootstrap.css" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="/css/index.css" />
	<script src="../js/click.js" defer="defer"></script>
	<link rel="shortcut icon" href="../img/logo1-3.png" />
	<style type="text/css">
		*{
			cursor: url('../img/play/kn5.cur'),default;
		}
		h2,h3,h4{
			display: inline-block;
			line-height: 30px;
		}
		
	</style>
</head>

<!--#include file="../conn.asp"-->

<div class="container" style="background: url(../img/logo1-1-ys-tm-2.png) no-repeat ;background-size: 100% auto;height: 650px;width: 100%;max-width: 600px; " >
	<div class="row clearfix" style="margin: 10px 2%; opacity: 1;>
		<div class="col-md-12 column" style="position: relative;padding: 5px 0 0 5px;opacity: 1;">
			<%
				menjin_name=request.cookies("huancun")("name")
				menjin_phone=request.cookies("huancun")("phone")
				login=request.cookies("huancun")("login")
				cook=trim(request.Form("cook"))
				sql = "select * from js_safe where 姓名='"&menjin_name&"' and 手机 ='"&menjin_phone&"' and 服务类型='补卡' order by 门禁卡办理时间 desc"
				rs.open sql,conn,1,3
				if login<>"ok" then response.redirect "../index.html"
			%>
			<div >
				<div>
					<h3>尊敬的&nbsp;</h3><h2><%=rs("姓名")%></h2><h3>&nbsp;先生/女士：</h3>
				</div><br>
				<h4>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;您于&nbsp;<b><%=rs("门禁卡办理时间")%></b>&nbsp;在京师上海国际总部办理了门禁一卡通补卡业务，补卡卡号为&nbsp;<b><%=rs("编号_门禁卡")%></b>&nbsp;，补卡支付凭证号为&nbsp;<b><%=rs("费用_门禁卡")%></b>&nbsp;，补卡绑定的手机号为&nbsp;<b><%=rs("手机")%></b>&nbsp;，此界面截图作为补卡凭证，领取门禁卡时请出示此截图。</h4><br><br>
					<h5>随同附上</h5>
					<h5>我衷心希望</h5>
					<h5>您永远用不到的</h5>
					<h5>温馨小贴士：</h5>
					<h4>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;门禁卡丢失损坏补卡费用50元。</h4><br>
					<div style="float: right;">
						<h5>京师上海国际总部</h5>
						<h5><%=date()%></h5>
					</div>	
			</div>
			<%
				rs.close
				conn.close
				set rs=nothing
				set conn=nothing
			
			%>
		</div>
	</div>
	
	
</div>
