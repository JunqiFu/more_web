<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ page import="system.bean.Goods" %>
<%@ page import="system.dao.impl.GoodsDAOImpl"%>
	<%
  		if(session.getAttribute("userUpdataHiht")==null){
  			
  		}else if(session.getAttribute("userUpdataHiht").equals("1")){
  		%>
  		 <script language="javascript"> //JavaScript脚本标注
  			alert("修改用户信息成功");
		 </script>
  		<%
  		session.removeAttribute("userUpdataHiht");
  		}	
%>


<%
	//String name = request.getParameter("Username");
	//String Username=new String(name.getBytes("ISO-8859-1"),"UTF-8");
	//UserDAOImpl useDaoImpl = new UserDAOImpl();
	//Userinfo user = useDaoImpl.getUserInfoByUsername(Username);
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
				<h3>当前编辑的商品为:<i style="color:red;font-size:30px;font-style:normal;"></i>的商品</h3>
				</blockquote>
				<blockquote>
				<p>修改商品的信息，请注意:商品信息的正确性和完整性</p>
				</p> <small>关键词 <cite>商品</cite></small>
			</blockquote>
			</div>
		</div>
		
		<div class="col-md-6" style="magin:0 auto;">
					<form name="form" id="ff2" method="post" action="updateGoods_deal.jsp" enctype="multipart/form-data">
						<div class="form-group">
						<input type="text" class="form-control" name="username" id="firstname"  readonly = "readonly" value="1" style="display:none" >
							<p><h3>图片</h3> </p>
							<img id="preview" max-width="100" max-height="200" onclick="pigshow()" src="User_img.jsp" />
							<input type="file" name="img" id="img" onchange="javascript:setImagePreview();">
							<script>
function setImagePreview() {
var docObj = document.getElementById("img");
var imgObjPreview = document.getElementById("preview");
if (docObj.files && docObj.files[0]) {
//火狐下，直接设img属性 
imgObjPreview.style.display = 'block';
imgObjPreview.style.width = '150px';
imgObjPreview.style.height = '150px';
//imgObjPreview.src = docObj.files[0].getAsDataURL(); 
//火狐7以上版本不能用上面的getAsDataURL()方式获取，需要一下方式 
imgObjPreview.src = window.URL.createObjectURL(docObj.files[0]);
} else {
//IE下，使用滤镜 
docObj.select();
var imgSrc = document.selection.createRange().text;
var localImagId = document.getElementById("localImag");
//必须设置初始大小 
localImagId.style.width = "200px";
localImagId.style.height = "200px";
//图片异常的捕捉，防止用户修改后缀来伪造图片 
try {
localImagId.style.filter = "progid:DXImageTransform.Microsoft.AlphaImageLoader(sizingMethod=scale)";
localImagId.filters
.item("DXImageTransform.Microsoft.AlphaImageLoader").src = imgSrc;
} catch (e) {
alert("您上传的图片格式不正确，请重新选择!");
return false;
}
imgObjPreview.style.display = 'none';
document.selection.empty();
}
return true;
}
</script>
						</div>
						<div class="form-group">
						<input type="text" class="form-control" name="username" id="firstname"  readonly = "readonly" value="1" style="display:none" >
							<p><h3>商品名字</h3> </p>
							<input type="text" class="form-control"  name="g_name" id="lastname" value="1" required>
						</div>
						<div class="form-group">	
						    <p><h3>详情信息</h3> </p>
							<input type="text" class="form-control" name="g_detail" id="lastname" value="1" required>
						</div>
						<div class="form-group">	
						    <p><h3>原价格</h3> </p>
							<input type="text" class="form-control" name="g_cost" id="lastname" value="1" required>
						</div>
						<div class="form-group">
							<p><h3>现价格</h3> </p>
							<input type="tel" class="form-control" name="g_price" id="email" value="1" required>
						</div>
						<div class="form-group">	
						    <p><h3>品牌</h3> </p>
							<input type="text" class="form-control" name="g_brand" id="lastname" value="1" required>
						</div>
						<div class="form-group">
							<p><h3>颜色一</h3> </p>
							<input type="tel" class="form-control" name="g_coloro" id="phone" value="1" required>
						<br>
						<div class="form-group">
							<p><h3>颜色二</h3> </p>
							<input type="tel" class="form-control" name="g_colort" id="phone" value="1" required>
						<br>
						<div class="form-group">
							<p><h3>颜色三</h3> </p>
							<input type="tel" class="form-control" name="g_colorh" id="phone" value="1" required>
						<br>
						<div class="form-group">
							<p><h3>生产地址</h3> </p>
							<input type="tel" class="form-control" name="g_address" id="phone" value="1" required>
						<br>
						<div class="form-group">
							<p><h3>商品信息</h3> </p>
							<input type="tel" class="form-control" name="g_info" id="phone" value="1" required>
						<br>
						<div class="form-group">
							<p><h3>商品规格</h3> </p>
							<input type="tel" class="form-control" name="g_size" id="phone" value="1" required>
						<br>
						<div class="form-group">
							<p><h3>商品分类</h3> </p>
							<input type="tel" class="form-control" name="g_class" id="phone" value="1" required>
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
