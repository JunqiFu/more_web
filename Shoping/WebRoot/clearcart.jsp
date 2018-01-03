<%@ page language="java" import="java.util.*,java.sql.*,system.bean.*,system.dao.impl.*" pageEncoding="UTF-8"%>
<%  
    session.removeAttribute("cars");    
    response.sendRedirect("index.jsp");
%>