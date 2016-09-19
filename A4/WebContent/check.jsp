<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.weikun.service.*,com.weikun.vo.*"%>

   <%
   			
   		IUserService service=new UserServiceImpl();
   		String username=request.getParameter("username");
   		String pwd=request.getParameter("pwd");
   		BBSUser user=new BBSUser();
   		user.setUsername(username);
   		user.setPwd(pwd);
   		if(service.login(user)){
   			session.setAttribute("user", user);
   			response.sendRedirect("success.jsp");
   		}else{//失败了
   	%>
   			<script type="text/javascript">

				alert("非法入侵");
				window.location="index.html";
			</script>
   	<%		
   			
   		}
   %>