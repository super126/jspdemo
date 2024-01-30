<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%!int a=10 ;
		int b=55;
	%>
	<%! int sum(int a,int b)
	{
		return a+b;
	}
	%>
	<%= "SUM:"+ sum(10,55) %>
</body>
</html>