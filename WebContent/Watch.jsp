<html><head> 
<script> 
<!-- 
<% 
String str2=request.getParameter( "clock22" ); 
String clock = request.getParameter( "clock" ); 
if( clock == null ) clock = str2; 
%> 
var timeout = <%=clock%>; 
function timer() 
{ 
if( --timeout > 0 ) 
{ 
document.forma.clock.value = timeout; 
window.setTimeout( "timer()", 10000 ); 
} 
else 
{ 
document.forma.clock.value = "Time over"; 
///disable submit-button etc 
window.location="TestResult.jsp";
} 
} 
//--> 
</script> 
<body> 
<form action="<%=request.getRequestURL()%>" name="forma"> 
<h2>Time Remaining: <input type="text" name="clock" value="<%=clock%>" style="color:red; height:30px; font-size:30px;border:0px solid white"></h2> 

</form> 
<script> 
<!-- 
timer(); 
//--> 
</script> 



<iframe src="StudentDashboard.jsp" width="1400px" height="800px"></iframe>
</body></html>