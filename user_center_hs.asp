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
	<script src="js/print.js" ></script>

</head>

<!--#include file="conn.asp"-->

<div class="container">
	<div class="row clearfix">
		<div class="col-md-12 column" id="mp" style="position: relative;padding: 5px 0 0 5px;">
			<%
				Userid=request.cookies("huancun")("Userid")
				cook=trim(request.Form("cook"))
				' response.write Userid
				' response.write cook
				set rs=server.CreateObject("adodb.recordset")
				' sql = "select * from member where Userid ='"&Userid&"'"
				sql = "select * from list where 姓名 ='"&Userid&"'"
				rs.open sql,conn,1,3
				' response.write("账号是:"&rs("Userid")&"<br>")
				' response.write("IP是:"&rs("IP"))
				' response.write("Name是:"&rs("姓名"))
				' response.write("Job:"&rs("职务"))
				' response.write("Phone:"&rs("手机"))
				' response.write("email:"&rs("邮箱"))
				
			%>
			<img src="img/businesscard/hsmp1.jpg" class="mpimg" />
			<div id="mz">
				<div id="xm"><%=rs("姓名")%></div>
				<div id="fh">丨</div>
				<input id="ywm" type="text" value="  Eidt your own En.name" onKeyUp="value=value.replace(/[^a-zA-Z .]/g,'')" />
			</div>
			<div id="zwzw">
				<div id="zw"><%=rs("职务")%></div>
				<input id="ywzw" type="text" value="Eidt your En.job" onKeyUp="value=value.replace(/[^a-zA-Z .]/g,'')" />
			</div>
			<div id="xx">
				<div id="sj"><%=rs("手机")%></div>
				<div id="yx"><%=rs("邮箱")%></div>
			</div>
			<div id="dzdz">
				<div id="dz">上海市静安区恒丰路299号京师律师广场三层  200070</div>
				<div id="dzyw">3F, Jingsh Lawyers Plaza, No.299 Hengfeng Road, Jing’an District, Shanghai  200070</div>
			</div>
			<img src="" id="wximg" width="150px" height="150px"> 
	
	<br><br><br>
	
			<div id="hide">
				<input type="file"  onchange="change(event)" id="user_input"  />
				<div id="user_input1">&nbsp;&nbsp;&nbsp;上传<br>&nbsp;二维码</div>
				<ul class="userul">
					<li class="userli"><br><button onclick="hide1()">隐藏</button> or <button onclick="display1()">显示</button><br> "|"</li>
					
					
					<li class="userli">刷新页面可重置信息</li>
					<li class="userli"><a href="javascript:doPrint()" rel="external nofollow" target="_self"><button>打印</button></a></li>
					<li class="userli">管理员微信  lbqpdbqpdl</li>
					<li class="userli"><a href="sign_out.asp"><button>退出登录</button></a></li>
				</ul>
				
				
			</div>
			<%
				rs.close
				conn.close
				set rs=nothing
				set conn=nothing
			
			%>
		</div>
	</div>
	
	<br><br>
	
	<div class="row clearfix">
		<div class="col-md-12 column" id="mp1">
			<img src="img/businesscard/hsmp2.jpg" class="mpimg" />
		</div>
	</div>
</div>
<br /><br /><br /><br /><br />