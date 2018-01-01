<%@ page language="java" pageEncoding="UTF-8"%>
<!-- Left column -->
    <div class="templatemo-flex-row">
      <div class="templatemo-sidebar">
        <header class="templatemo-site-header">
          <div class="square"></div>
           	<h1>当前登录:AdMIN</h1>
     	</header>
        <div class="profile-photo-container">
          <img src="info/images/profile-photo.jpg" alt="Profile Photo" class="img-responsive">  
          <div class="profile-photo-overlay"></div>
        </div>      

        <div class="mobile-menu-icon">
            <i class="fa fa-bars"></i>
        </div>
        <nav class="templatemo-left-nav">          
          <ul>
             	<!-- 管理员的菜单栏 -->
            <li><a href="adminUserFrame.jsp"><i class="fa fa-bar-chart fa-fw"></i>用户信息管理</a></li>
            <li><a href="adminGoodsFrame.jsp"><i class="fa fa-database fa-fw"></i>商品信息管理</a></li>
            <li><a href="modifyUserPassword1.jsp"><i class="fa fa-users fa-fw"></i>修改密码</a></li>
            <li><a href="tuichu.jsp"><i class="fa fa-eject fa-fw"></i>退出登录</a></li>
            <li><a href="index.jsp"><i class="fa fa-eject fa-fw"></i>首页</a></li>
                
          </ul>  
        </nav>
      </div>