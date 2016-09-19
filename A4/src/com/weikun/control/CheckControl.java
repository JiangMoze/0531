package com.weikun.control;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebInitParam;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.weikun.service.IUserService;
import com.weikun.service.UserServiceImpl;
import com.weikun.vo.BBSUser;

/**
 * Servlet implementation class CheckControl
 */
@WebServlet(
		urlPatterns = { "/CheckControl" }, 
		initParams = { 
				@WebInitParam(name = "success", value = "success.jsp"), 
				@WebInitParam(name = "error", value = "index.html")
		})
public class CheckControl extends HttpServlet {
	private IUserService service=new UserServiceImpl();
	private static final long serialVersionUID = 1L;
    private Map<String,String> map=new HashMap<String,String>();  
    /**
     * @see HttpServlet#HttpServlet()
     */
    @Override
    public void init(ServletConfig config) throws ServletException {
    	// TODO Auto-generated method stub
    	
    	map.put("success", config.getInitParameter("success"));
    	map.put("error", config.getInitParameter("error"));
    	
    }
    public CheckControl() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		BBSUser user=new BBSUser();
		user.setUsername(request.getParameter("username"));
		user.setPwd(request.getParameter("pwd"));
		
		if(service.login(user)){
			request.getSession().setAttribute("user", user);
			response.sendRedirect(map.get("success"));
		}else{
			response.setContentType("text/html");
			response.setCharacterEncoding("utf-8");
			PrintWriter out=response.getWriter();
			
			out.write("<script type='text/javascript'> "+
				"alert('∑«∑®»Î«÷'); "+
				"window.location='"+map.get("error").toString()+"'; "+
			"</script>");
			out.flush();
			out.close();
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
