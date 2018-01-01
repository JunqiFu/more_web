<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<% 
     Userinfo userinfo = (Userinfo) session.getAttribute("Userinfo");
 %>
 <%@ page import="system.bean.Userinfo" %>
<%@ page import="system.bean.Order" %>
<%@ page import="system.dao.impl.OrderDAOImpl" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">  
    <title>信息管理</title>
    <meta name="description" content="">
    <meta name="author" content="templatemo">
    <link href="info/css/font-awesome.min.css" rel="stylesheet">
    <link href="info/css/bootstrap.min.css" rel="stylesheet">
    <link href="info/css/templatemo-style.css" rel="stylesheet">
  </head>
  <body>  
     
<!--  ***************admin界面************************************* -->
<div class="templatemo-content col-1 light-gray-bg">
<br>

		<form class="form-search">
				<i style="font-style: normal; float: left; font-size:30px;">订单信息</i>
			</form>
	<br>
	<br>
	<br>
	<div class="container-fluid">
	<div class="row-fluid">
		<div class="span12">
			<table class="table table-hover table-condensed table-bordered">
				<thead>
					<tr>
						<th>
							订单编号
						</th>
						<th>
							用户名
						</th>
						<th>
							用户姓名
						</th>
						<th>
							时间
						</th>
						<th>
							总金额
						</th>
						<th>
							地址
						</th>
						<th>
							支付方式
						</th>
						
					</tr>
				</thead>
				<tbody>
				<%	
				OrderDAOImpl orderDAOImpl=new OrderDAOImpl();
				List<Order> orders=orderDAOImpl.getAllOrder();
					int num=1;
					for (Order order : orders) { %>
					<tr class="info">
						<td>
							<%=num++ %>
						</td>
						<td>
							<%=order.getU_username() %>
						</td>
						<td>
							<%=order.getU_name() %>
						</td>
						<td>
							<%=order.getO_time() %>
						</td>
						<td>
							<%=order.getU_price()%>
						</td>
						<td>
							<%=order.getU_address()%>
						</td>
						<td>
							<%=order.getO_pay()%>
						</td>
					
					</tr>
					<%	} %>
					
				</tbody>
			</table>
		</div>
	</div>
</div>


	
		<!-- ************分割线************* -->
	</div>	
</div>
	<!-- ************************************************************* -->

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
	<script type="text/javascript">
  function del(id,name){
  		
	  if(confirm("你确定要删除“ "+name+" ”商品的信息吗？")){
		//页面跳转
		window.location.href="GoodsDelete_deal.jsp?G_id="+id;
	  }
  }
  
  </script>
</html>