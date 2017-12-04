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
					<li><a href="contact.html">服 务</a></li>
				</ul>
			</div>
		</div>
	</nav>
	<!--//////////////////////////////////////////////////-->
	<!--///////////////////HomePage///////////////////////-->
	<!--//////////////////////////////////////////////////-->
				<%
							String id = request.getParameter("id"); 
							if (id != null) {
								GoodsDAOImpl goodsDAOImpl = new GoodsDAOImpl();
								Goods goods = goodsDAOImpl.findGoodsByID(Integer.parseInt(id));
									if (goodsDAOImpl != null) {
							
							%>
    <div id="page-content" class="single-page">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<ul class="breadcrumb">
						<li><a href="index.html">首页</a></li>
						<li><a href="category.html">商品</a></li>
						<li><a href="#"><%=goods.getG_detail() %></a></li>
					</ul>
				</div>
			</div>

			<div class="row">
				<div id="main-content" class="col-md-8">
					<div class="product">
						<div class="col-md-6">
							<div class="image">
								<img src="<%=basePath%>images/<%=goods.getG_picture()%>" />
								<div class="image-more">
									 <ul class="row">
										 <li class="col-lg-3 col-sm-3 col-xs-4">
											<a href="#"><img class="img-responsive" src="<%=basePath%>images/<%=goods.getG_picture()%>"></a>
										</li>
										 <li class="col-lg-3 col-sm-3 col-xs-4">
											<a href="#"><img class="img-responsive" src="<%=basePath%>images/<%=goods.getG_picture()%>"></a>
										</li>
										 <li class="col-lg-3 col-sm-3 col-xs-4">
											<a href="#"><img class="img-responsive" src="<%=basePath%>images/<%=goods.getG_picture()%>"></a>
										</li>
										 <li class="col-lg-3 col-sm-3 col-xs-4">
											<a href="#"><img class="img-responsive" src="<%=basePath%>images/<%=goods.getG_picture()%>"></a>
										</li>
									</ul>
								</div>
							</div>
						</div>
						
						<div class="col-md-6">
							<div class="caption">
								<div class="name"><h3><%=goods.getG_name() %></h3></div>
								<div class="info">
									<ul>
										<li>品牌: <%=goods.getG_brand() %></li>
									    <li>商品名称：<%=goods.getG_detail() %></li>
									</ul>
								</div>
								<div class="price"><%=goods.getG_price()%>元<span><%=goods.getG_cost() %>元</span></div>
								<div class="options">
									<select>
										<option value="" selected>----选择颜色----</option>
										<option value="<%=goods.getG_color() %>"><%=goods.getG_color() %></option>
										<option value="<%=goods.getG_color_o() %>"><%=goods.getG_color_o() %></option>
										<option value="<%=goods.getG_color_t() %>"><%=goods.getG_color_t() %></option>
									</select>
								</div>
								<div class="rating"><span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star-empty"></span></div>
								<div class="well"><label>数量: </label> <input class="form-inline quantity" type="text" value="1"><a href="#" class="btn btn-2 ">添加到购物车</a></div>
								<div class="share well">
									<strong style="margin-right: 13px;">分享至 :</strong>
									<a href="#" class="share-btn" target="_blank">
										<i class="fa fa-twitter"></i>
									</a>
									<a href="#" class="share-btn" target="_blank">
										<i class="fa fa-facebook"></i>
									</a>
									<a href="#" class="share-btn" target="_blank">
										<i class="fa fa-linkedin"></i>
									</a>
								</div>
							</div>
						</div>
						<div class="clear"></div>
					</div>	
					<div class="product-desc">
						<ul class="nav nav-tabs">
							<li class="active"><a href="#description">商品描述</a></li>
							<li><a href="#review">评论</a></li>
						</ul>
						<div class="tab-content">
							<div id="description" class="tab-pane fade in active">
								<h4><%=goods.getG_brand() %> <%=goods.getG_detail() %> 商品介绍</h4>
								<p><%=goods.getG_info() %></p>
								<h4>规格参数</h4>
								<p><%=goods.getG_size() %></p>
							</div>
							<div id="review" class="tab-pane fade">
							  <div class="review-text">
								<p>请告诉我们你对这款商品的宝贵评论，我们会竭诚为您服务。</p>
							  </div>
							  <div class="review-form">
								<h4>请写出评论内容</h4>
								<form name="form1" id="ff" method="post" action="review.php">
									<label>
									<span>输入您的名字:</span>
									<input type="text"  name="name" id="name" required>
									</label>
									<label>
									<span>您的评论信息:</span>
									<textarea name="message" id="message"></textarea>
									</label>
									<div class="text-right">
										<input class="btn btn-default" type="reset" name="Reset" value="取消">
										<input class="btn btn-default" type="submit" name="Submit" value="确定">
									</div>
								</form>
							  </div>
							</div>
						</div>
					</div>
					<%
				}
					else {
			%>
			<h3>商品不存在！</h3>
			<%
				}
			}
			%>
					<div class="product-related">
						<div class="heading"><h2>超级折扣</h2></div>
						<div class="products">
							<div class="col-lg-4 col-md-4 col-xs-12">
								<div class="product">
									<div class="image"><a href="product.html"><img src="images/iphone.png" /></a></div>
									<div class="buttons">
										<a class="btn cart" href="#"><span class="glyphicon glyphicon-shopping-cart"></span></a>
										<a class="btn wishlist" href="#"><span class="glyphicon glyphicon-heart"></span></a>
										<a class="btn compare" href="#"><span class="glyphicon glyphicon-transfer"></span></a>
									</div>
									<div class="caption">
										<div class="name"><h3><a href="product.html">iphone</a></h3></div>
										<div class="price">2322元<span>3148元</span></div>
										<div class="rating"><span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star-empty"></span></div>
									</div>
								</div>
							</div>
							<div class="col-lg-4 col-md-4 col-xs-12">
								<div class="product">
									<div class="image"><a href="product.html"><img src="images/galaxy-s4.jpg" /></a></div>
									<div class="buttons">
										<a class="btn cart" href="#"><span class="glyphicon glyphicon-shopping-cart"></span></a>
										<a class="btn wishlist" href="#"><span class="glyphicon glyphicon-heart"></span></a>
										<a class="btn compare" href="#"><span class="glyphicon glyphicon-transfer"></span></a>
									</div>
									<div class="caption">
										<div class="name"><h3><a href="product.html">Galaxy-s4</a></h3></div>
										<div class="price">3522元<span>4298元</span></div>
										<div class="rating"><span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star-empty"></span><span class="glyphicon glyphicon-star-empty"></span></div>
									</div>
								</div>
							</div>
							<div class="col-lg-4 col-md-4 col-xs-12">
								<div class="product">
									<div class="image"><a href="product.html"><img src="images/galaxy-note.jpg" /></a></div>
									<div class="buttons">
										<a class="btn cart" href="#"><span class="glyphicon glyphicon-shopping-cart"></span></a>
										<a class="btn wishlist" href="#"><span class="glyphicon glyphicon-heart"></span></a>
										<a class="btn compare" href="#"><span class="glyphicon glyphicon-transfer"></span></a>
									</div>
									<div class="caption">
										<div class="name"><h3><a href="product.html">Galaxy-note</a></div>
										<div class="price">2622元<span>3398元</span></div>
										<div class="rating"><span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star-empty"></span><span class="glyphicon glyphicon-star-empty"></span><span class="glyphicon glyphicon-star-empty"></span></div>
									</div>
								</div>
							</div>
						</div>
						<div class="clear"></div>
					</div>
				</div>
				<div id="sidebar" class="col-md-4">
					<div class="widget wid-categories">
						<div class="heading"><h4>热门搜索</h4></div>
						<div class="content">
							<ul>
								<li><a href="#">Iphone</a></li>
								<li><a href="#">三星</a></li>
								<li><a href="#">Oppo</a></li>
								<li><a href="#">华为</a></li>
							</ul>
						</div>
					</div>
					
					<div class="widget wid-brand">
						<div class="heading"><h4>更多商城</h4></div>
						<div class="content">
							<label class="checkbox"><input type="checkbox" name="brand"><a href="#">天猫</a></label>
							<label class="checkbox"><input type="checkbox" name="brand"><a href="#">京东</a></label>
							<label class="checkbox"><input type="checkbox" name="brand"><a href="#">魅族</a></label>
							<label class="checkbox"><input type="checkbox" name="brand"><a href="#">华为</a></label>
							<label class="checkbox"><input type="checkbox" name="brand"><a href="#">OPPO</a></label>
							<label class="checkbox"><input type="checkbox" name="brand"><a href="#">苹果</a></label>
							<label class="checkbox"><input type="checkbox" name="brand"><a href="#">三星</a></label>	
						</div>
					</div>
                    <div class="widget wid-type">
						<div class="heading"><h4>广告位招租</h4></div>
						<div class="content">
                        <h5>联系我们：+86-15151554</h5>
                        <img src="images/sub-banner1.png">
                        
							<!--<select>
								<option value="EL" selected>电子器件</option>
								<option value="MT">遥控器</option>
								<option value="WC">摄像头</option>
								<option value="TA">原型机</option>
								<option value="AP">音频控件</option>
							</select>-->
						</div>
					</div>
					<div class="widget wid-product">
						<div class="heading"><h4>最新减价信息</h4></div>
						<div class="content">
							<div class="product">
								<a href="#"><img src="images/galaxy-note.jpg" /></a>
								<div class="wrapper">
									<h5><a href="#">Samsung Galaxy</a></h5>
									<div class="price">-322元</div>
									<div class="rating"><span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star-empty"></span></div>
								</div>
							</div>
							<div class="product">
								<a href="#"><img src="images/galaxy-s4.jpg" /></a>
								<div class="wrapper">
									<h5><a href="#">Samsung Galaxy-S4</a></h5>
									<div class="price">-322元</div>
									<div class="rating"><span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star-empty"></span></div>
								</div>
							</div>
							<div class="product">
								<a href="#"><img src="images/Z1.png" /></a>
								<div class="wrapper">
									<h5><a href="#">魅族-Z1</a></h5>
									<div class="price">-122元</div>
									<div class="rating"><span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star-empty"></span></div>
								</div>
							</div>
						</div>
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
	
	<!-- IMG-thumb -->
	<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
      <div class="modal-dialog">
        <div class="modal-content">         
          <div class="modal-body">                
          </div>
        </div><!-- /.modal-content -->
      </div><!-- /.modal-dialog -->
    </div><!-- /.modal -->
	
	<script>
	$(document).ready(function(){
		$(".nav-tabs a").click(function(){
			$(this).tab('show');
		});
		$('.nav-tabs a').on('shown.bs.tab', function(event){
			var x = $(event.target).text();         // active tab
			var y = $(event.relatedTarget).text();  // previous tab
			$(".act span").text(x);
			$(".prev span").text(y);
		});
	});
	</script>
</body>
</html>