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
	
    <title>Mobile Shop</title>
	
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
				<div id="logo"><img src="images/logo (1).png" /></div>
			</div>
			<div class="col-md-4">
				<form class="form-search">  
					<input type="text" class="input-medium search-query">  
					<button type="submit" class="btn"><span class="glyphicon glyphicon-search"></span></button>  
				</form>
			</div>
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
	<!--//////////////////////////////////////////////////-->
	<!--///////////////////Cart Page//////////////////////-->
	<!--//////////////////////////////////////////////////-->
	<div id="page-content" class="single-page">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<ul class="breadcrumb">
						<li><a href="index.html">首 页</a></li>
						<li><a href="cart.html">购物车</a></li>
					</ul>
				</div>
			</div>
			<div class="row">
				<div class="product well">
					<div class="col-md-3">
						<div class="image">
							<img src="images/Iphone X.jpg" />
						</div>
					</div>
					<div class="col-md-9">
						<div class="caption">
							<div class="name"><h3><a href="product.html">iphone X</a></h3></div>
							<div class="info">	
								<ul>
									<li>品牌: Apple</li>
									<li>商品名称：iphone X</li>
								</ul>
							</div>
							<div class="price">4999元<span>5388元</span></div>
							<label>数量: </label> <input class="form-inline quantity" type="text" value="1"><a href="#" class="btn btn-2 ">购买</a>
							<hr>
							<a href="#" class="btn btn-default pull-right">删除商品信息</a>
						</div>
					</div>
					<div class="clear"></div>
				</div>	
			</div>
			<div class="row">
				<div class="product well">
					<div class="col-md-3">
						<div class="image">
							<img src="images/OPPO R11.jpg" />
						</div>
					</div>
					<div class="col-md-9">
						<div class="caption">
							<div class="name"><h3><a href="product.html">OPPO R11</a></h3></div>
							<div class="info">
								<ul>
									<li>品牌: OPPO</li>
									<li>商品名称: OPPO R11</li>
								</ul>
							</div>
							<div class="price">4899元<span>5321元</span></div>
							<label>数量: </label> <input class="form-inline quantity" type="text" value="1"><a href="#" class="btn btn-2 ">购买</a>
							<hr>
							<a href="#" class="btn btn-default pull-right">删除商品信息</a>
						</div>
					</div>
					<div class="clear"></div>
				</div>	
			</div>
			<div class="row">
				<div class="col-md-4 col-md-offset-8 ">
					<center><a href="category.html" class="btn btn-1">继续购物</a></center>
				</div>
			</div>
			<div class="row">
				<div class="pricedetails">
					<div class="col-md-4 col-md-offset-8">
						<table>
							<h6>价格细节</h6>
							<tr>
								<td>总价</td>
								<td>14350.00</td>
							</tr>
							<tr>
								<td>折扣</td>
								<td>-----</td>
							</tr>
							<tr>
								<td>运费</td>
								<td>100.00</td>
							</tr>
							<tr style="border-top: 1px solid #333">
								<td><h5>总计</h5></td>
								<td>15350.00</td>
							</tr>
						</table>
						<center><a href="#" class="btn btn-1">查看</a></center>
					</div>
				</div>
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

