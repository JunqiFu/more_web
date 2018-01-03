<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="system.bean.*" %>
<%@ page import="system.dao.impl.*,system.db.*" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'header.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">

    <title>MARS</title>
    <link rel="stylesheet" href="css/bootstrap.min.css"  type="text/css">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="font-awesome/css/font-awesome.min.css"  type="text/css">
    <link rel="stylesheet" href="fonts/font-slider.css" type="text/css">
	<script src="js/jquery-2.1.1.js"></script>	 
    <script src="js/bootstrap.min.js"></script>

  </head>
  
  <body>
<!--Top-->
	<nav id="top">
		<div class="container">
			<div class="row">
				<div class="col-xs-6">
					<select class="language">
						<option value="English" selected>简体中文</option>
						<option value="France">美式英语</option>
						<option value="Germany">德语</option>
					</select>
					<select class="currency">
						<option value="USD" selected>人名币</option>
						<option value="EUR">美元</option>
						<option value="DDD">欧元</option>
					</select>
				</div>
				<div class="col-xs-6">
					<ul class="top-link">
						<li><a href="account.jsp"><span class="glyphicon glyphicon-user"></span>我的账户</a></li>
						<li><a href="contact.jsp"><span class="glyphicon glyphicon-envelope"></span>联系</a></li>
					</ul>
				</div>
			</div>
		</div>
	</nav>
	
	<!--Header-->
	<header class="container">
		<div class="row">
			<div class="col-md-4">
				<div id="logo"><img src="images/logo(1).png" /></div>
			</div>
			
<!--这里是 搜索按钮里面的内容*****************************************-->
			<div class="col-md-4">
				<form class="form-search" action="showFindGoodsByName.jsp">  
					<input type="text" class="input-medium search-query" name="search">  
					<button type="submit" class="btn"><span class="glyphicon glyphicon-search"></span></button>  
				</form>
			</div>
<!--这里是 搜索按钮里面的内容*****************************************-->
			
			
			
			<div class="col-md-4">
				<div id="cart"><a class="btn btn-1" href="cart.jsp">
<!-- 显示购物车数量 -->
				<span class="glyphicon glyphicon-shopping-cart"></span>购物车 </div>
			</div>
		</div>
	</header>
	<!--Navigation-->
    <nav id="menu" class="navbar">
		<div class="container">
			<div class="navbar-header"><span id="heading" class="visible-xs">Categories</span>
			  <button type="button" class="btn btn-navbar navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse"><i class="fa fa-bars"></i></button>
			</div>
			<div class="collapse navbar-collapse navbar-ex1-collapse">
				<ul class="nav navbar-nav">
					<li><a href="index.jsp"> 首 页</a></li>
					<li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown">商 城</a>
						<div class="dropdown-menu">
							<div class="dropdown-inner">
								<ul class="list-unstyled">
									<li><a href="category.jsp">线上商城</a></li>
									<li><a href="#">实体店</a></li>
								</ul>
							</div>
						</div>
					</li>
					<li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown"> 体 验 </a>
						<div class="dropdown-menu">
							<div class="dropdown-inner">
								<ul class="list-unstyled">
									<li><a href="showFindGoodsByName.jsp?search=苹果">苹果</a></li>
									<li><a href="showFindGoodsByName.jsp?search=华为">华为</a></li>
									<li><a href="showFindGoodsByName.jsp?search=三星">三星</a></li>
									<li><a href="showFindGoodsByName.jsp?search=魅族">魅族</a></li>
									<li><a href="showFindGoodsByName.jsp?search=诺基亚">诺基亚</a></li>
								</ul>
							</div> 
						</div>
					</li>
					<li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown"> 产 品</a>
						<div class="dropdown-menu" style="margin-left: -203.625px;">
							<div class="dropdown-inner">
								<ul class="list-unstyled">
									<li><a href="javascript:document:search_form.submit();" onclick="document.getElementById('searchTxt').value=this.innerHTML;">苹果</a></li>
									<li><a href="showFindGoodsByName.jsp?search=三星">三星</a></li>
									<li><a href="showFindGoodsByName.jsp?search=诺基亚">诺基亚</a></li>
									<li><a href="showFindGoodsByName.jsp?search=联想">联想</a></li>
									<li><a href="showFindGoodsByName.jsp?search=谷歌">谷歌</a></li>
								</ul>
								<ul class="list-unstyled">
									<li><a href="showFindGoodsByName.jsp?search=Nexus">Nexus</a></li>
									<li><a href="showFindGoodsByName.jsp?search=Dell">Dell</a></li>
									<li><a href="showFindGoodsByName.jsp?search=Oppo">Oppo</a></li>
									<li><a href="showFindGoodsByName.jsp?search=黑莓">黑莓</a></li>
									<li><a href="showFindGoodsByName.jsp?search=HTC">HTC</a></li>
								</ul>
								<ul class="list-unstyled">
									<li><a href="showFindGoodsByName.jsp?search=LG">LG</a></li>
									<li><a href="showFindGoodsByName.jsp?search=Q-Mobiles">Q-Mobiles</a></li>
									<li><a href="showFindGoodsByName.jsp?search=索尼">索尼</a></li>
									<li><a href="showFindGoodsByName.jsp?search=永光">永光</a></li>
									<li><a href="showFindGoodsByName.jsp?search=爱立信">爱立信</a></li>
								</ul>
							</div>
						</div>
					</li>
					<li><a href="contact.jsp">服 务</a></li>
				</ul>
			</div>
		</div>
	</nav>
  </body>
</html>
