<!DOCTYPE HTML>
<html>
	<head>
		<title>FAQ</title>
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
		<%@ include file="header.jsp" %><br>
		<div class="top-row-col1 text-center">
		<div class="s-products-head-left"><br>
			<label>		<h3>FAQ- <span>SHOPPING FAQ</span></h3></label>
						</div><br><br><br>
					
					
				<label><h3 ><b>Q1.	What are the shipping charges on Brand Logo products?</b></h3></label>

			<p>Brand Logo offers free shipping within India on all products if your total order amount is Rs. 999* or more. <br>Otherwise Rs. 99 will be levied as Shipping Charges. 

* Order value is calculated after applying discounts.</p>

<h3><b>Q2.How do I check the status of my order?</b></h3>

			<p>You can check the status of your order at any time at this link. This page also has a courier tracking number<br> that can be used to track the status of the order at our courier partner's website. It may take up to 24 hours for the order status to be updated on our courier partner's website.</p>

<h3><b> Q3.How are orders placed on Brand Logo.com delivered to me?</b></h3>

<p>All orders placed on BrandLogo.com are dispatched through our own courier service - BrandLogo.com Logistics, or through other courier<br> partners such as Blue Dart, Quantium, etc. We do not use Speed Post to deliver orders placed on BrandLogo.com</p>

<h3><b>Q4.Does BrandLogo.com deliver products outside India?</b></h3>

<p>No. At this point, BrandLogo.com delivers products only within India.</p>
<br>
<%@ include file="footer.html" %>
</div>
</body>
</html>