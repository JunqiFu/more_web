<%@page import="system.bean.Userinfo"%>
<%@page import="system.dao.impl.UserDAOImpl"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
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
    .code
 
    a
    {
        text-decoration:none;
        font-size:12px;
        color:#288bc4;
        }
 
    </style>
   
</head>
<body >
 <jsp:include page="header.jsp"/><!--导入header.jsp-->
<% request.setCharacterEncoding("utf-8");
	
	 String username = request.getParameter("username");
	 if(username==null){
	 	response.sendRedirect("forget1.jsp");
	 }
     UserDAOImpl dao = new UserDAOImpl();
     Userinfo userInfo=dao.getUserInfoByUsername(username); 
     if(userInfo.getName()=="" || userInfo.getName()==null){
     session.setAttribute("errorMsg", "用户名不存在！");
     response.sendRedirect("forget1.jsp");
     return;
     }
     
     if(request.getParameterMap().size()>0){//如果有参数提交，则进行答案验证
     //获取参数
     String passWordAnswer= request.getParameter("passWordAnswer");
     //验证答案
     if(userInfo.getPasswordAnswer().equals(passWordAnswer)){
         //跳转界面
          response.sendRedirect("forget3.jsp");
      }else{
        session.setAttribute("errorMsg", "答案不正确，你再想一想。");
        
      }
     }
     %>
    <form method="post" action="forget3.jsp">
    				<input type="hidden" name="username" value="<%=username%>">
					<table width="280" border="0" cellspacing="0" cellpadding="0"
						align="center">						
						<tr>
							<td height="60">
								<div align="right">问题：</div>
							</td>
							<td>
								<div align="left">
								 
								  
									<%=userInfo.getPasswordQuestion()%>
								</div>
							</td>
						</tr>
						<tr>
							<td height="60">
								<div align="right">答案：</div>
							</td>
							<td>
								<div align="left">
									<input type="text" name="passwordAnswer" id="passwordAnswer">
								</div>
							</td>
						</tr>
       
        <tr>
							<td colspan="2" align="right"><input type="submit" class="submitBtn"
								value="确定" width="51" height="20" > <input type="reset"
									class="resetBtn" value="取消" width="51" height="20">
										&nbsp;&nbsp; </td>
						</tr>
        <!-- - 
        <% String msg = (String)session.getAttribute("errorMsg");
						   if(msg != null){
		 %>-->
		 <tr>
			<td colspan="2" style="color:red;"><%=msg%></td>
		 </tr>
		 <% session.removeAttribute("errorMsg");}
		  %>
		 
		 
    </table>
    </form>
   <jsp:include page="footer.jsp"/><!--导入footer.jsp-->
</body>
</html>