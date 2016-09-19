package com.weikun.control;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebInitParam;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class BaseControl
 */

@WebServlet(
		name="/BaseControl",
		urlPatterns={"/A1","/A2"},
		initParams={
				@WebInitParam(value="/blue.jsp",name="blue"),
				@WebInitParam(value="/red.jsp",name="red")
				
				
		}

		
		)
public class BaseControl extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Map<String,String> map=new HashMap<String,String>()  ;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BaseControl() {
        super();
        // TODO Auto-generated constructor stub
    }
    @Override
    public void init(ServletConfig config) throws ServletException {
    	// TODO Auto-generated method stub
    	map.put("blue",config.getInitParameter("blue"));//blue.jsp
    	map.put("red",config.getInitParameter("red"));//red.jsp
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String color=request.getParameter("color");
		RequestDispatcher dispatcher=null;
		if(color.equals("blue")){
			dispatcher=request.getRequestDispatcher(map.get("blue"));
			//response.sendRedirect("blue.jsp");
		}else{
			dispatcher=request.getRequestDispatcher(map.get("red"));
			//response.sendRedirect("red.jsp");
		}
		dispatcher.forward(request, response);
//		response.setContentType("text/html");
//		response.setCharacterEncoding("utf-8");
//		PrintWriter out=response.getWriter();
//		
//		out.println("<b>Ò×Ê¥Í¨</b>");
//		
//		out.flush();
//		out.close();
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
	

}
