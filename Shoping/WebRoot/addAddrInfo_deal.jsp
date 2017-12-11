<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ page import="system.bean.Address" %>
<%@ page import="system.dao.impl.AddressDAOImpl" %>
<%
	request.setCharacterEncoding("UTF-8");
	String username = request.getParameter("username");
	
	String name = request.getParameter("name");
	String mail = request.getParameter("mail");
	String phone = request.getParameter("phone");
	String addr = request.getParameter("address");
	//四川成都市高新区83号
	//if(username.equals("")){
	//	session.setAttribute("addAddrinfo_error","出错!请重新输入。");
  	//	response.sendRedirect("addAddrInfo.jsp");
	//}else{
		Address address = new Address();
		AddressDAOImpl addressDAOImpl = new AddressDAOImpl();
		address.setU_username(username);
   		address.setA_name(name);
  		address.setA_mail(mail);
   		address.setA_phone(phone);
   		address.setA_address(addr);
   		if(addressDAOImpl.addAddrInfo(address)==true){
  			response.sendRedirect("manageUserInfo.jsp");
 	//	}
	}
	


 %>
