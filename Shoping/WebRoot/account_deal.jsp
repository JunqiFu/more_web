<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="system.bean.Userinfo" %>
<%@ page import="system.dao.impl.UserDAOImpl" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%
  String username = request.getParameter("username");
  String password = request.getParameter("password");
  
  session.setAttribute("error","");
  UserDAOImpl userDAOImpl = new UserDAOImpl();
  Userinfo userinfo = userDAOImpl.isExist(username, password);
  if(userinfo!=null) {
    
    response.sendRedirect("index.jsp");
  }else{
  		session.setAttribute("error","账号或密码出错,验证失败！");
  		response.sendRedirect("account.jsp");
 }
  
 %>
