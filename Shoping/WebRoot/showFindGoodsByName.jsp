<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ page import="system.bean.Goods" %>
<%@ page import="system.dao.impl.GoodsDAOImpl" %>
<%
			//request.setCharacterEncoding("UTF-8");
			String search = request.getParameter("search");
			String searchResult=new String(search.getBytes("ISO-8859-1"),"UTF-8");
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
				<form class="form-search" action="showFindGoodsByName.jsp">  
					<input type="text" class="input-medium search-query" name="search">  
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
								<div class="image"><a href="goodsDetail.jsp?id=<%=goods.getG_id() %>"><img src="images/<%=goods.getG_picture()%>"/></a></div>
								<div class="buttons">
									<a class="btn cart" href="#"><span class="glyphicon glyphicon-shopping-cart"></span></a>
									<a class="btn wishlist" href="#"><span class="glyphicon glyphicon-heart"></span></a>
									<a class="btn compare" href="#"><span class="glyphicon glyphicon-transfer"></span></a>
								</div>
								<div class="caption">
									<div class="name"><h3><a href="goodsDetail.jsp?id=<%=goods.getG_id() %>"><%=goods.getG_detail()%></a></h3></div>
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
			
       <jsp:include page="footer.jsp"/><!--导入footer.jsp-->
</body>
</html>