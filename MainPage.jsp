
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body bgcolor="#D133FF">
<Div style="text-align: center;">

<h1>Welcome to FlyAway</h1>
</Div>
<form method = "post" action = "FlightList.jsp">
	Departure:<input type="text" name="Departure">
	&rarr;
	Destination:<input type="text" name="Destination">
	
	
	<br><br>
	Travel Date:<input type="date" name="date">
	<br><br>
	<input type="submit" value="Show Flights">
</form>

<!-- fetch data from the database Of the available flights-->


</body>
</html>