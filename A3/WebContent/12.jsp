<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	
	<%	
	
		
		pageContext.setAttribute("akey", "aaa",PageContext.APPLICATION_SCOPE);//page
		pageContext.getServletContext().setAttribute("akey", "aaa");//application
		pageContext.setAttribute("pkey", "ppp",PageContext.PAGE_SCOPE);//page
		pageContext.setAttribute("rkey", "rrr", PageContext.REQUEST_SCOPE);
		//pageContext.getRequest().setAttribute("rkey", "request");
		//request.setAttribute("rkey", "request");
		
		pageContext.setAttribute("skey", "sss", PageContext.SESSION_SCOPE);
		//pageContext.getSession().setAttribute("skey", "session");
		//session.setAttribute("skey", "session");
	%>
	<jsp:include page="13.jsp"></jsp:include>
	<%@ include file="15.jsp" %>
	
	<a href="13.jsp">点击</a>
</body>
</html>