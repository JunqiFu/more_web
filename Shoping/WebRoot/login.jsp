<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns=""><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>login</title>
<link href="./login/style_log.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="./login/style.css">
<link rel="stylesheet" type="text/css" href="./login/userpanel.css">
<link rel="stylesheet" type="text/css" href="./login/jquery.ui.all.css">

</head>
<body class="login" mycollectionplug="bind">
<div class="login_m">
<div class="login_logo"><img src="./login/logo.png" width="196" height="46"></div>
<div class="login_boder">
<form id="form1" name="form1" method="post" action="login_deal.jsp">
<div class="login_padding" id="login_model">

  <h2>手机界面</h2>
  <label>
    <input type="text" id="username" class="txt_input txt_input2" >
  </label>
  <h2>密码</h2>
  <label>
    <input type="password" name="textfield2" id="userpwd" class="txt_input">
  </label>

  <a id="iforget" href="javascript:void(0);">免费注册</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a id="iforget" href="javascript:void(0);">忘记密码</a>
  <div class="rem_sub">
  <div class="rem_sub_l">
  <input type="reset" class="sub_button" name="button" id="button" value="重置" style="opacity: 0.7;">
   </div>
    <label>
      <input type="submit" class="sub_button" name="button" id="button" value="登陆" style="opacity: 0.7;">
    </label>
  </div>
</div>
</form>
</div><!--login_boder end-->
</div><!--login_m end-->
 <br> <br>
<p align="center">版权所有&copy;<a href=""> Mars电商有限公司</a>：2017-2017 </p>
</body></html>