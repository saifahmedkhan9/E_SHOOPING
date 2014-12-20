<% String email= (String)session.getAttribute("umail"); 
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
			<!--//top-header-nav---->
			<!----start-slider-script---->
					<div class="top-row-col1 text-center">
			
			<script src="js/responsiveslides.min.js"></script><h3 style="color:blue;" align="center"><b>YOU HAVE SUCCESSFULLY logged in</b></h3>
			</div>
			<%@ page import= "java.util.*"%>
			<%
				Random rand = new Random();	
				String order=Integer.toString(rand.nextInt(10000) + 100);
				session.setAttribute("order",order);
				System.out.println("Order_Id :"+order);
			%>
			<%@ page import="java.sql.*,java.util.*" %>
			<%
			int tot=0;
			String state="Pending";
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","project", "project");
			PreparedStatement pst=null;
			String sql="insert into ORDER_DETAILS values(?,?,?,?)";
			pst=con.prepareStatement(sql);
			pst.setString(1, order);
			pst.setInt(2, tot);
			pst.setString(3, state);
			pst.setString(4,email);
			int x=pst.executeUpdate();
			%>
			<div class="container"> 
				<!----speical-products---->
				<div class="special-products">
					<div class="s-products-head">
						<div class="s-products-head-left">
							<h3>SPECIAL <span>PRODUCTS</span></h3>
						</div>
						<div class="s-products-head-right">
							<a href="products.jsp"><span> </span>view all products</a>
						</div>
						<div class="clearfix"> </div>
					</div>
					<!----special-products-grids---->
					<div class="special-products-grids">
						<div class="col-md-3 special-products-grid text-center">
							<a class="brand-name" href="single-page.jsp"><img src="images/b1.jpg" title="name" /></a>
							<a class="product-here" href="single-page.jsp"><img src="images/p1.jpg" title="product-name" /></a>
							<h4><a href="single-page.jsp">Nike Roshe Run</a></h4>
							<a class="product-btn" href="single-page.jsp"><span>RS2100</span><small>GET NOW</small><label> </label></a>
						</div>
						<div class="col-md-3 special-products-grid text-center">
							<a class="brand-name" href="single-page.jsp"><img src="images/b2.jpg" title="name" /></a>
							<a class="product-here" href="single-page.jsp"><img src="images/p2.jpg" title="product-name" /></a>
							<h4><a href="single-page.jsp">Line Link 67009</a></h4>
							<a class="product-btn" href="single-page.jsp"><span>RS3100</span><small>GET NOW</small><label> </label></a>
						</div>
						<div class="col-md-3 special-products-grid text-center">
							<a class="brand-name" href="single-page.jsp"><img src="images/b3.jpg" title="name" /></a>
							<a class="product-here" href="single-page.jsp"><img src="images/p3.jpg" title="product-name" /></a>
							<h4><a href="single-page.jsp">Minimus Zero </a></h4>
							<a class="product-btn" href="single-page.jsp"><span>RS1900</span><small>GET NOW</small><label> </label></a>
						</div>
						<div class="col-md-3 special-products-grid text-center">
							<a class="brand-name" href="single-page.jsp"><img src="images/b4.jpg" title="name" /></a>
							<a class="product-here" href="single-page.jsp"><img src="images/p4.jpg" title="product-name" /></a>
							<h4><a href="single-page.jsp"> Athletic Shoe </a></h4>
							<a class="product-btn" href="single-page.jsp"><span>RS3300</span><small>GET NOW</small><label> </label></a>
						</div>
						<div class="col-md-3 special-products-grid text-center">
							<a class="brand-name" href="single-page.jsp"><img src="images/b5.jpg" title="name" /></a>
							<a class="product-here" href="single-page.jsp"><img src="images/p2.jpg" title="product-name" /></a>
							<h4><a href="single-page.jsp">Veronique </a></h4>
							<a class="product-btn" href="single-page.jsp"><span>RS2700</span><small>GET NOW</small><label> </label></a>
						</div>
						<div class="col-md-3 special-products-grid text-center">
							<a class="brand-name" href="single-page.jsp"><img src="images/b6.jpg" title="name" /></a>
							<a class="product-here" href="single-page.jsp"><img src="images/p6.jpg" title="product-name" /></a>
							<h4><a href="single-page.jsp">Suede Boots </a></h4>
							<a class="product-btn" href="single-page.jsp"><span>RS2100</span><small>GET NOW</small><label> </label></a>
						</div>
						<div class="col-md-3 special-products-grid text-center">
							<a class="brand-name" href="single-page.jsp"><img src="images/b7.jpg" title="name" /></a>
							<a class="product-here" href="single-page.jsp"><img src="images/p7.jpg" title="product-name" /></a>
							<h4><a href="single-page.jsp">Barricade 6.0  </a></h4>
							<a class="product-btn" href="single-page.jsp"><span>RS2700</span><small>GET NOW</small><label> </label></a>
						</div>
						<div class="col-md-3 special-products-grid text-center">
							<a class="brand-name" href="single-page.jsp"><img src="images/b1.jpg" title="name" /></a>
							<a class="product-here" href="single-page.jsp"><img src="images/p8.jpg" title="product-name" /></a>
							<h4><a href="single-page.jsp">Cotu Classic </a></h4>
							<a class="product-btn" href="single-page.jsp"><span>RS2900</span><small>GET NOW</small><label> </label></a>
						</div>
						<div class="clearfix"> </div>
					</div>
					<!---//special-products-grids---->
				</div>
				<!---//speical-products---->
				</div>
        <%@ include file="footer.html" %>
</body>
</html>