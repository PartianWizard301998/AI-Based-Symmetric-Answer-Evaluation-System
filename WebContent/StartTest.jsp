<!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE HTML>
<html>
<head>
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
<body >
	<div class="main-content">
		<!--left-fixed -navigation-->
	
		<!--left-fixed -navigation-->
		<!-- header-starts -->
		<div class="sticky-header header-section ">
			
			<div class="row">
		
		<div class="col-md-10">
		<img src="images/rmit.jpg" class="img-responsive" width="1400px"alt="" />
		
		</div>
	<div class="col-md-2">
		<h2 style="color:red">Descriptive Answer Evaluation</h2>
		</div>
		</div>	
		</div>
		<!-- //header-ends -->
		<!-- main content start-->
		<%!
		String name;
		String id;
		%>
		<%
	
		
		try{
		HttpSession hs=request.getSession();
	     name=hs.getAttribute("Studname").toString();
	     id=hs.getAttribute("StudId").toString();
		}catch(Exception e){
			response.sendRedirect("LogOut.jsp");
		}
		%>
		<div id="page-wrapper" style="background-color:#f8f8ff;">
			<div class="main-page">
			
			<br/>
		
		      
              <%@ page import="java.sql.*" %>
		     
				<!--//row-->
				<div class="row">
			<div class="col-md-4">
			
			</div>
			<div class="col-md-4">
	         <br/>
	         <br/>
	         <br/>
			 <div class="panel panel-default">
               <div class="panel-body">
              		<form>
              		<%
              		String studid="";
              		 String testid="";
              		String testtime="";
              		%>
              		<%
              		try{
              		 HttpSession hs=request.getSession();
              		 String name=hs.getAttribute("Studname").toString();
              		
              		 studid=hs.getAttribute("StudId").toString();
              		 
              		 
              		 Class.forName("com.mysql.jdbc.Driver");
                     Connection con= DriverManager.getConnection("jdbc:mysql://localhost/DescriptiveAnswer","root","root");
                    
                     
                     
                     
                     
                     
                     
                     
                     
                     
                     
                     
                     PreparedStatement prst3=con.prepareStatement("select * from testdetails where isLive=?");
        			 prst3.setString(1, "1");
        			 ResultSet rs33=prst3.executeQuery();
        			 while(rs33.next()){
        				 testid=rs33.getString(1);
        				 hs.setAttribute("testid",rs33.getString(1));
        				 hs.setAttribute("PassingMarks",rs33.getString(5));
        				 hs.setAttribute("Time",rs33.getString(6));
        				 testtime=rs33.getString(6);
        				%> 
        			
			<table class="table table-striped">
			 <tr>
			 <td><h4>Student Name</h4></td>
			  <td><h4><%out.println(name); %></h4></td>
			 </tr>
			 <tr>
			 <td><h4>Test Title</h4></td>
			    <td><h4><%out.println(rs33.getString(2)); %></h4></td>
			 </tr>
			  <tr>
			 <td><h4>Test Subject </h4></td>
			    <td><h4><%out.println(rs33.getString(3)); %></h4></td>
			 </tr>
			  <tr>
			 <td><h4>Total Mark</h4></td>
			  <td><h4><%out.println(rs33.getString(4)); %></h4></td>
			 </tr>
			 
			  <tr>
			 <td><h4>Passing Mark</h4></td>
			  <td><h4><%out.println(rs33.getString(5)); %></h4></td>
			 </tr>
			 <tr>
			 <td><h4>Test Time</h4></td>
			  <td><h4><%out.println(rs33.getString(6)); %></h4></td>
			 </tr>
			 <tr>
			 <td><h4>Instruction</h4></td>
			  <td>*Make Sure you have Good Internet Connection.<br/>
			  *Student found cheating during examination will not be allowed to attempt the test.
			  </td>
			 </tr>
            </table>
            <br/>
            
            <%
            boolean isgiven=false;
            PreparedStatement prstm224=con.prepareStatement("select * from answers where studentid=? and TestId=?");
            prstm224.setString(1,studid);
            prstm224.setString(2, testid);
            ResultSet rs22=prstm224.executeQuery();
            
            while(rs22.next()){
            	//out.println(rs22.getString(2));
            	isgiven=true;
            }
            
            if(isgiven){
            %>
             <h3>Test is given already </h3>
            <%}else{ %>
          <h3>  <a href="Watch.jsp?clock22=<%out.println(testtime); %>">&nbsp;&nbsp;&nbsp; <input type="button" value="Start Test" name="starttest"></a></h3>
           <% 
            }
            }
              	
        			 
        			 
        			PreparedStatement prst4=con.prepareStatement("insert into testattendance (studid,testid) values(?,?)");
         			prst4.setString(1,studid);
         			prst4.setString(2, testid);
         			prst4.executeUpdate();
         			 
        			 
        			 
        			 
        			 
              		}catch(Exception e){
              			out.println(""+e);
              		}
              		%>
            </form>
            </div>
            </div>
			</div>
			<div class="col-md-4">
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