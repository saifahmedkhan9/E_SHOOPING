<!DOCTYPE HTML>
<html>
	<head>
		<title>My Order</title>
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
			String  s1="select ORDER_DETAILS.ORDER_ID,ORDER_DETAILS.TOTAL_ORDER_AMOUNT,ORDER_DETAILS.STATE,ITEM.ITEM_ID,ITEM.QUANTITY,ITEM.UNIT_PRICE from ORDER_DETAILS join ITEM on ORDER_DETAILS.ORDER_ID=ITEM.ORDER_ID  where ORDER_DETAILS.EMAIL_ID='"+users+"'";
			ResultSet rs=s.executeQuery(s1); 
		%>
		 <% while(rs.next()){ %>
		<% String a= rs.getString(1);
		   String b= rs.getString(2); 
		   String c1= rs.getString(3);
		   String d= rs.getString(4);
		   String e= rs.getString(5);
		   String f= rs.getString(6);
		%>
		
       <div class="register_account">
          	<div class="wrap">
    			 <div class="col_1_of_2 span_1_of_2">
		   			 <div>ORDER_ID : <%out.println(a);%></div>
		   			 
		    			<div>TOTAL_ORDER_AMOUNT : <%out.println(b);%></div>
		    			<div>STATE : <%out.println(c1);%></div>
		    	 </div>
		    	  <div class="col_1_of_2 span_1_of_2">	
		    		<div>ITEM_ID : <%out.println(d);%></div>
		    		
		          <div>QUANTITY: <%out.println(e);%></div>
		          
		          
		             <div class="comments-area">
		             <div>UNIT PRICE : <%out.println(f);%></div>
		     
		             </div>
		          </div>
    	  </div> 
        </div>
        <%} %>
        <br><br><br><br><br><br><br>
		<%@ include file="footer.html" %>	
 </body>
 </html>       