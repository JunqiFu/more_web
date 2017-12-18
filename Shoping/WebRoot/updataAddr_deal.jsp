<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ page import="system.bean.Address" %>
<%@ page import="system.dao.impl.AddressDAOImpl" %>
<%
	request.setCharacterEncoding("UTF-8");
	String addressID = request.getParameter("a_id");
	int id = Integer.parseInt(addressID);
	String name = request.getParameter("a_name");
	String mail = request.getParameter("a_mail");
	String phone = request.getParameter("a_phone");
	String addr = request.getParameter("a_address");
	Address address = new Address();
	AddressDAOImpl addressDAOImpl = new AddressDAOImpl();
	address.setA_id(id);
   	address.setA_name(name);
  	address.setA_mail(mail);
   	address.setA_phone(phone);
   	address.setA_address(addr);
   	if(addressDAOImpl.updateAddrInfo(address)==true){
   		session.setAttribute("addressHiht", "修改地址信息成功成功");
  		response.sendRedirect("manageUserInfo.jsp");
	}
 %>
