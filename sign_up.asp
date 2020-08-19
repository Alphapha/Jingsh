<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
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
	<link rel="stylesheet" type="text/javascript" href=""  />
	<script language="JavaScript">
		function tz(){
			location.href='sign_in.asp';
		}
		function fucPWDchk(str) { 
			var strSource ="0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"; 
			var ch; 
			var i; 
			var temp; 
			
			for (i=0;i<=(str.length-1);i++) 
			{ 
			ch = str.charAt(i); 
			temp = strSource.indexOf(ch); 
			if (temp==-1) 
			{ 
			return 0; 
			} 
			} 
			if (strSource.indexOf(ch)==-1) 
			{ 
			return 0; 
			} 
			else 
			{ 
			return 1; 
			} 
		} 
		function Checkreg()
		{
			if (document.sign_in.Userid.value.length < 2 || document.sign_in.Userid.value.length >16) {
				alert("提示：请输入用户名，有效长度为4-16位");
				document.sign_in.Userid.focus();
				return false;
			}
			if (document.sign_in.Password.value.length <6 || document.sign_in.Password.value.length >16) {
				alert("提示：请输入密码，最少6位，最长16位。");
				document.sign_in.Userid.focus();
				return false;
			}
			if (!fucPWDchk(document.sign_in.Password.value)){
				alert("提示：只能使用纯数字和大、小写字母作为密码");
				document.sign_in.Password.focus();
				return false;
				}
			if (document.sign_in.Password.value != document.sign_in.Password1.value) {
				alert("提示：您两次输入的密码不一样，请检查后重新输入");
				document.sign_in.Password1.focus();
				return false;
			}
			if (document.sign_in.Email.value.length <4 || document.sign_in.Email.value.length >=100) {
				alert("提示：请输入有效的电子邮箱");
				document.sign_in.Email.focus();
				return false;
			}
			if (document.sign_in.Email.value.length > 0 && !document.sign_in.Email.value.match( /^.+@.+$/ ) ) {
			    alert("提示：请输入有效的电子信箱");
				document.sign_in.Email.focus();
				return false;
			}
		}
	</script>
	
</head>
<body>
	<!--#include file="conn.asp"-->
	<div class="container">
		<div class="row clearfix">
			<div class="col-md-12 column">
				<div class="svg">	
					<svg height="48" class="octicon octicon-mark-github" viewBox="0 0 16 16" version="1.1" width="48" aria-hidden="true"><path fill-rule="evenodd" d="M8 0C3.58 0 0 3.58 0 8c0 3.54 2.29 6.53 5.47 7.59.4.07.55-.17.55-.38 0-.19-.01-.82-.01-1.49-2.01.37-2.53-.49-2.69-.94-.09-.23-.48-.94-.82-1.13-.28-.15-.68-.52-.01-.53.63-.01 1.08.58 1.23.82.72 1.21 1.87.87 2.33.66.07-.52.28-.87.51-1.07-1.78-.2-3.64-.89-3.64-3.95 0-.87.31-1.59.82-2.15-.08-.2-.36-1.02.08-2.12 0 0 .67-.21 2.2.82.64-.18 1.32-.27 2-.27.68 0 1.36.09 2 .27 1.53-1.04 2.2-.82 2.2-.82.44 1.1.16 1.92.08 2.12.51.56.82 1.27.82 2.15 0 3.07-1.87 3.75-3.65 3.95.29.25.54.73.54 1.48 0 1.07-.01 1.93-.01 2.2 0 .21.15.46.55.38A8.013 8.013 0 0016 8c0-4.42-3.58-8-8-8z"></path></svg><br><br>Sign up to Jingsh Alliance
				</div>
				<div class="sign_in_form">
				<form class="form-horizontal" role="form" id="sign_in" action="sign_up_sql.asp" onsubmit="return Checkreg()" method="post" name="sign_in">
					<div class="form-con">Username</div>
					<input class="form-con" name="Userid">
					<div class="form-con">Password </div>
					<input id="inputPassword3" type="password" class="form-con" name="Password">
					<div class="form-con">Password <small>(Check)</small></div>
					<input id="inputPassword3" type="password" class="form-con" name="Password1">
					<div class="form-con">Email </div>
					<input id="inputEmail3" type="email" class="form-con" name="Email">
					<div class="form-con">Phone </div>
					<input class="form-con" name="Phone">
					<button type="submit" class="form-con-button">Sign up</button>
					<input type="button" class="form-con-button" onclick="tz()" value="Sign in">
				</form>
				
				</div>
			</div>
		</div>
	</div>
</body>
</html>