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
		String count=application.getInitParameter("count");
		
		if(application.getAttribute("count")==null){//第一次访问
			
			application.setAttribute("count", count);
		}else{//不是第一次访问
			
			count=application.getAttribute("count").toString();
		
			application.setAttribute("count", Integer.parseInt(count)+1);
		}
	%>
	
	欢迎你，你是第<%
			String  count1=application.getAttribute("count").toString();
			char [] cs=count1.toCharArray();
			for(char c :cs){
				
		%>
				<img alt="" src="count/<%=c%>.gif">
		<%		
			}
	
	
	%>位访客
</body>
</html>