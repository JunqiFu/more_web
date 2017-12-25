<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ page import="system.bean.Userinfo" %>
<%@ page import="system.dao.impl.UserDAOImpl" %>
<%
	request.setCharacterEncoding("UTF-8");
	String passwordAnswer = request.getParameter("answer");
	String passwordQuestion = request.getParameter("ques");
	String username = request.getParameter("username");
	String name = request.getParameter("name");
	String phone = request.getParameter("phone");
	String email = request.getParameter("email");
	String password = request.getParameter("password");
	Userinfo userinfo = new Userinfo();
	userinfo.setEmail(email);
	userinfo.setName(name);
	userinfo.setPassword(password);
	userinfo.setPhone(phone);
	userinfo.setPasswordQuestion(passwordQuestion);
	userinfo.setPasswordAnswer(passwordAnswer);
	userinfo.setUsername(username);
	
	UserDAOImpl userDAOImpl = new UserDAOImpl();
	boolean rs=userDAOImpl.updateUserinfo(userinfo);
	if(rs==true){
		session.setAttribute("userUpdataHiht", "修改成功");
		response.sendRedirect("updateUserinfo.jsp?Username="+username);
  		//response.sendRedirect("adminUserFrame.jsp");
	}




 %>
