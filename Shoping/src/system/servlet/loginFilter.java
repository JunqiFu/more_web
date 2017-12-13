package system.servlet;



import java.io.IOException;
import system.bean.Userinfo;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class loginFilter implements Filter {

	@Override
	public void destroy() {
		// TODO Auto-generated method stub
	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response,
			FilterChain filterChain) throws IOException, ServletException {
		
		HttpSession session = ((HttpServletRequest)request).getSession(); //获取HttpSession
		
		Userinfo user = (Userinfo)session.getAttribute("Username"); //获取用户信息（登陆用户才有）
		
		if(user==null){
			String path =  ((HttpServletRequest)request).getContextPath();
			((HttpServletResponse)response).sendRedirect(path+"/main.jsp");
			return;
		}

		filterChain.doFilter(request, response);
	}

	@Override
	public void init(FilterConfig arg0) throws ServletException {
		// TODO Auto-generated method stub

	}
}
