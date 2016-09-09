<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form id="form1" name="form1" action="7.jsp" method="get">
		姓名：<input type="text" name="name" value="<%=java.net.URLEncoder.encode("中文","utf-8")%>"/>
		年龄：<input type="text" name="age"/>
		<input type="submit">
	</form>

</body>
</html>