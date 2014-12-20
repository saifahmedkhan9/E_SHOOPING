<%String order = (String)session.getAttribute("order"); 
%>
<!DOCTYPE HTML>
<html>
	<head>
		<title>Products</title>
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
			<!--//top-header-nav---->
			<!----content---->
				<div class="content">
					<div class="container">
				<!--- products ---->
				<div class="products">
				</div>
				<div class="clearfix"> </div>
				<!-- //products ---->
				<!----speical-products---->
				<div class="special-products all-poroducts">
					<div class="s-products-head">
						<div class="s-products-head-left">
							<h3>NIKE <span>PRODUCTS</span></h3>
						</div>
						<div class="s-products-head-right">
							<span> </span>
						</div>
						<div class="clearfix"> </div>
					</div>
					<!----special-products-grids---->
					
					<div class="special-products-grids">
					<%@ page import="java.sql.*,java.util.*" %>
						<% Class.forName("oracle.jdbc.driver.OracleDriver"); %>
		<%
			String value=request.getParameter("id");
			Connection c = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","project", "project");
			Statement s = c.createStatement();
			String  s1="select * from PRODUCT  where   CATEGORY_ID='CAT_NIKE'";
			ResultSet rs=s.executeQuery(s1); 
		%>
		<br>
		<% while(rs.next()){ 
        %>
        				
						<div class="col-md-3 special-products-grid text-center">
							<a class="brand-name" href=<%="\"product_Detail.jsp?id="+rs.getString("PROD_ID")+"\"" %>><img src="images/b1.jpg" title="name" /></a>
							<a class="product-here" href=<%="\"product_Detail.jsp?pid="+rs.getString("PROD_ID")+"\"" %>><img src="<%=rs.getString("IMAGEURL")%>"/></a>
							<a class="product-btn" href=<%="\"product_Detail.jsp?id="+rs.getString("PROD_ID")+"\"" %>><span>RS<%=rs.getString("PRICE")%></span><small>GET NOW</small><label> </label></a>
							
						</div>
					<%} %>	
						<div class="clearfix"> </div>
					</div>
					<!---//special-products-grids---->
				</div>
				<!--PUMA--->
				<div class="special-products all-poroducts latest-products">
					<div class="s-products-head">
						<div class="s-products-head-left">
							<h3>PUMA <span>PRODUCTS</span></h3>
						</div>
						<div class="s-products-head-right">
							<span> </span>
						</div>
						<div class="clearfix"> </div>
					</div>
					<!----special-products-grids---->
					<%@ page import="java.sql.*,java.util.*" %>
						<% Class.forName("oracle.jdbc.driver.OracleDriver"); %>
		<%
			//String value=request.getParameter("id");
			Connection c1 = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","project", "project");
			Statement s2 = c1.createStatement();
			String  s3="select * from PRODUCT  where   CATEGORY_ID='CAT_PUMA'";
			ResultSet rs1=s2.executeQuery(s3); 
		%>
		<br>
		<% while(rs1.next()){ 
        %>
        					<div class="col-md-3 special-products-grid text-center">
							<a class="brand-name" href=<%="\"product_Detail.jsp?id="+rs1.getString("PROD_ID")+"\"" %>><img src="images/b5.jpg" title="name" /></a>
							<a class="product-here" href=<%="\"product_Detail.jsp?pid="+rs1.getString("PROD_ID")+"\"" %>><img src="<%=rs1.getString("IMAGEURL")%>"/></a>
							<a class="product-btn" href=<%="\"product_Detail.jsp?id="+rs1.getString("PROD_ID")+"\"" %>><span>RS<%=rs1.getString("PRICE")%></span><small>GET NOW</small><label> </label></a>
							
						</div>
					<%} %>
						<div class="clearfix"> </div>
					</div>
					<!---//special-products-grids---->
				</div>
				<!------->
				<div class="special-products all-poroducts latest-products">
					<div class="s-products-head">
						<div class="s-products-head-left">
							<h3>CONVERSE <span>PRODUCTS</span></h3>
						</div>
						<div class="s-products-head-right">
							<span> </span>
						</div>
						<div class="clearfix"> </div>
					</div>
					<!----special-products-grids---->
					<div class="special-products-grids">
					<%@ page import="java.sql.*,java.util.*" %>
						<% Class.forName("oracle.jdbc.driver.OracleDriver"); %>
		<%
			//String value=request.getParameter("id");
			Connection c2 = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","project", "project");
			Statement s4 = c2.createStatement();
			String  s5="select * from PRODUCT  where  CATEGORY_ID='CAT_CONVERSE'";
			ResultSet rs2=s4.executeQuery(s5); 
		%>
		<br>
		<% while(rs2.next()){ 
        %>
        					<div class="col-md-3 special-products-grid text-center">
							<a class="brand-name" href=<%="\"product_Detail.jsp?pid="+rs2.getString("PROD_ID")+"\"" %>><img src="images/b4.jpg" title="name" /></a>
							<a class="product-here" href=<%="\"product_Detail.jsp?pid="+rs2.getString("PROD_ID")+"\"" %>><img src="<%=rs2.getString("IMAGEURL")%>"/></a>
							<a class="product-btn" href=<%="\"product_Detail.jsp?pid="+rs2.getString("PROD_ID")+"\"" %>><span>RS<%=rs2.getString("PRICE")%></span><small>GET NOW</small><label> </label></a>
							
						</div>
					<%} %>
						<div class="clearfix"> </div>
					</div>
					<!---//special-products-grids---->
				</div>
				<!------>
				<!---ADIDAS---->
				<div class="special-products all-poroducts latest-products">
					<div class="s-products-head">
						<div class="s-products-head-left">
							<h3>ADIDAS <span>PRODUCTS</span></h3>
						</div>
						<div class="s-products-head-right">
							<span> </span>
						</div>
						<div class="clearfix"> </div>
					</div>
					<!----special-products-grids---->
					<div class="special-products-grids">
						
						<%@ page import="java.sql.*,java.util.*" %>
						<% Class.forName("oracle.jdbc.driver.OracleDriver"); %>
		<%
			String value3=request.getParameter("id");
			Connection c3 = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","project", "project");
			Statement s6= c.createStatement();
			String  s7="select * from PRODUCT  where   CATEGORY_ID='CAT_ADIDAS'";
			ResultSet rs3=s6.executeQuery(s7); 
		%>
		<br>
		<% while(rs3.next()){ 
        %>
        					<div class="col-md-3 special-products-grid text-center">
							<a class="brand-name" href=<%="\"product_Detail.jsp?id="+rs3.getString("PROD_ID")+"\"" %>><img src="images/b6.jpg" title="name" /></a>
							<a class="product-here" href=<%="\"product_Detail.jsp?pid="+rs3.getString("PROD_ID")+"\"" %>><img src="<%=rs3.getString("IMAGEURL")%>"/></a>
							<a class="product-btn" href=<%="\"product_Detail.jsp?id="+rs3.getString("PROD_ID")+"\"" %>><span>RS<%=rs3.getString("PRICE")%></span><small>GET NOW</small><label> </label></a>							
						</div>
					<%} %>
						<div class="clearfix"> </div>
					</div>
					<!---//special-products-grids---->
				</div>
				</div>
			<%@ include file="footer.html" %>
	</body>
</html>

