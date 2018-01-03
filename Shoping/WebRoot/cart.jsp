<%@ page language="java" import="java.util.*,java.sql.*,system.bean.*,system.dao.impl.*,system.db.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html lang="en">
<head>
<base href="<%=basePath%>">
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
				<%HashMap<Integer,Car> cars = (HashMap<Integer,Car>)session.getAttribute("cars");
				if(cars == null){
				 %>
				 <h3>你还没有购物</h3>
				 <%}else{ %>
				 <form action="cartadd.jsp">
				 <table width="800px" border="5" cellpadding="0" cellspacing="0" >
				 <tr>
				 <th>序号</th>
				 <th>图片</th>
				 <th>品牌</th>
				 <th>商品名称</th>
				 <th>单价</th>
				 <th>数量</th>
				 <th>总价</th>
				 </tr>
				 <%
				 int i=1;
				 float sum = 0.0f;
				 for(Integer id: cars.keySet()){
				 Car Car = cars.get(id);
				 
				 float price = Car.getGoods().getG_price();
				 float itemSum = Car.getNumber()*price;
				 sum += itemSum;
				  %>
				  <tr>
				  <td><%=i++%></td>
				  <td><img src="<%=basePath%>images/<%=Car.getGoods().getG_picture()%>" width="60" height="60"></td>
				  <td><%=Car.getGoods().getG_brand()%></td>
				  <td><%=Car.getGoods().getG_detail()%></td>
				  <td><%=Car.getGoods().getG_price()%></td>
				  <td><input name="<%=id%>" value="<%=Car.getNumber()%>"></td>
				  <td>$<%=itemSum%></td>
				  </tr>
				  <%} %>
				  <tr>
				  <td></td>
				  </tr>
				 </table>
				 <p align="right">合计：$<%=sum %></p>
				 <p align="center" class="jixu">
		       <a href="index.jsp">继续购物</a>
		       |<a href="jiezhang.jsp">去收银台结账</a>
		       |<a href="clearcart.jsp">清空购物车</a>
		     </p>
				 </form>
				 <%} %>
			</div>	
	<jsp:include page="footer.jsp"/><!--导入footer.jsp-->
	
</body>
</html>

