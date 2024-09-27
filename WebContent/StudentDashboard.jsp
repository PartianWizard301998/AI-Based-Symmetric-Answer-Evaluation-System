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
		String studid;
		String testid,totaltime;
		%>
		<%
	
		
		try{
		HttpSession hs=request.getSession();
	     name=hs.getAttribute("Studname").toString();
	     studid=hs.getAttribute("StudId").toString();
	     testid=hs.getAttribute("testid").toString();
	     totaltime=hs.getAttribute("Time").toString();
	     
       out.println(testid);
		}catch(Exception e){
			//response.sendRedirect("LogOut.jsp");
			out.println(""+e);
		}
		%>
		<div id="page-wrapper" style="background-color:#f8f8ff;">
			<div class="main-page">
			
			<br/>
			<div class="row">
			<div class="col-md-4">
			<h3>Student Name: <%out.println(name) ;%></h3>
			</div>
			<div class="col-md-4">
			<h3>Total Time:<%out.println(totaltime) ;%></h3>
			</div>
			<div class="col-md-4">
			<h3>Remaining Time:</h3>
			</div>
			
			</div>
		      
              <%@ page import="java.sql.*" %>
		      <%
		      String question="";
		      String option1="";
		      String option2="";
		      String option3="";
		      String option4="";
		      String qindex="0";
		      String dbrightans="0";
		      String rightans="0";
		      String qsmarks="0";
		      String questionid="0";
		      String isclick=request.getParameter("sub");
		     
		      if(isclick!=null){
		    	  
		    qindex=request.getParameter("qindex").trim();
		      //out.println("Qindex"+qindex);
		      
		       String answer=request.getParameter("ans");
		       String qid1=request.getParameter("qid");
		       String qmarks=request.getParameter("marks");
		       dbrightans=request.getParameter("rightans");
		       //out.println("Right Answer"+dbrightans+"User Given Answ"+answer);
		       
		       String isright="0";
		       
		       /*
		       if(answer.contentEquals(dbrightans.trim())){
		    	   isright="1";
		       }
                  */
		       
		       Class.forName("com.mysql.jdbc.Driver");
	           Connection con= DriverManager.getConnection("jdbc:mysql://localhost/DescriptiveAnswer","root","root");
		       PreparedStatement prst=con.prepareStatement("insert into answers(TestId,Qid,isright,answergiven,studentid,marks)values(?,?,?,?,?,?)");
		       prst.setString(1,testid.trim());
		       prst.setString(2,qid1.trim());
		       prst.setString(3,isright);
		       prst.setString(4,answer);
		       prst.setString(5,studid);
		       prst.setString(6,qmarks);
		       prst.executeUpdate();
		       
		       
		       
		      }else{
		    	  
		    	 // qindex=request.getParameter("qindex");
		      }
		      
		    //  qindex="0";
		      int  int_qindex=Integer.parseInt(qindex)+1;
		    	  try{
		    		  
		          	  
		      // testid="2";
		    	 String str2=request.getParameter("studname");
		         Class.forName("com.mysql.jdbc.Driver");
	             Connection con= DriverManager.getConnection("jdbc:mysql://localhost/DescriptiveAnswer","root","root");
	             Statement stm=con.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_READ_ONLY);
	             ResultSet rs=stm.executeQuery("select * from questions where TestId="+testid+"");
	          // PreparedStatement prst=con.prepareStatement("select * from questions");
	             
		        //ResultSet rs=prst.executeQuery();
		        rs.absolute(int_qindex);
		        questionid=rs.getString(1);
		        question=rs.getString(3);
		        option1=rs.getString(4);
		        option2=rs.getString(5);
		        option3=rs.getString(6);
		        option4=rs.getString(7);
		        questionid=rs.getString(1);
		        rightans=rs.getString(8);
		        qsmarks=rs.getString(9);
		        
		        
		      }catch(Exception e){
		    	  
		    	  
		    	%>
		    	<script>
		    	 if (window.top != window.self) {
		    	        window.top.location = "TestResult.jsp";
		    	    }		    	
		    	</script>
		    	
		    	
		    	<% 
		    	 //x response.sendRedirect("TestResult.jsp");
		    	 //out.println(""+e);
		      }
		    
		      %>
				<!--//row-->
				<div class="row">
			<div class="col-md-2">
			
			</div>
			<div class="col-md-8">
	         <br/>
	         <br/>
	         <br/>
			 <div class="panel panel-default">
               <div class="panel-body">
              		<form method="post">
              		<input type="hidden" name="qindex"  value="<%out.println(""+int_qindex); %> ">
              		<input type="hidden" name="qid"  value="<%out.println(""+questionid); %> ">
              		<input type="hidden" name="rightans"  value="<%out.println(""+rightans); %> ">
              		<input type="hidden" name="marks"  value="<%out.println(""+qsmarks); %> ">
              		<input type="hidden" name="time"  value="<%out.println(""+totaltime); %> ">
			<table>
			 <tr>
			<h3><%out.println("Q"+int_qindex); %><% out.println(" . "+question); %></h3>
			<br/>
			<br/>
			 </tr>
			 <tr>
			<h3><textarea name="ans" placeholder="Enter Answer"  class="form-control" ></textarea> </h3>
			<br/>
			 </tr>
			 <tr>
			<h3><input type="submit" value="Submit & Next" name="sub"> </h3>
			<br/>
			 </tr>
            </table>
            
            </form>
            </div>
            </div>
			</div>
			<div class="col-md-2">
			
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