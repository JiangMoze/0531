<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<a href="19.jsp">你好</a>
	<%
// 		response.setContentType("text/html");
// 		response.setCharacterEncoding("UTF-8");
// 		response.sendRedirect("19.jsp");
		
		Cookie c=new Cookie("www.papaok.org","username");
		c.setMaxAge(3600*24*3);//声明周期
		response.addCookie(c);
	
	%>
	<h1>设置cookie完毕</h1>
</body>
</html>