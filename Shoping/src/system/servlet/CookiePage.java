package system.servlet;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.security.auth.message.callback.PrivateKeyCallback.Request;
import javax.servlet.http.Cookie;

public class CookiePage extends HttpServlet {
	
	/*
	 * 
	 * 判断当前用户中有没有cookiePage
	 * 如果没有的话 new一个
	 * 
	 * */
	 
	public Cookie checkCookie(HttpServletRequest request){
		try {
			Cookie[] cookies =request.getCookies();
			if(cookies!=null){
				
			}
			
			
			
			
		} catch (Exception e) {
			// TODO: handle exception
		}
		
		
		
		
		
		return null;
		
	}
	
	

}
