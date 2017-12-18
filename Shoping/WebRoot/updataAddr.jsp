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
     String address_id = request.getParameter("id");
     int id=Integer.parseInt(address_id);
     Address address =addressDAOImpl.getAddrInfoById(id);
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
				</p> <small>关键词 <cite>修改收货地址</cite></small>
			</blockquote>
			<div class="span12">
				<blockquote>
				<h1>修改收货地址</h1>
				</blockquote>
			</div>
		</div>
		<div class="col-md-6" style="magin:0 auto;">
					<form name="form" id="ff2" method="post" action="updataAddr_deal.jsp">
						<div class="form-group">
							<p><h3>用户名:</h3></p>
							<input type="text" class="form-control" name="a_id" id="firstname"  readonly = "readonly" value="<%=id %>" style="display:none" >
							<input type="text" class="form-control" name="a_username" id="firstname"  readonly = "readonly" value="<%=address.getU_username() %>" >
						</div>
						<div class="form-group">
							<p><h3>收货人姓名:</h3> </p>
							<input type="text" class="form-control" placeholder="原收货人姓名 :<%=address.getA_name() %>" name="a_name" id="lastname" required>
						</div>
						<div class="form-group">
						    <p><h3>邮编号码:</h3> </p>
							<input type="text" class="form-control" placeholder="原邮编号码 :<%=address.getA_mail() %>" name="a_mail" id="lastname" required>
						</div>
						<div class="form-group">
							<p><h3>详情地址:</h3> </p>
							<input type="tel" class="form-control" placeholder="原详情地址 :<%=address.getA_address() %>" name="a_address" id="email" required>
						</div>
						<div class="form-group">
							<p><h3>电话号码:</h3> </p>
							<input type="tel" class="form-control" placeholder="原电话号码 :<%=address.getA_phone() %>" name="a_phone" id="phone" required>
						<br>
						<button type="submit" class="btn btn-1 btn-danger">修改</button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<button type="reset" class="btn btn-1 btn-success">重置</button>
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
