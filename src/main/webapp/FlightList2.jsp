<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body bgcolor="#D133FF">
<div style="text-align: center">
<h1>List of Available Flights</h1>
<br>
</div>
<!-- take user input from index.jsp and  -->
<h2>Showing Results for</h2>
<ul>
         <li><p><b>Departure:</b>
            <%= request.getParameter("Departure")%>
         </p></li>
         <li><p><b>Destination:</b>
            <%= request.getParameter("Destination")%>
         </p></li>
         <li><p><b>Date:</b>
            <%= request.getParameter("date")%>
         </p></li>
      </ul>
<% 
String ps1 = request.getParameter("ps1");
%>
      
      
<div style="text-align: center">
<form action="Register.jsp">
<input type="submit" value="Next">
</form>

</div>
</body>
</html>