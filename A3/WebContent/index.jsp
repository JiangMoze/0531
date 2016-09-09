<%@ page language="java" import="java.util.*,java.text.*" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
	
	h1{
		color: red;
	}
	.a{
		color:red;
	}
	.b{
		color:blue;
	}
</style>
</head>
<body>
	<h1>我爱你中国</h1>
	<%
		String name="MIKE";	
	%>
	<h1><%=name%></h1>
	
	<h1><%="JACK"%></h1>
	
	<h1><%=1+1%></h1>
	<%
		SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
	%>
	<%=sdf.format(new Date())%>
	
	<br/>
	<%
		for(int i=1;i<5;i++){
			
			for(int j=1;j<=2*i;j++){
				if(i%2==0){
	%>
					<span class="a">
	<%
						out.print(2*i);
	
	
	%>
					</span>
	<%
				}else{
	%>
					<span class="b">
	<%
						out.print(2*i);
	%>
					</span>
	<%
				}
				
			}
	%>
		<br/>		
	<%		
		}
	%>
	
		
	
</body>
</html>