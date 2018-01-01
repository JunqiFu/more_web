<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%
 session.invalidate(); //删除Session
    //跳转页面到首页
    response.sendRedirect("index.jsp");
 %>
