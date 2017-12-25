<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ page import="system.bean.Userinfo" %>
<%@ page import="system.dao.impl.UserDAOImpl"%>
	<%
  		if(session.getAttribute("userUpdataHiht")==null){
  			
  		}else if(session.getAttribute("userUpdataHiht").equals("修改成功")){
  		%>
  		 <script language="javascript"> //JavaScript脚本标注
  			alert("修改用户信息成功");
		 </script>
  		<%
  		session.removeAttribute("userUpdataHiht");
  		}	
%>


<%
	String name = request.getParameter("Username");
	String Username=new String(name.getBytes("ISO-8859-1"),"UTF-8");
	UserDAOImpl useDaoImpl = new UserDAOImpl();
	Userinfo user = useDaoImpl.getUserInfoByUsername(Username);
 %>
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
    <div class="templatemo-flex-row">
    	<jsp:include page="Same/AdminFrame.jsp" flush="true" />
    </div>
      <!-- Main content -->
      <div class="templatemo-content col-1 light-gray-bg">
	<!-- ********************************************************* -->
	<div class="row-fluid" >
		<div class="span12">
			
			<div class="span12">
				<blockquote>
				<h3>当前编辑的是用户名为:<i style="color:red;font-size:30px;font-style:normal;"> <%=user.getUsername()%></i>  姓名为: <%=user.getName()%> 的用户</h3>
				</blockquote>
				<blockquote>
				<p>修改用户的信息，请注意:用户信息的正确性和完整性</p>
				<p><i style="color:red;">注:修改用户的信息，请注意:用户信息的正确性和完整性</i>
				</p> <small>关键词 <cite>用户</cite></small>
			</blockquote>
			</div>
		</div>
		<div class="col-md-6" style="magin:0 auto;">
					<form name="form" id="ff2" method="post" action="updataUserinfo_deal.jsp">
						<div class="form-group">
						<input type="text" class="form-control" name="username" id="firstname"  readonly = "readonly" value="<%=user.getUsername() %>" style="display:none" >
							<p><h3>姓名:</h3> </p>
							<input type="text" class="form-control"  name="name" id="lastname" value="<%=user.getName() %>" required>
						</div>
						<div class="form-group">	
						    <p><h3>密码:</h3> </p>
							<input type="text" class="form-control" name="password" id="lastname" value="<%=user.getPassword() %>" required>
						</div>
						<div class="form-group">
							<p><h3>电话号码:</h3> </p>
							<input type="tel" class="form-control" name="phone" id="email" value="<%=user.getPhone() %>" required>
						</div>
						<div class="form-group">
							<p><h3>邮箱地址:</h3> </p>
							<input type="tel" class="form-control" name="email" id="phone" value="<%=user.getEmail() %>" required>
						<br>
						<div class="form-group">
							<p><h3>修改密码时的问题:</h3> </p>
							<input type="tel" class="form-control" name="ques" id="phone" value="<%=user.getPasswordQuestion() %>" required>
						<br>
						<div class="form-group">
							<p><h3>修改密码的答案:</h3> </p>
							<input type="tel" class="form-control" name="answer" id="phone" value="<%=user.getPasswordAnswer() %>" required>
						<br>
						<button type="submit" class="btn btn-1 btn-danger">修改</button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<button type="reset" class="btn btn-1 btn-success">重置</button>
					</form>
				</div>
			</div>
	<!-- ********************************************************* -->
			      
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
