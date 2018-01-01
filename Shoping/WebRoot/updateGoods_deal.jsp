
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ page contentType="text/html; charset=GBK" %>
<%@ page import="java.io.*"%>
<%@ page import="java.*"%>
<%@ page import="java.util.*"%>
<%@ page import="javax.servlet.*"%>
<%@ page import="javax.servlet.http.*"%>
<%@ page import="java.util.Date"%>
<%@ page import="java.text.SimpleDateFormat"%>
<%@ page import="system.bean.Goods" %>
<%@ page import="system.dao.impl.GoodsDAOImpl"%>


<%

	request.setCharacterEncoding("UTF-8");
	String id = request.getParameter("g_id");
	int g_id=Integer.parseInt(id);
	String g_name = request.getParameter("g_name");
	String g_detail =  request.getParameter("g_detail");
	String cost =  request.getParameter("g_cost");
	int g_cost=Integer.parseInt(cost);
	String price =  request.getParameter("g_price");
	int g_price=Integer.parseInt(price);
	String g_brand =  request.getParameter("g_brand");
	String g_coloro =  request.getParameter("g_coloro");
	String g_colort =  request.getParameter("g_colort");
	String g_colorh =  request.getParameter("g_colorh");
	String g_address =  request.getParameter("g_address");
	String g_info =  request.getParameter("g_info");
	String g_size =  request.getParameter("g_size");
	String g_class =  request.getParameter("g_class");
	Goods good = new Goods();
	good.setG_id(g_id);
	good.setG_address(g_address);
	good.setG_brand(g_brand);
	good.setG_class(g_class);
	good.setG_color(g_coloro);
	good.setG_color_o(g_colort);
	good.setG_color_t(g_colorh);
	good.setG_cost(g_cost);
	good.setG_detail(g_detail);
	good.setG_info(g_info);
	good.setG_name(g_name);
	good.setG_picture(null);
	good.setG_size(g_size);
	GoodsDAOImpl goodsDAOImpl = new GoodsDAOImpl();
	boolean check=goodsDAOImpl.updateGoods(good);
	if(check==true){
		response.sendRedirect("adminGoodsFrame.jsp");	
	}	

%>