<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="a" class="com.weikun.vo.Animal">
		<jsp:setProperty name="a" property="*"/>
	</jsp:useBean>	
	
	<jsp:getProperty property="name" name="a"/>
	<jsp:getProperty property="age" name="a"/>
	
	
</body>
</html>