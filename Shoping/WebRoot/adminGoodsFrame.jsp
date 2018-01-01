<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ page import="system.bean.Goods" %>
<%@ page import="system.dao.impl.GoodsDAOImpl"%>
<%
	GoodsDAOImpl goodsDAOImpl = new GoodsDAOImpl();
	int total = goodsDAOImpl.getGoodsCount(); //商品总数
	int pageSize = 9;
	int pageTotal = total / pageSize;
	if (total % pageSize != 0) {
		pageTotal++;
		}
	int pageIndex = 1;
	String str = request.getParameter("pageIndex");
	if(str != null && str.length()>0){
		pageIndex = Integer.parseInt(str); //将字符串转化为整数 
	}
	//计算上一页
	int lastPage = pageIndex;
	if (pageIndex > 1) {
		lastPage -= 1;
	}
    //计算下一页
	int nextPage = pageIndex;
	if (pageIndex < pageTotal) {
		nextPage += 1;
	}
	List<Goods> goods = goodsDAOImpl.getPagedGoods(pageIndex, pageSize);
 %>
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
     <div class="templatemo-flex-row">
    	<jsp:include page="Same/AdminFrame.jsp" flush="true" />
    </div>
<!--  ***************admin界面************************************* -->
<div class="templatemo-content col-1 light-gray-bg">
<br>

		<form class="form-search">
				<i style="font-style: normal; float: left; font-size:30px;">商品信息</i>
				<i style="font-style: normal; float: left; margin-left:400px; font-size:20px; margin-top:6px;">点击添加新的商品信息</i>
				<i style="font-style: normal; float: right"><input class="input-medium search-query" type="text" /> 
				<button type="submit" class="btn">查找</button></i>
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
							编号
						</th>
						<th>
							商品图片
						</th>
						<th>
							详情信息
						</th>
						<th>
							品牌+型号
						</th>
						<th>
							原价
						</th>
						<th>
							现价
						</th>
						<th>
							地址
						</th>
						<th>
							分类
						</th>
						<th>
							编辑
						</th>
					</tr>
				</thead>
				<tbody>
				<%	
					int num=1;
					for (Goods good : goods) { %>
					<tr class="info">
						<td>
							<%=num++ %>
						</td>
						<td>
							<img src="<%=basePath%>images/<%=good.getG_picture()%>" style="max-height:50px;max-width:50px;"/>
						</td>
						<td>
							<%=good.getG_name() %>
						</td>
						<td>
							品牌:<%=good.getG_brand() %>&nbsp;&nbsp;&nbsp;型号:<%=good.getG_detail() %>
						</td>
						<td>
							<%=good.getG_cost() %>
						</td>
						<td>
							<%=good.getG_price()%>
						</td>
						<td>
							<%=good.getG_address()%>
						</td>
						<td>
							<%=good.getG_class()%>
						</td>
						<td>
							<a href="updateGoods.jsp?G_id=<%=good.getG_id()%>">编辑</a>
							<a onclick="del(<%=good.getG_id()%>,'<%=good.getG_name()%>')">删除</a>
						</td>
					</tr>
					<%	} %>
					<tr>
							<td colspan="8">
								<center>共<%=total%>行记录 第<%=pageIndex%>页/共<%=pageTotal%>页 <a
					href="adminGoodsFrame.jsp?pageIndex=<%=lastPage%>">上页</a> <a
					href="adminGoodsFrame.jsp?pageIndex=<%=nextPage%>">下页</a></center>
							</td>
						</tr>
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

