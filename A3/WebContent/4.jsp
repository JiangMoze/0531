<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.weikun.vo.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body><!-- 实例化 -->
	<jsp:useBean id="a1" class="com.weikun.vo.Animal" scope="page">	
	</jsp:useBean>
	<jsp:setProperty property="name" name="a1" value="鹦鹉"/>
	<jsp:getProperty property="name" name="a1"/>	
</body>
</html>