<html>
	<head>
		<title>人员登记</title>
		<meta charset="utf-8" />
		<%@Language="vbscript" Codepage="65001"%>
	</head>
	<body onselectstart="return false">
		<form method="post" action="download_sql.asp">
			类别：<select name="lb">
				<option value="文档">文档</option>
				<option value="图片">图片</option>
				<option value="视频">视频</option>
				<option value="通用">通用</option>
				<option value="其他">其他</option>
			</select><br />
			文件名：<input type="text" name="wjm"  /><br />
			类别：<select name="ls">
				<option value="0">京师</option>
				<option value="1">京师+沪师</option>
				<option value="2">沪师</option>
			</select><br />
			<input type="submit" value="上传"/>
		</form>
	</body>
</html>