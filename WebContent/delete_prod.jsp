<!DOCTYPE HTML>
<html>
	<head>
		<title>Profile</title>
		<style>
table, th, td {
    border: 1px solid black;
}
</style>
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
			Connection c = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","project", "project");
			Statement s = c.createStatement();
			String  s1="select PROD_ID,DISPLAY_NAME,IMAGEURL,PRICE from PRODUCT" ;
			ResultSet rs=s.executeQuery(s1); 
		%>
<table border="3" >
  <tr>
    <th><b><u>&nbsp;&nbsp;&nbsp;Prod_id</u></b> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th>
    <th><b><u>&nbsp;&nbsp;&nbsp;Name&nbsp;&nbsp;&nbsp;&nbsp;</u></b></th>
    <th><b><u>&nbsp;&nbsp;&nbsp;Image&nbsp;&nbsp;&nbsp;&nbsp;</u></b></th>
        <th><b><u>&nbsp;&nbsp;&nbsp;Price&nbsp;&nbsp;&nbsp;&nbsp;</u></b></th>
    
    </tr>
		<% while(rs.next()){ %>
		<%
			String a1= rs.getString(1);
		   String b2= rs.getString(2); 
		   String c2= rs.getString(3);
		   String d2= rs.getString(4);
		   %>	
	<tr>   
	    <td><%out.println(a1); %>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
    <td><%out.println(b2); %>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
    <td><img src="<%out.println(c2); %>" height="250px" width="200px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
    <td><%out.println(d2); %>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td><br><br>
		    	 <%}%>	
		    	 </tr>
		    	 </table>
		    	 	<br><br><br>    
		    	  <form action="Delete1" method="post" name="fr1" onsubmit="return validate()">
    			 
		   			 <div>Enter Product Id To be Deleted<br><input type="text" value="" name="umail"></div>
		   			  &nbsp;&nbsp;<button class="grey">DELETE</button>
		   			 </form>
		   			 	   <br><br>
		    	 
		 <%@ include file="footer.html" %>
		 </body>
		 </html>
		    	   
		    	 