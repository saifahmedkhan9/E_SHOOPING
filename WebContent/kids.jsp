<!DOCTYPE HTML>
<html>
	<head>
		<title>Kids Product</title>
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
					<div class="product-filter">
						<h1><a href="#">FILTER</a></h1>
						<div class="product-filter-grids"> 
							<div class="col-md-3 product-filter-grid1-brands">
								<h3>BRANDS</h3>
								<ul class="col-md-6 unstyled-list b-list1">
									<li><a href="#">adidas</a></li>
									<li><a href="#">nike</a></li>
									<li><a href="#">reebok</a></li>
									<li><a href="#">puma</a></li>
									<li><a href="#">Stacy Adams</a></li>
									<div class="clearfix"> </div>
								</ul>
								
								<div class="clearfix"> </div>
							</div>
							<!---->
							<div class="col-md-6 product-filter-grid1-brands-col2">
									<div class="producst-cate-grids">
										
										<div class="col-md-4 producst-cate-grid text-center">
											<h2>KIDS</h2>
											<img class="r-img text-center img-responsive" src="images/kid-r-img.jpg" title="name">
											<span><img src="images/objs3.png" title="name"></span>
											<h4>TOTAL</h4>
											<label>357 PRODUCTS</label>
											<a class="r-list-w" href="#"><img src="images/list-icon.png" title="list"></a>
										</div>
									</div>
							</div>
							<!---->
							<div class="product-filter-grid1-brands-col3">
								<div class="products-colors">
									<h3>SELECT COLOR </h3>
									<li><a href="#"><span class="color1"> </span></a></li>
									<li><a href="#"><span class="color2"> </span></a></li>
									<li><a href="#"><span class="color3"> </span></a></li>
									<li><a href="#"><span class="color4"> </span></a></li>
									<li><a href="#"><span class="color5"> </span></a></li>
									<li><a href="#"><span class="color6"> </span></a></li>
									<li><a href="#"><span class="color7"> </span></a></li>
									<li><a href="#"><span class="color8"> </span></a></li>
									<li><a href="#"><span class="color9"> </span></a></li>
									<li><a href="#"><span class="color10"> </span></a></li>
									<li><a href="#"><span class="color11"> </span></a></li>
									<li><a href="#"><span class="color12"> </span></a></li>
									<li><a href="#"><span class="color13"> </span></a></li>
									<li><a href="#"><span class="color14"> </span></a></li>
									<li><a href="#"><span class="color15"> </span></a></li>
									<li><a href="#"><span class="color16"> </span></a></li>
									<li><a href="#"><span class="color17"> </span></a></li>
									<li><a href="#"><span class="color18"> </span></a></li>
									<li><a href="#"><span class="color19"> </span></a></li>
									<li><a href="#"><span class="color20"> </span></a></li>
									<div class="clearfix"> </div>
								</div>
							</div>
							<div class="clearfix"> </div>
						</div>
					</div>
				</div>
				<div class="clearfix"> </div>
				<!-- //products ---->
				<!----speical-products---->
				<div class="special-products all-poroducts">
					<div class="s-products-head">
						<div class="s-products-head-left">
							<h3>SPECIAL <span>PRODUCTS</span></h3>
						</div>
						<div class="s-products-head-right">
							<a href="#"><span> </span>view all products</a>
						</div>
						<div class="clearfix"> </div>
					</div>
					<!----special-products-grids---->
					<div class="special-products-grids">
						<div class="col-md-3 special-products-grid text-center">
							<a class="brand-name" href="single-page.jsp"><img src="images/b1.jpg" title="name" /></a>
							<a class="product-here" href="single-page.jsp"><img src="images/p1.jpg" title="product-name" /></a>
							<h4><a href="single-page.jsp">Nike Roshe Run</a></h4>
							<a class="product-btn" href="single-page.jsp"><span>RS2999</span><small>GET NOW</small><label> </label></a>
						</div>
						<div class="col-md-3 special-products-grid text-center">
							<a class="brand-name" href="single-page.jsp"><img src="images/b2.jpg" title="name" /></a>
							<a class="product-here" href="single-page.jsp"><img src="images/p2.jpg" title="product-name" /></a>
							<h4><a href="single-page.jsp">Line Link 67009</a></h4>
							<a class="product-btn" href="single-page.jsp"><span>RS2999</span><small>GET NOW</small><label> </label></a>
						</div>
						<div class="col-md-3 special-products-grid text-center">
							<a class="brand-name" href="single-page.jsp"><img src="images/b3.jpg" title="name" /></a>
							<a class="product-here" href="single-page.jsp"><img src="images/p3.jpg" title="product-name" /></a>
							<h4><a href="single-page.jsp">Minimus Zero </a></h4>
							<a class="product-btn" href="single-page.jsp"><span>RS2999</span><small>GET NOW</small><label> </label></a>
						</div>
						<div class="col-md-3 special-products-grid text-center">
							<a class="brand-name" href="single-page.jsp"><img src="images/b4.jpg" title="name" /></a>
							<a class="product-here" href="single-page.jsp"><img src="images/p4.jpg" title="product-name" /></a>
							<h4><a href="single-page.jsp"> Athletic Shoe </a></h4>
							<a class="product-btn" href="single-page.jsp"><span>RS2999</span><small>GET NOW</small><label> </label></a>
						</div>
						<div class="col-md-3 special-products-grid text-center">
							<a class="brand-name" href="single-page.jsp"><img src="images/b5.jpg" title="name" /></a>
							<a class="product-here" href="single-page.jsp"><img src="images/p2.jpg" title="product-name" /></a>
							<h4><a href="single-page.jsp">Veronique </a></h4>
							<a class="product-btn" href="single-page.jsp"><span>RS2999</span><small>GET NOW</small><label> </label></a>
						</div>
						<div class="col-md-3 special-products-grid text-center">
							<a class="brand-name" href="single-page.jsp"><img src="images/b6.jpg" title="name" /></a>
							<a class="product-here" href="single-page.jsp"><img src="images/p6.jpg" title="product-name" /></a>
							<h4><a href="single-page.jsp">Suede Boots </a></h4>
							<a class="product-btn" href="single-page.jsp"><span>RS2999</span><small>GET NOW</small><label> </label></a>
						</div>
						<div class="col-md-3 special-products-grid text-center">
							<a class="brand-name" href="single-page.jsp"><img src="images/b7.jpg" title="name" /></a>
							<a class="product-here" href="single-page.jsp"><img src="images/p7.jpg" title="product-name" /></a>
							<h4><a href="single-page.jsp">Barricade 6.0  </a></h4>
							<a class="product-btn" href="single-page.jsp"><span>RS2999</span><small>GET NOW</small><label> </label></a>
						</div>
						<div class="col-md-3 special-products-grid text-center">
							<a class="brand-name" href="single-page.jsp"><img src="images/b1.jpg" title="name" /></a>
							<a class="product-here" href="single-page.jsp"><img src="images/p8.jpg" title="product-name" /></a>
							<h4><a href="single-page.jsp">Cotu Classic </a></h4>
							<a class="product-btn" href="single-page.jsp"><span>RS2999</span><small>GET NOW</small><label> </label></a>
						</div>
						<div class="clearfix"> </div>
					</div>
					<!---//special-products-grids---->
				</div>
				<!----->
				<div class="special-products all-poroducts latest-products">
					<div class="s-products-head">
						<div class="s-products-head-left">
							<h3>LATEST <span>PRODUCTS</span></h3>
						</div>
						<div class="s-products-head-right">
							<a href="#"><span> </span>view all products</a>
						</div>
						<div class="clearfix"> </div>
					</div>
					<!----special-products-grids---->
					<div class="special-products-grids">
						<div class="col-md-3 special-products-grid text-center">
							<a class="brand-name" href="single-page.jsp"><img src="images/b1.jpg" title="name" /></a>
							<a class="product-here" href="single-page.jsp"><img src="images/p1.jpg" title="product-name" /></a>
							<h4><a href="#">Nike Roshe Run</a></h4>
							<a class="product-btn" href="single-page.jsp"><span>RS2999</span><small>GET NOW</small><label> </label></a>
						</div>
						<div class="col-md-3 special-products-grid text-center">
							<a class="brand-name" href="single-page.jsp"><img src="images/b2.jpg" title="name" /></a>
							<a class="product-here" href="single-page.jsp"><img src="images/p2.jpg" title="product-name" /></a>
							<h4><a href="#">Line Link 67009</a></h4>
							<a class="product-btn" href="single-page.jsp"><span>RS2999</span><small>GET NOW</small><label> </label></a>
						</div>
						<div class="col-md-3 special-products-grid text-center">
							<a class="brand-name" href="single-page.jsp"><img src="images/b3.jpg" title="name" /></a>
							<a class="product-here" href="single-page.jsp"><img src="images/p3.jpg" title="product-name" /></a>
							<h4><a href="single-page.jsp">Minimus Zero </a></h4>
							<a class="product-btn" href="single-page.jsp"><span>RS2999</span><small>GET NOW</small><label> </label></a>
						</div>
						<div class="col-md-3 special-products-grid text-center">
							<a class="brand-name" href="single-page.jsp"><img src="images/b4.jpg" title="name" /></a>
							<a class="product-here" href="single-page.jsp"><img src="images/p4.jpg" title="product-name" /></a>
							<h4><a href="single-page.jsp"> Athletic Shoe </a></h4>
							<a class="product-btn" href="single-page.jsp"><span>RS2999</span><small>GET NOW</small><label> </label></a>
						</div>
						<div class="col-md-3 special-products-grid text-center">
							<a class="brand-name" href="single-page.jsp"><img src="images/b5.jpg" title="name" /></a>
							<a class="product-here" href="single-page.jsp"><img src="images/p2.jpg" title="product-name" /></a>
							<h4><a href="single-page.jsp">Veronique </a></h4>
							<a class="product-btn" href="single-page.jsp"><span>RS2999</span><small>GET NOW</small><label> </label></a>
						</div>
						<div class="col-md-3 special-products-grid text-center">
							<a class="brand-name" href="single-page.jsp"><img src="images/b6.jpg" title="name" /></a>
							<a class="product-here" href="single-page.jsp"><img src="images/p6.jpg" title="product-name" /></a>
							<h4><a href="single-page.jsp">Suede Boots </a></h4>
							<a class="product-btn" href="single-page.jsp"><span>RS2999</span><small>GET NOW</small><label> </label></a>
						</div>
						<div class="col-md-3 special-products-grid text-center">
							<a class="brand-name" href="single-page.jsp"><img src="images/b7.jpg" title="name" /></a>
							<a class="product-here" href="single-page.jsp"><img src="images/p7.jpg" title="product-name" /></a>
							<h4><a href="single-page.jsp">Barricade 6.0  </a></h4>
							<a class="product-btn" href="single-page.jsp"><span>RS2999</span><small>GET NOW</small><label> </label></a>
						</div>
						<div class="col-md-3 special-products-grid text-center">
							<a class="brand-name" href="single-page.jsp"><img src="images/b1.jpg" title="name" /></a>
							<a class="product-here" href="single-page.jsp"><img src="images/p8.jpg" title="product-name" /></a>
							<h4><a href="single-page.jsp">Cotu Classic </a></h4>
							<a class="product-btn" href="single-page.jsp"><span>RS2999</span><small>GET NOW</small><label> </label></a>
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

