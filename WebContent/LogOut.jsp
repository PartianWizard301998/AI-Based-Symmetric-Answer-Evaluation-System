<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h2>

Your Session Has Been Expired login Again !!!
</h2>
<a href="index.jsp">Login Here</a>
</body>
</html>
<%
HttpSession hs= request.getSession();
session.invalidate();
response.sendRedirect("index.jsp");
%>