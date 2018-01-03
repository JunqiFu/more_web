<%@ page language="java" import="java.util.*,java.sql.*,system.bean.*,system.dao.impl.*" pageEncoding="UTF-8"%>
<%
    int id = Integer.parseInt(request.getParameter("id"));
    GoodsDAOImpl dao = new GoodsDAOImpl();
    Goods g = dao.findGoodsByID(id);
    
    Car Car = new Car();
    Car.setGoods(g);
    Car.setNumber(1);
    
    HashMap<Integer,Car> cars = (HashMap<Integer,Car>)session.getAttribute("cars");
    if(cars == null){
    cars = new HashMap<Integer,Car>();
    }
    else{
    Car c = cars.get(id);
    if(c !=null){
    c.setNumber(Car.getNumber()+1);
    Car = c;
    }
    }
    cars.put(id, Car);
    session.setAttribute("cars",cars);
    
    response.sendRedirect("index.jsp");
%>