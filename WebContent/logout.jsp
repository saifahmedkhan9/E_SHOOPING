<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%
session.setAttribute("uname", null);
session.invalidate();
%>
<head>
<title>Logout</title>
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
		<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
		<script src="js/jquery.min.js"></script>
		 <!-- Custom Theme files -->
		<link href="css/style.css" rel='stylesheet' type='text/css' />
   		 <!-- Custom Theme files -->
   		 <!---- start-smoth-scrolling---->
		<script type="text/javascript" src="js/move-top.js"></script>
		<script type="text/javascript" src="js/easing.js"></script>
</head>
<body>
<div class="container">
			<!----top-header---->
			<div class="top-header">
				<div class="logo">
					<a href="index.jsp"><img src="images/logo.png" title="barndlogo" /></a>
				</div>
				<div class="top-header-info">
					<div class="top-contact-info">
						<ul class="unstyled-list list-inline">
							<li><span class="phone"> </span>090 - 223 44 66</li>
							<li><span class="mail"> </span><a href="#">help@trendd.com</a></li>
							<div class="clearfix"> </div>
						</ul>
					</div>
					<div class="cart-details">
						<div class="add-to-cart">
							<ul class="unstyled-list list-inline">
								<li><span class="cart"> </span>
									<ul class="cart-sub">
										<li><p>0 Products</p></li>
									</ul>
								</li>
							</ul>
						</div>
						<div class="login-rigister">
							<ul class="unstyled-list list-inline">

								<li><a class="login" href="login.jsp">Customer Login</a></li>
								<li><a class="rigister" href="register.jsp">REGISTER <span> </span></a></li>
								<div class="clearfix"> </div>
							</ul>
						</div>
						<div class="clearfix"> </div>
					</div>
				</div>
				<div class="clearfix"> </div>
			</div>
			<!----//top-header---->
			<!---top-header-nav---->
			<div class="top-header-nav"> 
			<!----start-top-nav---->
			 <nav class="top-nav main-menu">
					<ul class="top-nav">
						<li><a href="index.jsp">HOME </a><span> </span></li>
						<li><a href="products.jsp">PRODUCTS </a><span> </span></li>
						
						<li><a href="products.jsp">BRANDS</a><span> </span></li>
						<div class="clearfix"> </div>
					</ul>
					<a href="#" id="pull"><img src="images/nav-icon.png" title="menu" /></a>
			  </nav>
			  <!----End-top-nav---->
			  <!---top-header-search-box--->
			  <div class="top-header-search-box">
			  	<form>
			  		<input type="text" placeholder="Search" required / maxlength="22">
			  		<input type="submit" value=" " >
			  	</form>
			  </div>
			  <!---top-header-search-box--->
						<div class="clearfix"> </div>
			</div>
		</div>
			<!--//top-header-nav---->
			<!----start-slider-script---->
					<div class="top-row-col1 text-center">
<center><h1><font color="red">You are Successfully logged out..</font></h1></center>
<a href="index.jsp">GO-BACK TO HOME PAGE </a>
</div>
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
							<a class="product-btn" href="single-page.jsp"><span>109.90$</span><small>GET NOW</small><label> </label></a>
						</div>
						<div class="col-md-3 special-products-grid text-center">
							<a class="brand-name" href="single-page.jsp"><img src="images/b2.jpg" title="name" /></a>
							<a class="product-here" href="single-page.jsp"><img src="images/p2.jpg" title="product-name" /></a>
							<h4><a href="single-page.jsp">Line Link 67009</a></h4>
							<a class="product-btn" href="single-page.jsp"><span>109.90$</span><small>GET NOW</small><label> </label></a>
						</div>
						<div class="col-md-3 special-products-grid text-center">
							<a class="brand-name" href="single-page.jsp"><img src="images/b3.jpg" title="name" /></a>
							<a class="product-here" href="single-page.jsp"><img src="images/p3.jpg" title="product-name" /></a>
							<h4><a href="single-page.jsp">Minimus Zero </a></h4>
							<a class="product-btn" href="single-page.jsp"><span>109.90$</span><small>GET NOW</small><label> </label></a>
						</div>
						<div class="col-md-3 special-products-grid text-center">
							<a class="brand-name" href="single-page.jsp"><img src="images/b4.jpg" title="name" /></a>
							<a class="product-here" href="single-page.jsp"><img src="images/p4.jpg" title="product-name" /></a>
							<h4><a href="single-page.jsp"> Athletic Shoe </a></h4>
							<a class="product-btn" href="single-page.jsp"><span>109.90$</span><small>GET NOW</small><label> </label></a>
						</div>
						<div class="col-md-3 special-products-grid text-center">
							<a class="brand-name" href="single-page.jsp"><img src="images/b5.jpg" title="name" /></a>
							<a class="product-here" href="single-page.jsp"><img src="images/p2.jpg" title="product-name" /></a>
							<h4><a href="single-page.jsp">Veronique </a></h4>
							<a class="product-btn" href="single-page.jsp"><span>109.90$</span><small>GET NOW</small><label> </label></a>
						</div>
						<div class="col-md-3 special-products-grid text-center">
							<a class="brand-name" href="single-page.jsp"><img src="images/b6.jpg" title="name" /></a>
							<a class="product-here" href="single-page.jsp"><img src="images/p6.jpg" title="product-name" /></a>
							<h4><a href="single-page.jsp">Suede Boots </a></h4>
							<a class="product-btn" href="single-page.jsp"><span>109.90$</span><small>GET NOW</small><label> </label></a>
						</div>
						<div class="col-md-3 special-products-grid text-center">
							<a class="brand-name" href="single-page.jsp"><img src="images/b7.jpg" title="name" /></a>
							<a class="product-here" href="single-page.jsp"><img src="images/p7.jpg" title="product-name" /></a>
							<h4><a href="single-page.jsp">Barricade 6.0  </a></h4>
							<a class="product-btn" href="single-page.jsp"><span>109.90$</span><small>GET NOW</small><label> </label></a>
						</div>
						<div class="col-md-3 special-products-grid text-center">
							<a class="brand-name" href="single-page.jsp"><img src="images/b1.jpg" title="name" /></a>
							<a class="product-here" href="single-page.jsp"><img src="images/p8.jpg" title="product-name" /></a>
							<h4><a href="single-page.jsp">Cotu Classic </a></h4>
							<a class="product-btn" href="single-page.jsp"><span>109.90$</span><small>GET NOW</small><label> </label></a>
						</div>
						<div class="clearfix"> </div>
					</div>
					<!---//special-products-grids---->
				</div>
				<!---//speical-products---->
				</div>
<%@ include file="footer.html" %>
</body>
<hr/>
</body>
</html>