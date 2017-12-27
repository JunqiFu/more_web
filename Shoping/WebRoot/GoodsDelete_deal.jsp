<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ page import="system.dao.impl.GoodsDAOImpl"%>
<%
	String id = request.getParameter("G_id");
	int g_id=Integer.parseInt(id);
	GoodsDAOImpl goodsDAOImpl = new GoodsDAOImpl();
	int count=goodsDAOImpl.deleteGoods(g_id);
	if(count>0){
		response.sendRedirect("adminGoodsFrame.jsp");
	}
	
 %>