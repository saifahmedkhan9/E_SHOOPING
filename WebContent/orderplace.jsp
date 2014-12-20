<%

 String email = (String)session.getAttribute("umail"); 
 %>
<!DOCTYPE HTML>
<html>
<head>
<title>Congrats</title>
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />		
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
		<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
		<script src="js/jquery.min.js"></script>
		 <!-- Custom Theme files -->
		<link href="css/style.css" rel='stylesheet' type='text/css' />
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
		<script>
			$(function() {
				var pull 		= $('#pull');
					menu 		= $('nav ul');
					menuHeight	= menu.height();
				$(pull).on('click', function(e) {
					e.preventDefault();
					menu.slideToggle();
				});
				$(window).resize(function(){
	        		var w = $(window).width();
	        		if(w > 320 && menu.is(':hidden')) {
	        			menu.removeAttr('style');
	        		}
	    		});
			});
		</script>
		<!----//End-top-nav-script---->
</head>
<body>
<%@ include file="header.jsp" %>
<%String value=request.getParameter("id"); %>
<%@ page import="java.sql.*,java.util.*" %>
<% Class.forName("oracle.jdbc.driver.OracleDriver"); %>
				

   <% 
  		String order=(String)session.getAttribute("order");
		Connection c = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","project", "project");
		Statement s = c.createStatement();
		int tot=Integer.parseInt(request.getParameter("total"));
		System.out.println(tot+" "+order);
		String  s1="update ORDER_DETAILS SET TOTAL_ORDER_AMOUNT='"+tot+"' WHERE ORDER_ID='"+order+"'";
		ResultSet rs=s.executeQuery(s1); 
				%>
				<%
				String s2="delete from item where order_id in(select order_id from order_details where email_id='"+email+"')";
		ResultSet rs1=s.executeQuery(s2);
		%>
		<div class="top-row-col1 text-center">
		YOUR ORDER HAVE BEEN PLACED..<br>
		</div>
		<%@ include file="footer.html" %>
</body>
</html>