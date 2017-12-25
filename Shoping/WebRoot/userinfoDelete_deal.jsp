<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ page import="system.dao.impl.UserDAOImpl"%>
<%
	String user = request.getParameter("Username");
	String username=new String(user.getBytes("ISO-8859-1"),"UTF-8");
	UserDAOImpl userDAOImpl = new UserDAOImpl();
	int count=userDAOImpl.deleteUser(username);
	if(count>0){
	response.sendRedirect("adminUserFrame.jsp");
	}
	


 %>
