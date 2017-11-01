<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
<head>
	<title>注册</title>
	<link rel="stylesheet" type="text/css" href="css/register.css">
	<!-- 最新版本的 Bootstrap 核心 CSS 文件 -->
	<link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

	<!-- 可选的 Bootstrap 主题文件（一般不用引入） -->
	<link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

	<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
	<script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
</head>
<body style="background: url(img/login_bgx.gif);">
<div class="img"><img src="img/logo.png"></div>
<div class="class">
<div class="from">
	<form  action="form_action.asp" method="get">
		<div class="container-fluid">
	<div class="row-fluid">
		<div class="span12">
			<form class="form-horizontal">
				<div class="control-group">
					 <label class="control-label" for="inputEmail">用户名:</label>
					<div class="controls">
						<input id="inputEmail" type="text" />
					</div>
				</div>
				<br>
				<div class="control-group">
					 <label class="control-label" for="inputPassword">密码:</label>
					<div class="controls">
						<input id="Password" type="password" />
					</div>
				</div>
				<br>
				<div class="control-group">
					 <label class="control-label" for="inputPassword">确认密码:</label>
					<div class="controls">
						<input id="Password1" type="password" />
					</div>
				</div>
				<br>
				<div class="control-group">
					 <label class="control-label" for="inputPassword">手机号码:</label>
					<div class="controls">
						<input id="phone" type="type" />
					</div>
				</div>
				<br>
				<div class="control-group">
					 <label class="control-label" for="inputPassword">邮箱号码:</label>
					<div class="controls">
						<input id="phone" type="type" />
					</div>
				</div>
				<p></p>
				<div class="control-group">

					<div class="controls">
						<button type="reset" class="btn">重置</button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<button type="submit" class="btn">注册</button>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						
					</div>
					

				</div>
			</form>
		</div>
	</div>
</div>
	</form>
</div>
</div>
</body>
</html>