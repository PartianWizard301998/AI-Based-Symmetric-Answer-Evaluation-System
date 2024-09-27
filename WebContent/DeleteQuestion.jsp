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
   try{
   String stdid=request.getParameter("id");
   out.println(""+stdid);
   Class.forName("com.mysql.jdbc.Driver");
   Connection con= DriverManager.getConnection("jdbc:mysql://localhost/DescriptiveAnswer","root","root");
   PreparedStatement prst=con.prepareStatement("delete from questions where Qid=?");
   prst.setString(1, stdid);   
   prst.executeUpdate(); 
   }catch(Exception e){
	   out.println(""+e);
   }
   %>
   <script>
   alert("Record Deleted Sucessfully");
   window.location="AddQuestion1.jsp";
   
   </script>
</body>
</html>