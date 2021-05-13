<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<%@language="vbscript" codepage="65001"%>
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
	<title>初次办卡-门禁资格审核</title>
	<!-- Bootstrap -->
	<!-- jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边) -->
	<script src="../css/bootstrap/js/jquery.min.js"></script>
	<!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->
	<script src="../css/bootstrap/js/bootstrap.min.js"></script>
	<link href="../css/bootstrap/css/bootstrap.css" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="/css/index.css" />
	<script src="../js/click.js" defer="defer"></script>
	<link rel="shortcut icon" href="../img/logo1-3.png" />
	<style type="text/css">
		*{
			cursor: url('../img/play/kn5.cur'),default;
		}
	</style>
	<script language="JavaScript">
		function tz(){
			location.href='';
		}
	</script>
</head>
<!--#include file="../conn.asp"-->
<body class="hexin">
	<div class="container">
		<div class="row clearfix">
			<div class="col-md-12 column">
				<div class="svg">	
					<svg height="48" class="octicon octicon-mark-github" viewBox="0 0 16 16" version="1.1" width="48" aria-hidden="true"><path fill-rule="evenodd" d="M8 0C3.58 0 0 3.58 0 8c0 3.54 2.29 6.53 5.47 7.59.4.07.55-.17.55-.38 0-.19-.01-.82-.01-1.49-2.01.37-2.53-.49-2.69-.94-.09-.23-.48-.94-.82-1.13-.28-.15-.68-.52-.01-.53.63-.01 1.08.58 1.23.82.72 1.21 1.87.87 2.33.66.07-.52.28-.87.51-1.07-1.78-.2-3.64-.89-3.64-3.95 0-.87.31-1.59.82-2.15-.08-.2-.36-1.02.08-2.12 0 0 .67-.21 2.2.82.64-.18 1.32-.27 2-.27.68 0 1.36.09 2 .27 1.53-1.04 2.2-.82 2.2-.82.44 1.1.16 1.92.08 2.12.51.56.82 1.27.82 2.15 0 3.07-1.87 3.75-3.65 3.95.29.25.54.73.54 1.48 0 1.07-.01 1.93-.01 2.2 0 .21.15.46.55.38A8.013 8.013 0 0016 8c0-4.42-3.58-8-8-8z"></path></svg><br><br>初次办卡-门禁资格审核
				</div>
				<div class="sign_in_form">
					<form class="form-horizontal" role="form" action="safe_check_sql.asp" method="post">
							流程：资格审核通过--付款--复制单号--前往登记界面登记--获取凭证截图--第二天下午服务台领卡
							<br>
							<div class="form-con">姓名</div>
							<input class="form-con" name="menjin_name">
							<div class="form-con">手机（*必须是在人资处登记的手机号）</div>
							<input class="form-con" name="menjin_phone">
							<div>
								<a href="../menjin/关于律所启用新门禁系统的通知_20210318103326.pdf" target="_blank">《一卡通办理通知》</a>、<a href="../menjin/京师上海国际总部门禁管理规定_20210318094833.pdf" target="_blank">《门禁管理规定》</a>
							</div><br>
							*初次办理务必先进行门禁资格审核
							<button type="submit" class="form-con-button">门禁资格审核</button>
							<!--<input type="button" class="form-con-button" onclick="tz()" value="Sign up">-->
					</form>
					
					<div>
						
						
					</div>
					<div>
						*<b>审核通过</b>且<b>缴费成功</b>可直接进入登记界面<br>
						<a href="safe_dj.asp"><button class="form-con-button">前往登记界面</button></a>
					</div>
				</div>
			</div>
		</div>
		<br /><br /><br /><br /><br /><br />
	</div>
</body>
</html>