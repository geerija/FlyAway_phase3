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
<%
String Name = request.getParameter("Name");
String email = request.getParameter("email");
String Age= request.getParameter("Age");
String gender = request.getParameter("gender");
String address = request.getParameter("address");
String phone_no= request.getParameter("phone_no");
String noofpassenger = request.getParameter("noofpassenger");
%>
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
            ps1 = con.prepareStatement("insert into personal_details values (?,?,?,?,?,?,?)");
            ps1.setString(1, Name);
            ps1.setString(2, email);
            ps1.setString(3, age);
            ps1.setString(4, gender);
            ps1.setString(5, address);
            ps1.setString(6, phone_no);
            ps1.setString(7, noofpassenger);
            ps1.execute();
    		ps1.close();
    		con.close();
            
            
        }
        catch(Exception ex)
        {
            ex.printStackTrace();
        }
    }
%>
<jsp:include page="Register.jsp"></jsp:include>
</body>
</html>