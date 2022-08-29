<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
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

String driverName = "com.mysql.cj.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String dbName = "flightsdetails";
String userId = "root";
String password = "root";

try {
Class.forName(driverName);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}

Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<h2 align="center"><font color="#040405"><strong>Available flights</strong></font></h2>
<table align="center" cellpadding="4" cellspacing="4">
<tr>

</tr>
<tr bgcolor="#008000">
<td><b>Departure</b></td>
<td><b>Destination</b></td>
</tr>
<%
try {
connection = DriverManager.getConnection(
connectionUrl + dbName, userId, password);
statement = connection.createStatement();
String sql = "select *from flights_table where Departure = ? and Destination=?";

resultSet = statement.executeQuery(sql);
while (resultSet.next()) {
%>
<tr bgcolor="#8FBC8F">

<td><%=resultSet.getString("Departure")%></td>
<td><%=resultSet.getString("Destination")%></td>


</tr>

<%
}

} catch (Exception e) {
e.printStackTrace();
}
%>
</table>    
      
<div style="text-align: center">
<form action="Register.jsp">
<input type="submit" value="Book Now">
</form>

</div>
</body>
</html>