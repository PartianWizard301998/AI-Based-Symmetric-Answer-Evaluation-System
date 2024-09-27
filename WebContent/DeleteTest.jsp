<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@ page import="java.sql.*" %>
  <%
  String tid=request.getParameter("id");
            try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection con= DriverManager.getConnection("jdbc:mysql://localhost/DescriptiveAnswer","root","root");
            PreparedStatement prst=con.prepareStatement("delete from testdetails where TestId=?");
            prst.setString(1, tid);
            prst.executeUpdate();
            %>
            <script>
            
            alert("Record Deleted Sucessfully");
            window.location="ViewTest.jsp";
            </script>
            
            <% 
            }catch(Exception e){
            	
            }
  %>
</body>
</html>