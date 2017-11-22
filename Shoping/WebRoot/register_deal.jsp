<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ page import="system.bean.Userinfo" %>
<%@ page import="system.dao.impl.UserDAOImpl" %>
<%  
   request.setCharacterEncoding("UTF-8");
 	//验证密码和确认密码是否一致
   String password = request.getParameter("pwd");
   String password1 = request.getParameter("pwd1");
   if(!password.equals(password1)){
    session.setAttribute("error_pwd","两次密码输入不正确!请重新输入。");
  	response.sendRedirect("account.jsp");
  	return;
  	}
   String username=request.getParameter("username");
   String pwd=request.getParameter("pwd");
   String sex=request.getParameter("sex");
   String name=request.getParameter("name");
   String phone=request.getParameter("phone");
   String email=request.getParameter("email");
   Userinfo userinfo=new Userinfo();
   UserDAOImpl userinfoDao=new UserDAOImpl();
   userinfo.setUsername(username);
   userinfo.setPassword(pwd);
   userinfo.setName(name);
   userinfo.setPhone(phone);
   userinfo.setEmail(email);
   userinfo.setPower(1);
   if(sex==null){
   		userinfo.setSex(0);
   }else{
   		if(sex.equals("m")){
 			userinfo.setSex(0);
 			}else{
 			userinfo.setSex(1);
   		}
   	}
 	if(userinfoDao.addUserInfo(userinfo)==false){
  		response.sendRedirect("account.jsp");
  		session.setAttribute("error_pwd", "该用户名已注册!请另外选择用户名");
 	}else {
  		response.sendRedirect("index.jsp");
 	}
 %>
