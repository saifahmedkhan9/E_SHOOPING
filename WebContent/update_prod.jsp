<!DOCTYPE HTML>
<html>
	<head>
		<title>Update</title>
		<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
		<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
		<script src="js/jquery.min.js"></script>
		 <!-- Custom Theme files -->
		<link href="css/style.css" rel='stylesheet' type='text/css' />
		<link href="css/style1.css" rel='stylesheet' type='text/css' />
   		 <!-- Custom Theme files -->
   		 <!---- start-smoth-scrolling---->
		<script type="text/javascript" src="js/move-top.js"></script>
		<script type="text/javascript" src="js/easing.js"></script>
		<script type="text/javascript">
			jQuery(document).ready(function($) {
				$(".scroll").click(function(event){		
					event.preventDefault();
					$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
				});
			});
		</script>
		 <!---- start-smoth-scrolling---->
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
		</script>
		<!----webfonts--->
		<link href='http://fonts.googleapis.com/css?family=Lato:100,300,400,700,900,100italic,300italic,400italic,700italic,900italic' rel='stylesheet' type='text/css'>
		<!---//webfonts--->
		<!----start-top-nav-script---->
		
	</head>
	<body>
		<%@ include file="headera.jsp" %>
			  <!---top-header-search-box--->
						<div class="clearfix"> </div>
			</div>
		</div>
		<%@ page import="java.sql.*,java.util.*" %>
		
		<% Class.forName("oracle.jdbc.driver.OracleDriver"); %>
		<%
			String value=request.getParameter("id");
			Connection c = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","project", "project");
			Statement s = c.createStatement();
			String  s1="select * from PRODUCT  where   PROD_ID='"+value+"'";
			ResultSet rs=s.executeQuery(s1); 
		%>
		<form action="Update1" >
		<div class="top-row-col1 text-center">
		<% while(rs.next()){ 
        %>
    <b><u>PRODUCT ID:</u></b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font face="Lucida Sans Unicode" color="Black"><input type="text" value="<%=rs.getString("PROD_ID")%>" name="upid"></font><br>
    <b><u>NAME: </u></b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font face="Lucida Sans Unicode" color="Black"><input type="text" value="<%=rs.getString("DISPLAY_NAME")%>" name="udname"></font> <br>
    <b><u>DESCRIPTION:</u> </b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font face="Lucida Sans Unicode" color="Black"><input type="text" value="<%=rs.getString("DESCRIPTION")%>"name="udes"></font><br>
    <b><u>IMAGE URL: </u></b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font face="Lucida Sans Unicode" color="Black"><input type="text" value="<%=rs.getString("IMAGEURL")%>" name="uimg"></font><br>
    <b><u>PRICE: </u></b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font face="Lucida Sans Unicode" color="Black"><input type="text" value="<%=rs.getInt("PRICE")%>" name="uprc"></font><br>
    <b><u>CATEGORY:</u></b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font face="Lucida Sans Unicode" color="Black"><input type="text" value="<%=rs.getString("CATEGORY_ID")%>" name="ucid"> </font><br>
    
        <%} %>
       	&nbsp;&nbsp;<button class="grey" align="right">UPDATE</button> 
        </div>
        
		<%@ include file="footer.html" %>	
 </body>
 </html>       