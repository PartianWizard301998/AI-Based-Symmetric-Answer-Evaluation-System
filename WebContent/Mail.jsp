<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
    <%@ page import="javax.mail.Session"%>
    <%@ page import="java.util.Properties"%>
    <%@ page import="javax.mail.Message"%>
    <%@ page import="javax.mail.MessagingException"%>
    <%@ page import="javax.mail.PasswordAuthentication"%>
    <%@ page import="javax.mail.Transport"%>
    <%@ page import="javax.mail.internet.AddressException"%>
    <%@ page import="javax.mail.internet.InternetAddress"%>
    <%@ page import="javax.mail.internet.MimeMessage"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%
//final String gmailEmail=request.getParameter("sender");

Properties props = new Properties();
props.put("mail.smtp.starttls.enable", "true");
props.put("mail.smtp.auth", "true");
props.put("mail.smtp.host", "smtp.gmail.com");
props.put("mail.smtp.port", "587");

Session session67 = Session.getInstance(props,
        new javax.mail.Authenticator() {
          protected PasswordAuthentication getPasswordAuthentication() {
              return new PasswordAuthentication("onlinedescexamportal@gmail.com","3031998@vishal");
          }
          
        });
try {
	//String email=";
	String strTo=request.getParameter("to");
	String gsubject=request.getParameter("subject");
	String gbody=request.getParameter("body");
    Message message = new MimeMessage(session67);
    message.setFrom(new InternetAddress("onlinedescexamportal@gmail.com"));
    message.setRecipients(Message.RecipientType.TO,
        InternetAddress.parse(strTo));/*sends one email*/
    message.setSubject(gsubject);
    message.setText(gbody);

    Transport.send(message);
	out.print(request.getParameter("to"));
    System.out.println("Done");
    %>
    <script>
    alert("Mail Sent Successfuly !");
    //window.location="FacultyDashboard.jsp"
    </script>
    <%

} catch (Exception e) {
    out.println(""+e);
}
%>		 
</body>
</html>