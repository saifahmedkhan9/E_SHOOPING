<!DOCTYPE HTML>
<html>
	<head>
		<title>Profile</title>
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
			String  s1="select * from EXTERNAL_USER  where   EMAIL_ID='"+users+"'";
			ResultSet rs=s.executeQuery(s1); 
		%>
		 <% while(rs.next()){ %>
		<% String a= rs.getString(1);
		   String b= rs.getString(2); 
		   String c1= rs.getString(3);
		   String d= rs.getString(4);
		   String e= rs.getString(5);
		   String f= rs.getString(6);
		   String g= rs.getString(7);
		   String h= rs.getString(8);
		   int i=Integer.parseInt(h);  
		
		%>
		
       <div class="register_account">
          	<div class="wrap">
    		   <form action="Update" method="post" name="fr1" onsubmit="return validate()">
    			 <div class="col_1_of_2 span_1_of_2">
		   			 <div>Email<input type="text" value="<%out.println(a);%>" name="umail"></div>
		   			 
		    			<div>First Name<input type="text" value="<%out.println(c1);%>" name="ufname" ></div>
		    			<div>Last Name<input type="text" value="<%out.println(d);%>" name="ulname" ></div>
		    	 </div>
		    	  <div class="col_1_of_2 span_1_of_2">	
		    		<div>Address<input type="text" value="<%out.println(e);%>" name="uaddress"></div>
		    		
		          <div>City<br><input type="text" value="<%out.println(f);%>" name="ucity"></div>
		             <div class="comments-area">
		             <div>Date Of Birth<input type="text" value="<%out.println(g);%>" name="udate" ></div>
		             Phone Number &nbsp;<input type="int" value="<%out.println(i);%>" name="unumber">
		             </div>
		          </div>
		         &nbsp;&nbsp;<button class="grey">UPDATE</button>
		         <p class="terms">By clicking 'Create Account' you agree to the <a href="#">Terms &amp; Conditions</a>.</p>
		         <div class="clear"></div>
		    </form>
    	  </div> 
        </div>
        <%} %>
		<%@ include file="footer.html" %>	
 </body>
 </html>       