<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body bgcolor="#D133FF">
<div style="text-align: center;">
<h2>Enter your Details</h2>
</div>
<form action="Register2.jsp">
	
	Name:<input type="text" name="name">
	<br><br>
	Email:<input type="email" name="email">
	<br><br>
	Age:<input type="number" name="age">
	<br><br>
	Gender:<input type="text" name="gender">
	<br><br>
	Address:<input type="text" name="address">
	<br><br>
	PHONE NO:<input type="number" name="phone no">
	<br><br>
	Number of Travelers<input type="number" name="noofpass">
	<br><br>
	<input type="submit" value="Next">

</form>


</body>
</html>