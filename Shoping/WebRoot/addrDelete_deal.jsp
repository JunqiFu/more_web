<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ page import="system.bean.Address" %>
<%@ page import="system.dao.impl.AddressDAOImpl" %>
<% 
 	request.setCharacterEncoding("gb2312");
 	int id=Integer.parseInt(request.getParameter("id"));
	Address address=new Address();
 	AddressDAOImpl addressDAOImpl = new AddressDAOImpl();
 	int size=addressDAOImpl.deleteAddr(id);
 	if(size>0){
 		response.sendRedirect("manageUserInfo.jsp");
 	}
 	

   
 %>
  

