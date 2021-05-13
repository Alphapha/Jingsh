<!DOCTYPE html>
<html>
<head runat="server">
	<meta charset="utf-8" />
	<meta http-equiv="refresh" content="10000">
	<meta content="yes" name="apple-mobile-web-app-capable">
	<meta name="viewport" content="width=device-width, initial-scale=0.5, maximum-scale=0.5, user-scalable=no">	
	<%@Language="vbscript" Codepage="65001"%>
	<title>1号统计</title>
	<link rel="shortcut icon" href="../img/logo1-3.png" />
	<link rel="stylesheet" type="text/css" href="../css/index.css" />
	
	<script src="../css/bootstrap/js/jquery.min.js"></script>
	<script src="../js/click.js" defer="defer"></script>
 <style type="text/css">
	 input,select{
		 width: 300px;
		 height: 30px;
	 }
	 li{
		 margin: 15px;
	 }
	 img{
		width: 500px;
	}	 
	.xiao{
		width: 80px;
		height: 80px;
	}
	textarea{
		width: 300px;
		height: 90px;
	}
 </style>
</head>
<body>
<h1>电脑系统和软件统计</h1>
<h4>本次统计仅针对公司电脑</h4>
<form action="upload1.asp" method="post">
 <p>
	 <ol>
		 <li>姓名：<input type="text" name="ll1" placeholder="请填写真实姓名" ></li>
		 <li>系统信息截图 (<a href="../notice.html" target="_blank">查看方法</a>)：<br><br><input type="file" id="file" name="file1" multiple="multiple" /></li>
		 <li>
			您目前使用以下哪种办公软件？<br>
			<select name="ll2">
				
				<option value="Office">Office</option>
				
				<option value="WPSPerson">WPS Office个人版</option>
				
				<option value="WPSProfect">WPS Office专业版</option>
				
			</select><br>
			*office系列软件图标如下图所示：<br><img src="../img/jc2.png" /><br>
			*WPS个人版图标如下图所示：<br><img src="../img/jc5.png" / class="xiao"><br>
			*WPS专业版图标如下图所示：<br><img src="../img/jc4.png" /><br>
			<br>
		 </li>
		 
		 <li>
			您电脑上是否装有Office办公软件？（无论是否使用）<br>
			<select name="ll3">
				
				<option value="Yes">有</option>
				
				<option value="No">没有</option>
				
				<option value="NotKonw">不清楚</option>
			</select>
			<br>
		 </li>
		 
		 <li>日常办公中，您是否使用到Adobe系列办公软件? （目前仅统计）<br>
		 <select name="ll4">
		 	<option value="Use">使用</option>
		 	<option value="NoUse">不使用</option>
		 </select><br>
		 *Adobe系列软件图标如下图所示：<br><img src="../img/jc3.png" /><br>
			
		 </li>
		 <li>
			您电脑上是否装有Adobe系列办公软件？（无论是否使用）<br>
			<select name="ll5">
				
				<option value="Yes">有</option>
					
				<option value="No">没有</option>
				
				<option value="NotKonw">不清楚</option>
			</select>
			<br>
		 </li>
		 
		 <li>您目前工作中需要用到的软件（为利于后期专业软件采购,请尽可能全地填写）：<br>
			<textarea name="ll6" placeholder="以/作分隔,如:微信/WPS/360浏览器/Photoshop......"></textarea>
		 </li>
		 <li>关于我们的工作，您是否有其他建议（非必填）：<br>
			<textarea name="ll7" placeholder="欢迎提意见"></textarea>
		 </li>
 	<br /><br />
		 <input type="submit" value="提交" />
	 </ol>
    <br /><br />
 	<br /><br />
 	<br /><br />
	
</p>
    <div name="result" id="result">
    </div>
</form>
</body></html>