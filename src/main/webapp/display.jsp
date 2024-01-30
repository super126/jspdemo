<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h1>THE VIEW OF DATABASE TABLE</h1>
	<%
		Class.forName("com.mysql.cj.jdbc.Driver");
	    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/project1","root","sangeeta@468");
	    Statement st=con.createStatement();
	    ResultSet rs=st.executeQuery("select * from user");
	%>
	<table border="1">
		<tr>
			<th>phone</th>
			<th>name</th>
			<th>email</th>
			<th>address</th>
			<th>dob</th>
			<th>password</th>
		</tr>
	<%
			while(rs.next())
			{
	%>
		<tr>
			<td><%= rs.getString(1) %></td>
			<td><%= rs.getString(2) %></td>
			<td><%= rs.getString(3) %></td>
			<td><%= rs.getString(4) %></td>
			<td><%= rs.getString(5) %></td>
			<td><%= rs.getString(6) %></td>
		</tr>
	<% 		}
	%>
	</table>
</body>
</html>