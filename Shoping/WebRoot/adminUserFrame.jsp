<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ page import="system.bean.Userinfo" %>
<%@ page import="system.dao.impl.UserDAOImpl"%>
<%
	if(session.getAttribute("pageIndx")==null||session.getAttribute("pageIndxA")==null){
  			session.setAttribute("pageIndx", 1);
  			session.setAttribute("pageIndxA", 1);
  		}
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
    <!-- Left column -->
    <div class="templatemo-flex-row">
      <div class="templatemo-sidebar">
        <header class="templatemo-site-header">
          <div class="square"></div>
           	<h1>当前登录:AdMIN</h1>
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
             	<!-- 管理员的菜单栏 -->
            <li><a href="manageUserInfo.jsp"  class="active"><i class="fa fa-bar-chart fa-fw"></i>用户信息管理</a></li>
            <li><a href="manageUserInfo.jsp"><i class="fa fa-database fa-fw"></i>商品信息管理</a></li>
            <li><a href="manageUserInfo.jsp"><i class="fa fa-map-marker fa-fw"></i>销售管理</a></li>
            <li><a href="manageUserInfo.jsp"><i class="fa fa-users fa-fw"></i>修改密码</a></li>
            <li><a href="manageUserInfo.jsp"><i class="fa fa-sliders fa-fw"></i>客户留言</a></li>
            <li><a href="manageUserInfo.jsp"><i class="fa fa-eject fa-fw"></i>退出登录</a></li>
                
          </ul>  
        </nav>
      </div>
	<%
		UserDAOImpl userDAOImpl = new UserDAOImpl();
		//用户的权限声明
		int user=1;
		int admin=0;
		//每个用户的总数
		int numUser = userDAOImpl.getUserinfoCount(user);
		int numAdmin = userDAOImpl.getUserinfoCount(admin);
		
		//每个页面显示的数量
		int pageSize = 4;
		//
		int pageUser = numUser / pageSize;
		int pageAdmin = numAdmin / pageSize;
		//
		if (numUser % pageSize != 0) {
			pageUser++;
			}
			
		if (numAdmin % pageSize != 0) {
			pageAdmin++;
			}	
		//第几页开始的
		//int pageIndex = 1;
		//int pageIndexA = 1;
		
		int pageIndex = (Integer)session.getAttribute("pageIndx");
  		int pageIndexA = (Integer)session.getAttribute("pageIndxA");
		//第几页开始的
		request.setCharacterEncoding("UTF-8");
		String str = request.getParameter("pageIndex");
		String strA = request.getParameter("pageIndexA");
		if(str != null && str.length()>0){
			pageIndex = Integer.parseInt(str); //将字符串转化为整数 
		}
		if(strA != null && strA.length()>0){
			pageIndexA = Integer.parseInt(strA); //将字符串转化为整数 
		}
		//计算上一页
		int lastPage = pageIndex;
		int lastPageA = pageIndexA;
		
		if (pageIndex > 1) {
			lastPage -= 1;
		}
		
		if (pageIndexA > 1) {
			lastPageA -= 1;
		}

		//计算下一页
		int nextPageUser = pageIndex;
		int nextPageAdmin = pageIndexA;
		//================
		if (pageIndex < pageUser) {
			nextPageUser += 1;
		}
		if (pageIndexA < pageAdmin) {
			nextPageAdmin += 1;
		}	
		//============
		List<Userinfo> listU = userDAOImpl.getPagedUser(pageIndex, pageSize, user);
		List<Userinfo> listA = userDAOImpl.getPagedUser(pageIndexA, pageSize, admin);
	 %>      
<!--  ***************admin界面************************************* -->
<div class="templatemo-content col-1 light-gray-bg">
<br>

	<h2>普通用户信息</h2>
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
							用户名
						</th>
						<th>
							密码
						</th>
						<th>
							性别
						</th>
						<th>
							手机号码
						</th>
						<th>
							邮箱号码
						</th>
						<th>
							编辑
						</th>
					</tr>
				</thead>
				<tbody>
				<%	
					int num=1;
					for (Userinfo userinfo : listU) { %>
					<tr class="info">
						<td>
							<%=num++ %>
						</td>
						<td>
							<%=userinfo.getUsername()%>
						</td>
						<td>
							<%=userinfo.getPassword() %>
						</td>
						<td>
							<%=userinfo.getSex() %>
						</td>
						<td>
							<%=userinfo.getPhone() %>
						</td>
						<td>
							<%=userinfo.getEmail() %>
						</td>
						<td>
							<a href="updateUserinfo.jsp?Username=<%=userinfo.getUsername()%>">编辑</a>
							<a onclick="del('<%=userinfo.getUsername()%>')">删除</a>
						</td>
					</tr>
					<%	} %>
					<tr>
							<td colspan="8">
								<center><a href="adminUserFrame.jsp?pageIndex=<%=lastPage%>">上一页</a>&nbsp;&nbsp;&nbsp;
								第<%=pageIndex%>页/共<%=pageUser%>页
								<a href="adminUserFrame.jsp?pageIndex=<%=nextPageUser%>">下一页</a></center>
							</td>
						</tr>
				</tbody>
			</table>
		</div>
	</div>
</div>
<br>
<br>
<h2>管理员用户信息</h2>
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
							用户名
						</th>
						<th>
							密码
						</th>
						<th>
							性别
						</th>
						<th>
							手机号码
						</th>
						<th>
							邮箱号码
						</th>
						<th>
							编辑
						</th>
					</tr>
				</thead>
				<tbody>
				<%	
					int count=1;
					for (Userinfo userinfo : listA) { %>
					<tr class="info">
						<td>
							<%=count++ %>
						</td>
						<td>
							<%=userinfo.getUsername()%>
						</td>
						<td>
							<%=userinfo.getPassword() %>
						</td>
						<td>
							<%=userinfo.getSex() %>
						</td>
						<td>
							<%=userinfo.getPhone() %>
						</td>
						<td>
							<%=userinfo.getEmail() %>
						</td>
						<td>
							<a href="updateUserinfo.jsp?Username=<%=userinfo.getUsername()%>">编辑</a>
							<!-- <a onclick="del('<%=userinfo.getUsername()%>')">删除</a> -->
							<a onclick="del('<%=userinfo.getUsername()%>')">删除</a>
						</td>
					</tr>
					<%	} %>
					<tr>
							<td colspan="8">
								<center><a href="adminUserFrame.jsp?pageIndexA=<%=lastPage%>">上一页</a>&nbsp;&nbsp;&nbsp;
								第<%=pageIndex%>页/共<%=pageAdmin%>页&nbsp;&nbsp;&nbsp;
								<a href="adminUserFrame.jsp?pageIndexA=<%=nextPageAdmin%>">下一页</a>
								</center>
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
  function del(name){
  		
	  if(confirm("你确定要删除“ "+name+" ”用户的信息吗？")){
		//页面跳转
		window.location.href="userinfoDelete_deal.jsp?Username="+name;
	  }
  }
  
  </script>
</html>
