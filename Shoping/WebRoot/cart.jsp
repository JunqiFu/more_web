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

	<jsp:include page="header.jsp"/><!--导入header.jsp-->
		
		
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
							<img src="images/IphoneX(1)20171129.jpg"/>
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
							<img src="images/OPPOR11(1)20171129.jpg" />
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
	
	<jsp:include page="footer.jsp"/><!--导入footer.jsp-->
	
</body>
</html>

