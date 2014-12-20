<!DOCTYPE HTML>
<html>
	<head>
		<title>	Complaint Status</title>
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
		<%@ include file="header.jsp" %>
			  <!---top-header-search-box--->
						<div class="clearfix"> </div>
			</div>
		</div>
		<%@ page import="java.sql.*,java.util.*" %>
		<% Class.forName("oracle.jdbc.driver.OracleDriver"); %>
		<%
			String users = (String)session.getAttribute("umail");
			Connection c = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","project", "project");
			Statement s = c.createStatement();
			String  s1="select EXTERNAL_USER.FIRST_NAME, COMPLAINT.COMPLAINT_ID,COMPLAINT.DESCRIPTION,COMPLAINT.STATUS from COMPLAINT,EXTERNAL_USER where EXTERNAL_USER.EMAIL_ID=COMPLAINT.EMAIL_ID and COMPLAINT.EMAIL_ID='"+users+"'";
			ResultSet rs=s.executeQuery(s1); 
		%>
		 <% while(rs.next()){ %>
		<% String a= rs.getString(1);
		   String b= rs.getString(2); 
		   String c1= rs.getString(3);
		   String d= rs.getString(4);
		%>
		
 
    			 		<div class="top-row-col1 text-center">
    			 
    			 	<%
    			 		System.out.println(d);
    			 		if(d.equals("Approved"))
    			 		{
    			 			out.println("HELLO !! "+a+" WE HAVE TAKEN YOUR FEEDBACK INTO CONSIDERATION..."); 
    			 		}
    			 		else
    			 		{
    			 			out.println("YOUR FEEDBACK IS UNDER CONSIDERATION...!!");
    			 		}
    			 		%><br><br>
    			 		<b>COMPLAINT ID :</b><i><%out.println(b);%></i><br>
		    			<b>DESCRIPTION :</b><i><%out.println(c1);%></i><br>
		    			<b>STATUS : </b><i><%out.println(d);%></i><br>
		    	 </div>
    	 
        <%} %>
		<%@ include file="footer.html" %>	
 </body>
 </html>       