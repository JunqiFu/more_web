<%@page import="system.bean.Userinfo"%>
<%@page import="system.dao.impl.UserDAOImpl"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<%@ page import="system.bean.Userinfo" %>

<%@ page import="system.dao.impl.UserDAOImpl" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
<base href="<%=basePath%>">
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

    <meta charset="utf-8" />
    <style type="text/css">
   
   
   
   
   
   
    </style>
</head>
<body>
 <jsp:include page="header.jsp"/><!--导入header.jsp-->
    <%
       /* if(request.getParameterMap().size()>0){ //如果有参数提交
       //获取参数
     //  String username = request.getParameter("username");
       //调用DAO保存会员注册信息
       UserDAOImpl dao = new UserDAOImpl();
       
       
       //跳转页面
        //  session.setAttribute("forgetPWD",username);
        //  response.sendRedirect("forget2.jsp");
          	//session.setAttribute("errorMsg","账号["+username+"]不存在");
      } */

 %>

    <form method="post" action="forget2.jsp">
					<table width="280" border="0" cellspacing="0" cellpadding="0"
						align="center">
						<tr>
							<td height="60">
								<div align="right" width="100px">
								
								
								
								
								
								请输入账号：</div>
							</td>
							<td>
								<div align="left">
									<input type="text" name="username">
								</div>
							</td>
						</tr>
						
						<tr>
							<td colspan="2" align="right"><input type="submit" class="submitBtn"
								value="确定" width="51" height="20"> <input type="reset"
									class="resetBtn" value="返回" width="51" height="20">
							</td>
						</tr>
       

       <% 
        String msg=(String)session.getAttribute("errorMsg");
          if(msg !=null){ 
          %>
          <tr>
			  <td colspan="2" style="color:red;"><%=msg%></td>
		  </tr>
		  <% session.removeAttribute("errorMsg");} 
		  %>
    </table>
    </div>
    </form>
    <jsp:include page="footer.jsp"/><!--导入footer.jsp-->
</body>
</html>
