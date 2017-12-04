<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta name="description" content="">
    <meta name="author" content="">
    <title>MARS</title>
    <link rel="stylesheet" href="css/bootstrap.min.css"  type="text/css">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="font-awesome/css/font-awesome.min.css"  type="text/css">
    <link rel="stylesheet" href="fonts/font-slider.css" type="text/css">
	<script src="js/jquery-2.1.1.js"></script>	 
    <script src="js/bootstrap.min.js"></script>
</head>

<body>

   <jsp:include page="header.jsp"/><!--导入header.jsp-->

	<div id="page-content" class="single-page">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<ul class="breadcrumb">
						<li><a href="index.html">主页</a></li>
						<li><a href="account.html">个人账户</a></li>
					</ul>
				</div>
			</div>
			<div class="row">
				<div class="col-md-6">
					<div class="heading"><h2>登陆</h2></div>
					<form name="form1" id="ff1" method="post" action="account_deal.jsp">
						<div class="form-group">
							<input type="text" class="form-control" placeholder="用户名 :" name="username" id="username" required>
						</div>
						<div class="form-group">
							<input type="password" class="form-control" placeholder="密码 :" name="password" id="password" required>
						</div>
						<button type="submit" class="btn btn-1" name="login" id="login">登陆</button>
						<a href="#">是否忘记密码?</a>
					    
						<br><br>
						<font style="font-size: 30px;color:red;">	
						<%if(session.getAttribute("error")!=null){
						out.print( session.getAttribute("error")); 
   								session.setAttribute("error","");
   								}%></font>
					</form>
				</div>
				<div class="col-md-6">
					<div class="heading"><h2>新用户？请创建一个账户。</h2></div>
					<form name="form2" id="ff2" method="post" action="register_deal.jsp">
						<div class="form-group">
							<input type="text" class="form-control" placeholder="用户名 :" name="username" id="username" required>
						</div>
						<div class="form-group">
							<input type="tel" class="form-control" placeholder="姓名:" name="name" id="name" required>
						</div>
						<div class="form-group">
							<input type="tel" class="form-control" placeholder="手机 :" name="phone" id="phone" required>
						</div>
						<div class="form-group">
							<input type="email" class="form-control" placeholder="邮箱地址:" name="email" id="email" required>
						</div>
						<div class="form-group">
							<input name="sex" id="sex" type="radio"  value="m"> 男 <input name="sex" id="sex" type="radio"  value="f"> 女
						</div>
						<div class="form-group">
							<input type="password" class="form-control" placeholder="密码 :" name="pwd" id="pwd" required>
						</div>
						<div class="form-group">
							<input type="password" class="form-control" placeholder="重新输入密码 :" name="pwd1" id="pwd1" required>
						</div>
						<div class="form-group">
							<input name="agree" id="agree" type="checkbox" > 我遵守网站的账户保护协议。
						</div>
						<button type="submit" class="btn btn-1">创建</button>
					</form>
						<font style="font-size: 30px;color:red;">	
						<%if(session.getAttribute("error_pwd")!=null){
						out.print( session.getAttribute("error_pwd")); 
   								session.setAttribute("error_pwd","");
   								}%></font>		</div>
			</div>
		</div>
	</div>
	
     <jsp:include page="footer.jsp"/><!--导入footer.jsp-->
     
</body>
</html>