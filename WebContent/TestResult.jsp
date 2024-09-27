<!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE HTML>
<html>
<head>
<script language="JavaScript"><!--
javascript:window.history.forward(1);
//--></script>
<title>Baxster an Admin Panel Category Flat Bootstrap Responsive Website Template | Home :: w3layouts</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Baxster Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
SmartPhone Compatible web template, free WebDesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- Bootstrap Core CSS -->
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<!-- Custom CSS -->
<link href="css/style.css" rel='stylesheet' type='text/css' />
<!-- font CSS -->
<link rel="icon" href="favicon.ico" type="image/x-icon" >
<!-- font-awesome icons -->
<link href="css/font-awesome.css" rel="stylesheet"> 
<!-- //font-awesome icons -->
<!-- chart -->
<script src="js/Chart.js"></script>
<!-- //chart -->
 <!-- js-->
<script src="js/jquery-1.11.1.min.js"></script>
<script src="js/modernizr.custom.js"></script>
<!--webfonts-->
<link href='//fonts.googleapis.com/css?family=Roboto+Condensed:400,300,300italic,400italic,700,700italic' rel='stylesheet' type='text/css'>
<!--//webfonts--> 
<!--animate-->
<link href="css/animate.css" rel="stylesheet" type="text/css" media="all">
<script src="js/wow.min.js"></script>
	<script>
		 new WOW().init();
	</script>
<!--//end-animate-->
<!-- Metis Menu -->
<script src="js/metisMenu.min.js"></script>
<script src="js/custom.js"></script>
<link href="css/custom.css" rel="stylesheet">
<!--//Metis Menu -->
</head> 
<body class="cbp-spmenu-push" >
	<div class="main-content">
		<!--left-fixed -navigation-->
	
		<!--left-fixed -navigation-->
		<!-- header-starts -->
		<div class="sticky-header header-section ">
			
			<div class="row">
		<div class="col-md-2">
		<h2>Online Examination System</h2>
		</div>
		<div class="col-md-10">
		<img src="images/rmit.jpg" class="img-responsive" width="1400px"alt="" />
			<%@ include file = "AdminHeader.jsp" %>
		</div>
	
		</div>	
		</div>
		<!-- //header-ends -->
		<!-- main content start-->
		<%!
		String name,passingmarks;
		String id,testid;
		 int mark=0,passmark=0;
		%>
		
		<!-- -
		
		To generate the results we can delete the whole record and insert values in new results table which no need to clear
		
		
		 -->
		
		
		
		
		<%
	
		
		try{
		HttpSession hs=request.getSession();
	     name=hs.getAttribute("Studname").toString();
	     id=hs.getAttribute("StudId").toString();
		}catch(Exception e){
			response.sendRedirect("LogOut.jsp");
		}
		%>
		
	
		<div id="page-wrapper">
			<div class="main-page">
			
			<br/>
		
		      
              <%@ page import="java.sql.*" %>
		     
				<!--//row-->
				<div class="row">
			<div class="col-md-4">
			
			</div>
			<div class="col-md-8">
		
	         <br/>
	         <br/>
	         <br/>
			 <div class="panel panel-default">
               <div class="panel-body">
             
            
            <br/>
          <a href="index.jsp"> <input type="submit" value="Finish Test"></a> 
            </div>
            </div>
			</div>
			
			</div>
			</div>
		</div>
		<!--footer-->
	   <!-- /page footer -->
		</div>
        <!--//footer-->
	</div>
	<!-- Classie -->
		
		
</body>
</html>