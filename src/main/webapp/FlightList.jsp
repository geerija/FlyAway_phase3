<%@ page import="java.sql.*"%>
<%@ page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%!
    Connection con;
    PreparedStatement ps1;
    public void jspInit()
    {
        try
        {
            //loading the driver
            Class.forName("com.mysql.cj.jdbc.Driver");
            //establish the connection
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/flightsdetails","root","root");
            //create statement object
            ps1 = con.prepareStatement("select *from flights_table where Departure = ? and Destination=?");
        }
        catch(Exception ex)
        {
            ex.printStackTrace();
        }
    }
%>
<%
String Departure = request.getParameter("Departure");
String Destination = request.getParameter("Destination");
//set form data as param value
ps1.setString(1,Departure);
ps1.setString(2,Destination);

//excute the query
if(Departure.equals("Delhi"))
{
%>

<jsp:forward page="FlightList2.jsp">


<jsp:param value="Departure" name="Departure"/>
<jsp:param value="Destination" name="Destination"/>
<jsp:param value="date" name="date"/>
</jsp:forward>

<%}

else{ %>

<h2>Flights Not Available to Your Destination....!</h2>
<jsp:include page="MainPage.jsp"></jsp:include>
<%
} 

%>
<%!
    public void jspDestroy()
    {
        try
        {
            //colse
            ps1.close();
            con.close();
        }
        catch(Exception ex)
        {
            ex.printStackTrace();
        }
    }
%>

</body>
</html>