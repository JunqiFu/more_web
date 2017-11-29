<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ page import="system.bean.Goods" %>
<%@ page import="system.dao.impl.GoodsDAOImpl" %>
<%
			request.setCharacterEncoding("UTF-8");
			String searchResult = request.getParameter("search");
		
		 %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta name="description" content="">
    <meta name="author" content="">
	
    <title>Mars Mobile Shop</title>
	
    <!-- Bootstrap Core CSS -->
    <link rel="stylesheet" href="css/bootstrap.min.css"  type="text/css">
	
	<!-- Custom CSS -->
    <link rel="stylesheet" href="css/style.css">
	
	
	<!-- Custom Fonts -->
    <link rel="stylesheet" href="font-awesome/css/font-awesome.min.css"  type="text/css">
    <link rel="stylesheet" href="fonts/font-slider.css" type="text/css">
	
	<!-- jQuery and Modernizr-->
	<script src="js/jquery-2.1.1.js"></script>
	
	<!-- Core JavaScript Files -->  	 
    <script src="js/bootstrap.min.js"></script>
	
	<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="js/html5shiv.js"></script>
        <script src="js/respond.min.js"></script>
    <![endif]-->
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
						<li><a href="account.html"><span class="glyphicon glyphicon-user"></span>我的账户</a></li>
						<li><a href="contact.html"><span class="glyphicon glyphicon-envelope"></span>联系</a></li>
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
				<form class="form-search">  
					<input type="text" class="input-medium search-query">  
					<button type="submit" class="btn"><span class="glyphicon glyphicon-search"></span></button>  
				</form>
			</div>
<!--这里是 搜索按钮里面的内容*****************************************-->
			
			
			
			<div class="col-md-4">
				<div id="cart"><a class="btn btn-1" href="cart.html"><span class="glyphicon glyphicon-shopping-cart"></span>购物车 : 0 数量</a></div>
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
					<li><a href="index.html"> 首 页</a></li>
					<li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown">商 城</a>
						<div class="dropdown-menu">
							<div class="dropdown-inner">
								<ul class="list-unstyled">
									<li><a href="category.html">线上商城</a></li>
									<li><a href="#">实体店</a></li>
								</ul>
							</div>
						</div>
					</li>
					<li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown"> 体 验 </a>
						<div class="dropdown-menu">
							<div class="dropdown-inner">
								<ul class="list-unstyled">
									<li><a href="category.html">苹果</a></li>
									<li><a href="category.html">华为</a></li>
									<li><a href="category.html">三星</a></li>
									<li><a href="category.html">魅族</a></li>
									<li><a href="category.html">诺基亚</a></li>
								</ul>
							</div> 
						</div>
					</li>
					<li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown"> 产 品</a>
						<div class="dropdown-menu" style="margin-left: -203.625px;">
							<div class="dropdown-inner">
								<ul class="list-unstyled">
									<li><a href="account_find.html">苹果</a></li>
									<li><a href="account_find.html">三星</a></li>
									<li><a href="account_find.html">诺基亚</a></li>
									<li><a href="account_find.html">联想</a></li>
									<li><a href="account_find.html">谷歌</a></li>
								</ul>
								<ul class="list-unstyled">
									<li><a href="account_find.html">Nexus</a></li>
									<li><a href="account_find.html">Dell</a></li>
									<li><a href="account_find.html">Oppo</a></li>
									<li><a href="account_find.html">黑莓</a></li>
									<li><a href="account_find.html">HTC</a></li>
								</ul>
								<ul class="list-unstyled">
									<li><a href="account_find.html">LG</a></li>
									<li><a href="account_find.html">Q-Mobiles</a></li>
									<li><a href="account_find.html">索尼</a></li>
									<li><a href="account_find.html">永光</a></li>
									<li><a href="account_find.html">爱立信</a></li>
								</ul>
							</div>
						</div>
					</li>
					<li><a href="contact.html">服 务</a></li>
				</ul>
			</div>
		</div>
	</nav>
		<div class="container">
		
			<div class="row">
				<h6>根据您搜索的 <i style="color:red;font-size:40px;"><%=searchResult%></i>&nbsp;下面为你展示搜索结果</h6>
				<div class="col-lg-12">
					<div class="heading"><h2>搜索结果</h2></div>
					<div class="products">
						<%
							
							GoodsDAOImpl goodsDAOImpl = new GoodsDAOImpl();
							List<Goods> searchResultByName = goodsDAOImpl.searchGoods(searchResult);
							for (Goods goods : searchResultByName) {
						 %>
						<div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
							<div class="product">
								<div class="image"><a href="product.html"><img src="images/<%=goods.getG_picture()%>"/></a></div>
								<div class="buttons">
									<a class="btn cart" href="#"><span class="glyphicon glyphicon-shopping-cart"></span></a>
									<a class="btn wishlist" href="#"><span class="glyphicon glyphicon-heart"></span></a>
									<a class="btn compare" href="#"><span class="glyphicon glyphicon-transfer"></span></a>
								</div>
								<div class="caption">
									<div class="name"><h3><a href="product.html"><%=goods.getG_detail()%></a></h3></div>
									<div class="price"><%=goods.getG_cost()%><span><%=goods.getG_price()%></span></div>
									<div class="rating"><span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star-empty"></span></div>
								</div>
							</div>
						</div>
					<%
						}
					%>
					</div>
				</div>
			</div>
	<footer>
		<div class="container">
			<div class="wrap-footer">
				<div class="row">
					<div class="col-md-3 col-footer footer-1">
						<img src="images/logofooter.png" />
						<p>Mars Mobile Shop是一个网络手机商城服务平台，在这里你可以搜索到你需要的任何电子产品，我们将竭诚为您服务。</p>
					</div>
					<div class="col-md-3 col-footer footer-2">
						<div class="heading"><h4>客户服务</h4></div>
						<ul>
							<li><a href="#">关于我们</a></li>
							<li><a href="#">配送信息</a></li>
							<li><a href="#">隐私政策</a></li>
							<li><a href="#">条款和说明</a></li>
							<li><a href="#">联系我们</a></li>
						</ul>
					</div>
					<div class="col-md-3 col-footer footer-3">
						<div class="heading"><h4>我的账户</h4></div>
						<ul>
							<li><a href="#">账户</a></li>
							<li><a href="#">品牌</a></li>
							<li><a href="#">礼券</a></li>
							<li><a href="#">特价</a></li>
							<li><a href="#">网站地图</a></li>
						</ul>
					</div>
					<div class="col-md-3 col-footer footer-4">
						<div class="heading"><h4>联系我们</h4></div>
						<ul>
							<li><span class="glyphicon glyphicon-home"></span>中国 成都 高新</li>
							<li><span class="glyphicon glyphicon-earphone"></span>+86 456587941</li>
							<li><span class="glyphicon glyphicon-envelope"></span>Marsshop@sian.com</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
		<div class="copyright">
			<div class="container">
				<div class="row">
					<div class="col-md-6">
						版权所有 &copy; 2017 Mars Mobile Shop中国商务公司.       <a target="_blank" href="#">联系我们</a>
					</div>
					<div class="col-md-6">
						<div class="pull-right">
							<ul>
								<li><img src="images/visa-curved-32px.png" /></li>
								<li><img src="images/paypal-curved-32px.png" /></li>
								<li><img src="images/discover-curved-32px.png" /></li>
								<li><img src="images/maestro-curved-32px.png" /></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</footer>
</body>
</html>