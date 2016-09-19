<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.weikun.vo.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
		欢迎<%
		
			BBSUser user=(BBSUser)session.getAttribute("user");
		
		%>
		<%=user.getUsername() %>
		
		<a href="index.html">重新登录</a>
		<a href="loginout.jsp">注销</a>
		
</body>
</html>