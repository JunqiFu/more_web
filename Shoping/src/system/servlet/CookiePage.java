package system.servlet;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.security.auth.message.callback.PrivateKeyCallback.Request;
import javax.servlet.http.Cookie;

public class CookiePage extends HttpServlet {
	
	/*
	 * 
	 * �жϵ�ǰ�û�����û��cookiePage
	 * ���û�еĻ� newһ��
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
