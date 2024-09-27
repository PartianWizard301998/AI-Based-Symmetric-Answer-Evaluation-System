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
<body class="cbp-spmenu-push">
	<div class="main-content">
		<!--left-fixed -navigation-->
		<div class="sidebar" role="navigation">
            <div class="navbar-collapse">
					<nav class="cbp-spmenu cbp-spmenu-vertical cbp-spmenu-right dev-page-sidebar mCustomScrollbar _mCS_1 mCS-autoHide mCS_no_scrollbar" id="cbp-spmenu-s1">
					<div class="scrollbar scrollbar1" style="background-color:dark blue;">
						<ul class="nav" id="side-menu">
							<li>
							<br/>
							<br/>
								<a href="AdminDashboard.jsp" class="active"><i class="fa fa-home nav_icon"></i>Dashboard</a>
							</li>
							<li>
								<a href="#"><i class="fa fa-cogs nav_icon"></i>Test Module<span class="fa arrow"></span></a>
								<ul class="nav nav-second-level collapse">
									<li>
										<a href="CreateTest.jsp">Create  New Test</a>
									</li>
									<li>
										<a href="ViewTest.jsp">Show Test</a>
									</li>
								</ul>
								<!-- /nav-second-level -->
							</li>
							<li>
								<a href="#"><i class="fa fa-book nav_icon"></i>Questions Module <span class="fa arrow"></span></a>
								<ul class="nav nav-second-level collapse">
									<li>
										<a href="AddQuestion1.jsp">Add New Questions </a>
									</li>
									
								</ul>
								<!-- /nav-second-level -->
							</li>
						
							
							
							
							
							
							<li>
								<a href="#" class="chart-nav"><i class="fa fa-list-ul nav_icon"></i>Get Results<span class="fa arrow"></span></a>
								<ul class="nav nav-second-level collapse">
									<li>
										<a href="CurrentTestResults.jsp">View Current Test Results </a>
									</li>
									<li>
										<a href="TestResults.jsp">Results By Search</a>
									</li>
								</ul>
								<!-- //nav-second-level -->
							</li>
							
							
							
							<li>
								<a href="#" class="chart-nav"><i class="fa fa-list-ul nav_icon"></i>Student Module<span class="fa arrow"></span></a>
								<ul class="nav nav-second-level collapse">
									<li>
										<a href="AddStudent.jsp">Add New Student </a>
									</li>
									<li>
										<a href="SearchStudent.jsp"> Students Search</a>
									</li>
								</ul>
								<!-- //nav-second-level -->
							</li>
							
							
							
							
							
							<li>
								<a href="index.jsp" class="chart-nav"><i class="fa fa-bar-chart nav_icon"></i>LogOut</a>
							</li>
						</ul>
					</div>
					<!-- //sidebar-collapse -->
				</nav>
			</div>
		</div>
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
		String testid="";
		int score=0;
		float totalscore1=0;
		int passingark=0;
		%>
		<div id="page-wrapper" style="background-color:#f8f8ff;">
			<div class="main-page">
			<%@ page import="java.sql.*" %>
			<br/>
			<br/>
			<h3> Current Live Test</h3>
		     <hr>
			<table class="table table-striped">
		      <tr class="danger">
		      <td>Test Id</td>
		       <td>Test Title</td>
		        <td>Subject</td>
		        <td>Total Mark</td>
		          <td>Passing Mark</td>
		           <td>Test Time</td>
		      </tr>
			<%
			totalscore1=0;
			
			 Class.forName("com.mysql.jdbc.Driver");
             Connection con= DriverManager.getConnection("jdbc:mysql://localhost/DescriptiveAnswer","root","root");
			 PreparedStatement prst3=con.prepareStatement("select * from testdetails where isLive=?");
			 prst3.setString(1, "1");
			 ResultSet rs33=prst3.executeQuery();
			 while(rs33.next()){
				 
				 passingark=Integer.parseInt(rs33.getString(5));
			
				 testid=rs33.getString(1);
			 %>
			
		      <tr class="danger">
		      <td><%out.println(rs33.getString(1)); %></td>
		       <td><%out.println(rs33.getString(2)); %></td>
		         <td><%out.println(rs33.getString(3)); %></td>
		           <td><%out.println(rs33.getString(4)); %></td>
		         <td><%out.println(rs33.getString(5)); %></td>
		         <td><%out.println(rs33.getString(6)); %></td>
		      </tr>
		   <% }
			%>
		      </table>
		      <div class="panel panel-default">
  <div class="panel-heading"><h3> Solved Test</h3></div>
  <div class="panel-body">
		  
		     
		     <hr>
		     
		     <form action="CalculateMark.jsp" method="POST">
		     	<table class="table table-striped">
		      <tr class="danger">
		      <td><b>Question</b></td>
		      <td><b>Answer Given</b></td>
		      <td><b>Option1</b></td>
		       <td><b>Option2</b></td>
		        <td><b>Option3</b></td>
		         <td><b>Option4</b></td>
		         <td><b>Answer Score</b></td>
		      </tr>
			<% 
			try{
				
				
				String get_studid=request.getParameter("studid");
				String get_testid=request.getParameter("testid").trim();
				
				
			 PreparedStatement prst32=con.prepareStatement("select * from answers ans,questions que where ans.TestId=? and ans.studentid=? and que.Qid=ans.Qid");
			 prst32.setString(1,get_testid);
			 prst32.setString(2,get_studid);
			 ResultSet rs12=prst32.executeQuery();
			 while(rs12.next()){
				  score=0;
			 %>
		      <tr class="danger">
		       <td><%out.println(rs12.getString(10)); %>
		       
		       </td>
		       <td><%out.println(rs12.getString(6)); %></td> 
		       <td>
		       <%
		   String x = rs12.getString(11).trim().toLowerCase();
		   String s = rs12.getString(6).toLowerCase().trim();
		   int index = 0;
		   for(int i = 0; i < s.length() && index < x.length(); i++){
		       if(s.charAt(i) == x.charAt(index)) index++;
		   }
		   boolean exists = index == x.length();
		   if(exists){
			   score=score+1;
			 %>
<img src="images/true.png" width=20px height=20px;>
			 <%
		   }else{
%>			   
<img src="images/false.png" width=20px height=20px;>			   
<% 		   
		   }
				
			%>		
             </td>
             
             
 <!-- Checking for option 2 -->          
             
             
     <td>
		       <%
		   String x1 = rs12.getString(12).trim().toLowerCase();
		   
		   int index1 = 0;
		   for(int i = 0; i < s.length() && index1 < x1.length(); i++){
		       if(s.charAt(i) == x1.charAt(index1)) index1++;
		   }
		   boolean exists1 = index1 == x1.length();
		   if(exists1){
			   score=score+1;
			 %>
<img src="images/true.png" width=20px height=20px;>
			 <%
		   }else{
%>			   
<img src="images/false.png" width=20px height=20px;>			   
<% 		   
		   }
				
			%>		
             </td>        
             
     
 
  
 
 
      <td>
		       <%
		   String x2 = rs12.getString(13).trim().toLowerCase();
		  // out.println(x2);
		   int index2 = 0;
		   for(int i = 0; i < s.length() && index2 < x2.length(); i++){
		       if(s.charAt(i) == x2.charAt(index2)) index2++;
		   }
		   boolean exists2 = index2 == x2.length();
		   if(exists2){
			   score=score+1;
			 %>
<img src="images/true.png" width=20px height=20px;>
			 <%
		   }else{
%>			   
<img src="images/false.png" width=20px height=20px;>			   
<% 		   
		   }
				
			%>		
             </td>     
 
 
 
 
 
 
  <td>
		       <%
		   String x3 = rs12.getString(14).trim().toLowerCase();
		  // out.println(x2);
		   int index3 = 0;
		   for(int i = 0; i < s.length() && index3 < x3.length(); i++){
		       if(s.charAt(i) == x3.charAt(index3)) index3++;
		   }
		   boolean exists3 = index3 == x3.length();
		   if(exists3){
			   score=score+1;
			 %>
<img src="images/true.png" width=20px height=20px;>
			 <%
		   }else{
%>			   
<img src="images/false.png" width=20px height=20px;>			   
<% 		   
		   }
				
			%>		
             </td>     
 
 
 <td>
 <%
 int questionmark=Integer.parseInt(rs12.getString(16));
 //out.println(questionmark);
 int anslen=rs12.getString(6).length();
 int wordcount=0;
 String splits[]=rs12.getString(6).toString().split(" ");
 for(int k1=0;k1<splits.length;k1++){
	 
	 wordcount=wordcount+1; 
 }
 float score2=questionmark/4;
 float score1=0;
 //float score1=(float)score/(float)wordcount;
// score1=score1*questionmark*10;
score1=score2*score;
 if(score1>questionmark){
	 score1=questionmark;
 }
 totalscore1=totalscore1+score1;

 //out.println("here"+score1); %>
  <input type="text" value="<%out.println(score1); %>" name="score">
 </td>
</tr>
		   <% 
		   }
			}catch(Exception e){
				out.println(""+e);
			}
			%>
			
</table>
<input type="hidden" name="testid" value="<%out.println(request.getParameter("testid")); %>">
<input type="hidden" name="studid" value="<%out.println(request.getParameter("studid")); %>">
<input type="submit"  name="fmark1">
</form>
</div>




			</div>
		</div>
		<!--footer-->
	   <!-- /page footer -->
		</div>
        <!--//footer-->
	</div>
	<!-- Classie -->
		<script src="js/classie.js"></script>
		<script>
			var menuLeft = document.getElementById( 'cbp-spmenu-s1' ),
				showLeftPush = document.getElementById( 'showLeftPush' ),
				body = document.body;
				
			showLeftPush.onclick = function() {
				classie.toggle( this, 'active' );
				classie.toggle( body, 'cbp-spmenu-push-toright' );
				classie.toggle( menuLeft, 'cbp-spmenu-open' );
				disableOther( 'showLeftPush' );
			};
			

			function disableOther( button ) {
				if( button !== 'showLeftPush' ) {
					classie.toggle( showLeftPush, 'disabled' );
				}
			}
		</script>
	<!-- Bootstrap Core JavaScript --> 
		
        <script type="text/javascript" src="js/bootstrap.min.js"></script>

        <script type="text/javascript" src="js/dev-loaders.js"></script>
        <script type="text/javascript" src="js/dev-layout-default.js"></script>
		<script type="text/javascript" src="js/jquery.marquee.js"></script>
		<link href="css/bootstrap.min.css" rel="stylesheet">
		
		<!-- candlestick -->
		<script type="text/javascript" src="js/jquery.jqcandlestick.min.js"></script>
		<link rel="stylesheet" type="text/css" href="css/jqcandlestick.css" />
		<!-- //candlestick -->
		
		<!--max-plugin-->
		<script type="text/javascript" src="js/plugins.js"></script>
		<!--//max-plugin-->
		
		<!--scrolling js-->
		<script src="js/jquery.nicescroll.js"></script>
		<script src="js/scripts.js"></script>
		<!--//scrolling js-->
		
		<!-- real-time-updates -->
		<script language="javascript" type="text/javascript" src="js/jquery.flot.js"></script>
		<script type="text/javascript">

		$(function() {

			// We use an inline data source in the example, usually data would
			// be fetched from a server

			var data = [],
				totalPoints = 300;

			function getRandomData() {

				if (data.length > 0)
					data = data.slice(1);

				// Do a random walk

				while (data.length < totalPoints) {

					var prev = data.length > 0 ? data[data.length - 1] : 50,
						y = prev + Math.random() * 10 - 5;

					if (y < 0) {
						y = 0;
					} else if (y > 100) {
						y = 100;
					}

					data.push(y);
				}

				// Zip the generated y values with the x values

				var res = [];
				for (var i = 0; i < data.length; ++i) {
					res.push([i, data[i]])
				}

				return res;
			}

			// Set up the control widget

			var updateInterval = 30;
			$("#updateInterval").val(updateInterval).change(function () {
				var v = $(this).val();
				if (v && !isNaN(+v)) {
					updateInterval = +v;
					if (updateInterval < 1) {
						updateInterval = 1;
					} else if (updateInterval > 2000) {
						updateInterval = 2000;
					}
					$(this).val("" + updateInterval);
				}
			});

			var plot = $.plot("#placeholder", [ getRandomData() ], {
				series: {
					shadowSize: 0	// Drawing is faster without shadows
				},
				yaxis: {
					min: 0,
					max: 100
				},
				xaxis: {
					show: false
				}
			});

			function update() {

				plot.setData([getRandomData()]);

				// Since the axes don't change, we don't need to call plot.setupGrid()

				plot.draw();
				setTimeout(update, updateInterval);
			}

			update();

			// Add the Flot version string to the footer

			$("#footer").prepend("Flot " + $.plot.version + " &ndash; ");
		});

		</script>
		<!-- //real-time-updates -->
		<!-- error-graph -->
		<script language="javascript" type="text/javascript" src="js/jquery.flot.errorbars.js"></script>
		<script language="javascript" type="text/javascript" src="js/jquery.flot.navigate.js"></script>
		<script type="text/javascript">
			$(function() {

				function drawArrow(ctx, x, y, radius){
					ctx.beginPath();
					ctx.moveTo(x + radius, y + radius);
					ctx.lineTo(x, y);
					ctx.lineTo(x - radius, y + radius);
					ctx.stroke();
				}

				function drawSemiCircle(ctx, x, y, radius){
					ctx.beginPath();
					ctx.arc(x, y, radius, 0, Math.PI, false);
					ctx.moveTo(x - radius, y);
					ctx.lineTo(x + radius, y);
					ctx.stroke();
				}

				var data1 = [
					[1,1,.5,.1,.3],
					[2,2,.3,.5,.2],
					[3,3,.9,.5,.2],
					[1.5,-.05,.5,.1,.3],
					[3.15,1.,.5,.1,.3],
					[2.5,-1.,.5,.1,.3]
				];

				var data1_points = {
					show: true,
					radius: 5,
					fillColor: "blue", 
					errorbars: "xy", 
					xerr: {show: true, asymmetric: true, upperCap: "-", lowerCap: "-"}, 
					yerr: {show: true, color: "red", upperCap: "-"}
				};

				var data2 = [
					[.7,3,.2,.4],
					[1.5,2.2,.3,.4],
					[2.3,1,.5,.2]
				];

				var data2_points = {
					show: true,
					radius: 5,
					errorbars: "y", 
					yerr: {show:true, asymmetric:true, upperCap: drawArrow, lowerCap: drawSemiCircle}
				};

				var data3 = [
					[1,2,.4],
					[2,0.5,.3],
					[2.7,2,.5]
				];

				var data3_points = {
					//do not show points
					radius: 0,
					errorbars: "y", 
					yerr: {show:true, upperCap: "-", lowerCap: "-", radius: 5}
				};

				var data4 = [
					[1.3, 1],
					[1.75, 2.5],
					[2.5, 0.5]
				];

				var data4_errors = [0.1, 0.4, 0.2];
				for (var i = 0; i < data4.length; i++) {
					data4_errors[i] = data4[i].concat(data4_errors[i])
				}

				var data = [
					{color: "blue", points: data1_points, data: data1, label: "data1"}, 
					{color: "red",  points: data2_points, data: data2, label: "data2"},
					{color: "green", lines: {show: true}, points: data3_points, data: data3, label: "data3"},
					// bars with errors
					{color: "orange", bars: {show: true, align: "center", barWidth: 0.25}, data: data4, label: "data4"},
					{color: "orange", points: data3_points, data: data4_errors}
				];

				$.plot($("#placeholder1"), data , {
					legend: {
						position: "sw",
						show: true
					},
					series: {
						lines: {
							show: false
						}
					},
					xaxis: {
						min: 0.6,
						max: 3.1
					},
					yaxis: {
						min: 0,
						max: 3.5
					},
					zoom: {
						interactive: true
					},
					pan: {
						interactive: true
					}
				});

				// Add the Flot version string to the footer

				$("#footer").prepend("Flot " + $.plot.version + " &ndash; ");
			});

			</script>
		<!-- //error-graph -->
		<!-- Skills-graph -->		
		<script src="js/Chart.Core.js"></script>
		<script src="js/Chart.Doughnut.js"></script>
		<script>

			var doughnutData = [
					{
						value: 2,
						label: "One",
						color:"#F8F8FF"
					},
					{
						value: 3,
						label: "Two",
						color:"#FF3300"
					},
					{
						value: 3,
						label: "Three",
						color:"#944DDB"
					},
					{
						value: 4,
						label: "Four",
						color:"#3399FF"
					},
					{
						value: 5,
						label: "Five",
						color:"#FFC575"
					}

				];

				window.onload = function(){
					var ctx = document.getElementById("chart-area").getContext("2d");
					window.myDoughnut = new Chart(ctx).Doughnut(doughnutData, {responsive : true});
				};

		</script>
		<!-- //Skills-graph -->
		<!-- status -->
		<script src="js/jquery.fn.gantt.js"></script>
		<script>

			$(function() {

				"use strict";

				$(".gantt").gantt({
					source: [{
						name: "Sprint 0",
						desc: "Analysis",
						values: [{
							from: "/Date(1320192000000)/",
							to: "/Date(1322401600000)/",
							label: "Requirement Gathering", 
							customClass: "ganttRed"
						}]
					},{
						name: " ",
						desc: "Scoping",
						values: [{
							from: "/Date(1322611200000)/",
							to: "/Date(1323302400000)/",
							label: "Scoping", 
							customClass: "ganttRed"
						}]
					},{
						name: "Sprint 1",
						desc: "Development",
						values: [{
							from: "/Date(1323802400000)/",
							to: "/Date(1325685200000)/",
							label: "Development", 
							customClass: "ganttGreen"
						}]
					},{
						name: " ",
						desc: "Showcasing",
						values: [{
							from: "/Date(1325685200000)/",
							to: "/Date(1325695200000)/",
							label: "Showcasing", 
							customClass: "ganttBlue"
						}]
					},{
						name: "Sprint 2",
						desc: "Development",
						values: [{
							from: "/Date(1326785200000)/",
							to: "/Date(1325785200000)/",
							label: "Development", 
							customClass: "ganttGreen"
						}]
					},{
						name: " ",
						desc: "Showcasing",
						values: [{
							from: "/Date(1328785200000)/",
							to: "/Date(1328905200000)/",
							label: "Showcasing", 
							customClass: "ganttBlue"
						}]
					},{
						name: "Release Stage",
						desc: "Training",
						values: [{
							from: "/Date(1330011200000)/",
							to: "/Date(1336611200000)/",
							label: "Training", 
							customClass: "ganttOrange"
						}]
					},{
						name: " ",
						desc: "Deployment",
						values: [{
							from: "/Date(1336611200000)/",
							to: "/Date(1338711200000)/",
							label: "Deployment", 
							customClass: "ganttOrange"
						}]
					},{
						name: " ",
						desc: "Warranty Period",
						values: [{
							from: "/Date(1336611200000)/",
							to: "/Date(1349711200000)/",
							label: "Warranty Period", 
							customClass: "ganttOrange"
						}]
					}],
					navigate: "scroll",
					scale: "weeks",
					maxScale: "months",
					minScale: "days",
					itemsPerPage: 10,
					onItemClick: function(data) {
						alert("Item clicked - show some details");
					},
					onAddClick: function(dt, rowId) {
						alert("Empty space clicked - add an item!");
					},
					onRender: function() {
						if (window.console && typeof console.log === "function") {
							console.log("chart rendered");
						}
					}
				});

				$(".gantt").popover({
					selector: ".bar",
					title: "I'm a popover",
					content: "And I'm the content of said popover.",
					trigger: "hover"
				});

				prettyPrint();

			});

		</script>
		<!-- //status -->
		
</body>
</html>