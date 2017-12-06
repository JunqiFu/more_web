<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ page import="system.bean.contact" %>
<%@ page import="system.dao.impl.ContactDAOimpl" %>
<%  
   request.setCharacterEncoding("UTF-8");

   String contact_id=request.getParameter("contact_id");
   String u_name=request.getParameter("u_name");
   String u_email=request.getParameter("u_email");
   String u_phone=request.getParameter("u_phone");
   String message=request.getParameter("message");
   
   contact contactinfo=new contact();
   ContactDAOimpl contactinfoDao=new ContactDAOimpl();
   
   contactinfo.setcontact_id(contact_id);
   contactinfo.setu_name(u_name);
   contactinfo.setu_email(u_email);
   contactinfo.setu_phone(u_phone);
   contactinfo.setmessage(message);
   
 	if(contactinfoDao.addcontact(contactinfo)==false){
 	
  		response.sendRedirect("contact.jsp");
  		session.setAttribute("contact.jsp", "提交问题出现错误，请重新填写内容！！");
 	}else {
  		response.sendRedirect("contact.jsp");
  		session.setAttribute("contact.jsp", "提交成功！！");
 	}
 %>
