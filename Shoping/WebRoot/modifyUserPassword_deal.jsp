<%@ page import="system.bean.Userinfo" %>
<%@ page import="system.dao.impl.UserDAOImpl" %>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
  <%
     
     Userinfo userinfo = (Userinfo) session.getAttribute("Userinfo");
     
     %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <%request.setCharacterEncoding("utf-8");
    //Userinfo user =(Userinfo)session.getAttribute("Userinfo");
    
    String userinfoName=userinfo.getUsername();
    String password= request.getParameter("password");
    if(password==null){
    response.sendRedirect("account.jsp");
    }
    
    UserDAOImpl dao = new UserDAOImpl();
     if(!password.equals(userinfo.getPassword())){
     session.setAttribute("errorMsg", "密码输入错误");
     response.sendRedirect("modifyUserPassword1.jsp");
     return;
     }
     
    String newPassword = request.getParameter("newPassword");
    String confirmPassword = request.getParameter("confirmPassword");
     if(!confirmPassword.equals(newPassword)){
          session.setAttribute("error_pwd","两次密码输入不正确!请重新输入");
          response.sendRedirect("modifyUserPassword1.jsp");
        }else{
     UserDAOImpl u =new UserDAOImpl();
     if(u.updateUserPassword(userinfoName, confirmPassword)){
     response.sendRedirect("index.jsp");
     }
     }
     
     %>
    