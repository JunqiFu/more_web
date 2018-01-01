<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<%@ page import="system.bean.Goods" %>
<%@ page import="system.dao.impl.GoodsDAOImpl" %>
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
	
</head>

<body>

	<%
  		if(session.getAttribute("UserinfoHiht")==null){
  			
  		}else if(session.getAttribute("UserinfoHiht").equals("登录成功")){
  		%>
  		 <script language="javascript"> //JavaScript脚本标注
  			alert("登录成功");
		 </script>
  		<%
  		session.removeAttribute("UserinfoHiht");
  		}	
	%>

   <jsp:include page="header.jsp"/><!--导入header.jsp-->
	
    <div class="copyrights">Collect from <a href="#" ></a></div>
	<div id="page-content" class="home-page">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<!-- Carousel -->
					<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
						<!-- Indicators -->
						<ol class="carousel-indicators hidden-xs">
							<li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
							<li data-target="#carousel-example-generic" data-slide-to="1"></li>
							<li data-target="#carousel-example-generic" data-slide-to="2"></li>
						</ol>
						<!-- Wrapper for slides -->
						<div class="carousel-inner">
							<div class="item active">
								<img src="images/main-banner1-1903x600.jpg" alt="First slide">
								<!-- Static Header -->
								<div class="header-text hidden-xs">
									<div class="col-md-12 text-center">
									</div>
								</div><!-- /header-text -->
							</div>
							<div class="item">
								<img src="images/main-banner2-1903x600.jpg" alt="Second slide">
								<!-- Static Header -->
								<div class="header-text hidden-xs">
									<div class="col-md-12 text-center">
									</div>
								</div><!-- /header-text -->
							</div>
							<div class="item">
								<img src="images/main-banner3-1903x600.jpg" alt="Third slide">
								<!-- Static Header -->
								<div class="header-text hidden-xs">
									<div class="col-md-12 text-center">
									</div>
								</div><!-- /header-text -->
							</div>
						</div>
						<!-- Controls -->
						<a class="left carousel-control" href="#carousel-example-generic" data-slide="prev">
							<span class="glyphicon glyphicon-chevron-left"></span>
						</a>
						<a class="right carousel-control" href="#carousel-example-generic" data-slide="next">
							<span class="glyphicon glyphicon-chevron-right"></span>
						</a>
					</div><!-- /carousel -->
				</div>
			</div>
			<div class="row">
				<div class="banner">
					<div class="col-sm-4">
						<img src="images/sub-banner1.png" />
					</div>
					<div class="col-sm-4">
						<img src="images/sub-banner2.png" />
					</div>
					<div class="col-sm-4">
						<img src="images/sub-banner3.png" />
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-12">
					<div class="heading"><h2>大牌专享</h2></div>
					<div class="products">
						<%
							GoodsDAOImpl goodsDAOImpl = new GoodsDAOImpl();
							List<Goods> listBigGoods = goodsDAOImpl.getBigGoods();
							for (Goods goods : listBigGoods) {
						 %>
							<div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
							<div class="product">
								<div class="image"><a href="goodsDetail.jsp?id=<%=goods.getG_id()%>"><img src="<%=basePath%>images/<%=goods.getG_picture()%>"/></a></div>
								<div class="buttons">
									<a class="btn cart" href="#"><span class="glyphicon glyphicon-shopping-cart"></span></a>
									<a class="btn wishlist" href="#"><span class="glyphicon glyphicon-heart"></span></a>
									<a class="btn compare" href="#"><span class="glyphicon glyphicon-transfer"></span></a>
								</div>
								<div class="caption">
									<div class="name"><h3><a href="goodsDetail.jsp?id=<%=goods.getG_id()%>"><%=goods.getG_detail()%></a></h3></div>
									<div class="price"><%=goods.getG_price()%><span><%=goods.getG_cost()%></span></div>
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
			<div class="row">
				<div class="banner">
					<div class="col-sm-6">
						<img src="images/sub-banner4.jpg" />
					</div>
					<div class="col-sm-6">
						<img src="images/sub-banner5.png" />
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-12">
					<div class="heading"><h2>热门推荐</h2></div>
					<div class="products">
						<%
							
							List<Goods> listFireGoods = goodsDAOImpl.getFireGoods();
							for (Goods good : listFireGoods) {
						 %>
						<div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
							<div class="product">
								<div class="image"><a href="goodsDetail.jsp?id=<%=good.getG_id()%>"><img src="<%=basePath%>images/<%=good.getG_picture()%>"/></a></div>
								<div class="buttons">
									<a class="btn cart" href="#"><span class="glyphicon glyphicon-shopping-cart"></span></a>
									<a class="btn wishlist" href="#"><span class="glyphicon glyphicon-heart"></span></a>
									<a class="btn compare" href="#"><span class="glyphicon glyphicon-transfer"></span></a>
								</div>
								<div class="caption">
									<div class="name"><h3><a href="goodsDetail.jsp?id=<%=good.getG_id()%>"><%=good.getG_detail()%></a></h3></div>
									<div class="price"><%=good.getG_price()%><span><%=good.getG_cost()%></span></div>
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
		</div>
	</div>
	
	   <jsp:include page="footer.jsp"/><!--导入footer.jsp-->
	   
</body>

</html>