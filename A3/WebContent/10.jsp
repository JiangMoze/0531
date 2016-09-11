<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String s=java.net.URLEncoder.encode("哈尔滨","utf-8");%>
	<%=s %>
	<a href='8.jsp?username=<%=s%>&sex=female'>跳转</a>
	<%
		request.setAttribute("myname", "mike");
	
	%>
	
	
	
	
	<form id="form1" name="form1" action="11.jsp" method="get">
		<input type="text" name="username">
		<input type="text" name="password">
		<br/>
		吃麻辣烫<input type="checkbox" name="interest" value="mlt" checked="checked"/>
		吃炸鸡<input type="checkbox" name="interest" value="zj"/>
		吃食堂<input type="checkbox" name="interest" value="st"/>
	
		<input type="submit">
	</form>
	
</body>
</html>