<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
   
    
	动作：
	<jsp:include page="header.jsp">
		<jsp:param name="key" value="100"/>	
	</jsp:include>
	指令：<%@include file="header.jsp" %>

	我是Body
	<jsp:include page="footer.html"></jsp:include>
	
	<%@include file="footer.html" %>

