<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ page import="system.bean.Userinfo" %>
<%@ page import="system.dao.impl.UserDAOImpl" %>
<%
request.setCharacterEncoding("utf-8");
	String username = request.getParameter("username");
	String password = request.getParameter("password");
   String password1 = request.getParameter("confirmPassword");
   if(!password.equals(password1)){
    session.setAttribute("error_pwd","两次密码输入不正确!请重新输入。");
  	response.sendRedirect("forget3.jsp");

  	}else{
  		UserDAOImpl u = new UserDAOImpl();
  		if(u.updateUserPassword("admin", password)){
	  		response.sendRedirect("account.jsp");
  		}
  	}
  	
  	Userinfo userinfo=new Userinfo();
   UserDAOImpl dao=new UserDAOImpl();
 %>
