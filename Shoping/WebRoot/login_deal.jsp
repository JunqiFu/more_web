<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@ page import="system.bean.Userinfo" %>
<%@ page import="system.dao.impl.UserDAOImpl" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%
  String username = request.getParameter("username");
  String password = request.getParameter("password");
  UserDAOImpl userDAOImpl = new UserDAOImpl();
  Userinfo userinfo = userDAOImpl.isExist(username, password);
 
  if(userinfo!=null) {
  	response.sendRedirect("index.jsp");
  }else{
  	response.sendRedirect("account.jsp");
  }
  





 %>
