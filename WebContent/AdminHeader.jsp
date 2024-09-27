<!doctype html>
<html lang=''>
<head>
   <meta charset='utf-8'>
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1">
   <link rel="stylesheet" href="styles.css">
   <script src="http://code.jquery.com/jquery-latest.min.js" type="text/javascript"></script>
   <script src="script.js"></script>
   <title>CSS MenuMaker</title>
</head>
<body>

<div id='cssmenu'>
<ul>
   <li><a href='AdminDashboard.jsp'><span>Home</span></a></li>
   
   <li class='active has-sub'><a href='#'><span><i class="fa fa-list-ul nav_icon"></i>Create Test</span></a>
      <ul>
         <li class='has-sub'><a href='CreateTest.jsp'><span>Create  New Test</span></a>
         </li>
         <li class='has-sub'><a href="ViewTest.jsp">Show Test</a>
           
         </li>
      </ul>
   </li>
   
   
   
   
<li class=' has-sub'><a href='#'><span> <i class="fa fa-list-ul nav_icon"></i>Question Module</span></a>
      <ul  >
      <li class="has-sub">
        <a href="AddQuestion1.jsp">Add New Questions </a>
        </li>
      </ul>
</li>
   
<li class=' has-sub'><a href='#'><span><i class="fa fa-list-ul nav_icon"></i>Get Results</span></a>
      <ul>
       <li class="has-sub">
        <a href="CurrentTestResults.jsp">Current Test Result </a>
        </li>
         <li class="has-sub">
          <a href="TestResults.jsp">Results By Search</a>
		</li>							
    </ul>
</li>  
   
   
   
 <li class=' has-sub'><a href='#'><span><i class="fa fa-list-ul nav_icon"></i>Student Module</span></a>
      <ul>
       <li class="has-sub">
       <a href="AddStudent.jsp">Add New Student </a>
        </li>
         <li class="has-sub">
          <a href="SearchStudent.jsp"> Students Search</a>
		</li>							
    </ul>
</li>   
   
   
   
   
   
   
  
   <li class='last'><a href="index.jsp" class="chart-nav"><i class="fa fa-bar-chart nav_icon"></i>LogOut</a></li>
</ul>
</div>

</body>
<html>
