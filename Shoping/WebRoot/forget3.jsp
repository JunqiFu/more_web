<%@page import="system.dao.impl.UserDAOImpl"%>
<%@page import="system.bean.Userinfo"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%
     
     Userinfo userinfo = (Userinfo) session.getAttribute("Userinfo");
     
     %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
<base href="<%=basePath%>">
    <title></title>
    <meta charset="utf-8" />
    <style type="text/css">
    
    a
    {
        text-decoration:none;
        font-size:12px;
        color:#288bc4;
        }
 
    </style>
   
</head>
<body >

<jsp:include page="header.jsp"/><!--导入header.jsp-->

    <% String username = request.getParameter("username");

    	
      
    %>
        <form method="post" action="forget3_deal.jsp">
        			<input type="hidden" name="username" value="<%=username%>">
					<table width="280" border="0" cellspacing="0" cellpadding="0"
						align="center">					
						<tr>
						   <td colspan="2" align="center">
						      <h2>请输入新密码</h2>
						   </td>
						</tr>
						<tr>
							<td height="60">
								<div align="right">新的密码：</div>
							</td>
							<td>
								<div align="left">
									<input type="password" name="password">
								</div>
							</td>
						</tr>
						<tr>
							<td height="60">
								<div align="right">再次输入：</div>
							</td>
							<td>
								<div align="left">
									<input type="password" name="confirmPassword">
								</div>
							</td>
						</tr>
       
        <tr>
							<td colspan="2" align="right"><input type="submit" class="submitBtn"
								value="确定" width="51" height="20" onclick="window.location.href='index.jsp'"> <input type="reset"
									class="resetBtn" value="取消" width="51" height="20">
										</td>
						</tr>
        <% 
        	String errorMsg = (String)session.getAttribute("error_pwd");
			if(errorMsg != null){
		%>
		<tr>
			<td colspan="2" style="color:red;"><%=errorMsg%></td>
		</tr>
			<%						   
			} %>
		<% String msg = (String)request.getAttribute("msg");
			if(msg != null){
		 %>
		<tr>
			<td colspan="2" style="color:blue;"><%=msg%></td>
			</tr>
		<%						   
		} %>
    </table>
    </div>
    </form>
    <jsp:include page="footer.jsp"/><!--导入footer.jsp-->
</body>
</html>
