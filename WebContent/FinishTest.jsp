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
HttpSession hs=request.getSession();
String name=hs.getAttribute("Studname").toString();
String studid=hs.getAttribute("StudId").toString();
String testid=hs.getAttribute("testid").toString();
Class.forName("com.mysql.jdbc.Driver");
Connection con= DriverManager.getConnection("jdbc:mysql://localhost/onlineexam","root","root");



PreparedStatement prst=con.prepareStatement("insert into results(TestId,MarksObtain,Studid,ispass,StudName)values(?,?,?,?,?)");
prst.setString(1,testid);
prst.setString(2,request.getParameter("marksobtain"));
prst.setString(3,studid);
prst.setString(4,request.getParameter("ispass"));
prst.setString(5,name);
prst.executeUpdate();


try{
PreparedStatement prst22=con.prepareStatement("delete from answers where TestId=? and studentid=? ");

prst22.setString(1, testid);
prst22.setString(2, studid);
prst22.executeUpdate();
}catch(Exception e){
	out.println(""+e);
}

response.sendRedirect("LogOut.jsp");



%>

</body>
</html>