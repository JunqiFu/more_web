<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ page import="system.bean.Address" %>
<%@ page import="system.dao.impl.AddressDAOImpl"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">  
    <title>个人信息管理</title>
    <meta name="description" content="">
    <meta name="author" content="templatemo">
    <link href="info/css/font-awesome.min.css" rel="stylesheet">
    <link href="info/css/bootstrap.min.css" rel="stylesheet">
    <link href="info/css/templatemo-style.css" rel="stylesheet">
    
  </head>
  <body>  
  <%
     
     AddressDAOImpl addressDAOImpl = new AddressDAOImpl();
     String username="梁康林";
     int count = addressDAOImpl.getAddrCount(username);
   %>
    <!-- Left column -->
    <div class="templatemo-flex-row">
      <div class="templatemo-sidebar">
        <header class="templatemo-site-header">
          <div class="square"></div>
          <h1>个人信息管理</h1>
        </header>
        <div class="profile-photo-container">
          <img src="info/images/profile-photo.jpg" alt="Profile Photo" class="img-responsive">  
          <div class="profile-photo-overlay"></div>
        </div>      

        <div class="mobile-menu-icon">
            <i class="fa fa-bars"></i>
        </div>
        <nav class="templatemo-left-nav">          
          <ul>

            <li><a href="manageUserInfo.jsp"><i class="fa fa-bar-chart fa-fw"></i>地址管理</a></li>
            <li><a href="data-visualization.html"><i class="fa fa-database fa-fw"></i>订单管理</a></li>
            <li><a href="maps.html"><i class="fa fa-map-marker fa-fw"></i>购物车管理</a></li>
            <li><a href="manage-users.html"><i class="fa fa-users fa-fw"></i>修改密码</a></li>
            <li><a href="preferences.html"><i class="fa fa-sliders fa-fw"></i>退出登录</a></li>
            <li><a href="login.html"><i class="fa fa-eject fa-fw"></i>商城首页</a></li>
          </ul>  
        </nav>
      </div>
      <!-- Main content -->
      <div class="templatemo-content col-1 light-gray-bg">
	<!-- ********************************************************* -->
	<div class="row-fluid" >
		<div class="span12">
			<blockquote>
				<p>修改邮寄地址的时候，请注意： </p>
				<p>1、 收货人姓名和详细地址：需真实有效  </p>
				<p>2、 联系方式：建议填写手机，以便及时联系  </p>
				<p>3、 详细地址：一定要填写正确并且详细，所在地区的省市县，如果找不到所在地区，请选择所在地区的上一级县市 
				<p><i style="color:red;">注:每个人可以最多可以添加五条地址信息</i>
				</p> <small>关键词 <cite>修改收货地址</cite></small>
			</blockquote>
			<div class="span12">
				<blockquote>
				<h1>修改收货地址</h1>
				</blockquote>
			</div>
		</div>
		<div class="col-md-6" style="magin:0 auto;">
					<form name="form" id="ff2" method="post" action="addAddrInfo_deal.jsp">
						<div class="form-group">
							<input type="text" class="form-control" name="username" id="firstname"  readonly = "readonly" value="<%=username %>" >
						</div>
						<div class="form-group">
							<input type="text" class="form-control" placeholder="收货人姓名 :" name="name" id="lastname" required>
						</div>
						<div class="form-group">
							<input type="text" class="form-control" placeholder="邮编号码 :" name="mail" id="lastname" required>
						</div>
						<div class="form-group">
							<input type="tel" class="form-control" placeholder="详情地址 :" name="address" id="email" required>
						</div>
						<div class="form-group">
							<input type="tel" class="form-control" placeholder="电话号码 :" name="phone" id="phone" required>
						<button type="submit" class="btn btn-1">创建</button>
					</form>
				</div>
			</div>
	<!-- ********************************************************* -->
			<br><br><br><br><br><br><br><br><br>
			<br><br><br><br><br><br><br><br><br>
			<br><br><br>
          <footer class="text-right">
            <p>版权所有 &copy; 2017 Mars Mobile Shop中国商务公司</p>

          </footer>         
		</div>
      </div>
    </div>    
    
    <!-- JS -->
    <script src="info/js/jquery-1.11.2.min.js"></script>      <!-- jQuery -->
    <script src="info/js/jquery-migrate-1.2.1.min.js"></script> <!--  jQuery Migrate Plugin -->
    <script>

      google.load('visualization', '1.0', {'packages':['corechart']});
      google.setOnLoadCallback(drawChart);
      function drawChart() {
          var data = new google.visualization.DataTable();
          data.addColumn('string', 'Topping');
          data.addColumn('number', 'Slices');
          data.addRows([
            ['Mushrooms', 3],
            ['Onions', 1],
            ['Olives', 1],
            ['Zucchini', 1],
            ['Pepperoni', 2]
          ]);
          var options = {'title':'How Much Pizza I Ate Last Night'};
          var pieChart = new google.visualization.PieChart(document.getElementById('pie_chart_div'));
          pieChart.draw(data, options);
          var barChart = new google.visualization.BarChart(document.getElementById('bar_chart_div'));
          barChart.draw(data, options);
      }

      $(document).ready(function(){
        if($.browser.mozilla) {
          $(window).bind('resize', function(e)
          {
            if (window.RT) clearTimeout(window.RT);
            window.RT = setTimeout(function()
            {
              this.location.reload(false);
            }, 200);
          });      
        } else {
          $(window).resize(function(){
            drawChart();
          });  
        }   
      });
      
    </script>
    <script type="text/javascript" src="info/js/templatemo-script.js"></script>      <!-- Templatemo Script -->

  </body>
</html>
