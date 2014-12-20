<!DOCTYPE HTML>
<html>
	<head>
		<title>Terms And Condition</title>
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
		
		<div class="s-products-head-left"><br>
				<h3>Terms & <span>Conditions</span></h3></h3>
						</div><br><br><br>
			<p><b>Please read the following terms and conditions very carefully as your use of service is subject to your acceptance<br> of and compliance with the following terms and conditions ("Terms").<br>

By subscribing to or using any of our services you agree that you have read, understood and are bound by the Terms,<br> regardless of how you subscribe to or use the services. If you do not want to be bound by the Terms,<br> you must not subscribe to or use our services. These Terms and various other policies are binding as per the<br> provisions of the Information Technology (Intermediaries guidelines) Rules, 2011 formulated under the<br> Information Technology Act of 2000.<br><br>

In these Terms, references to "you", "User" shall mean the end user accessing the Website, its contents and<br> using the Services offered through the Website, "Service Providers" mean independent third party service providers,<br> and "we", "us" and "our" shall mean Vector E-commerce Private Limited and its affiliates.<br><br>


<br><br>1. Introduction:<br><br></b>

a) www.BrandLogo.com ("Website") is an Internet based content and e-commerce portal licensed by Vector<br> E-commerce Private Limited, a company incorporated under the laws of India.<br><br>

b) Use of the Website is offered to you conditioned on acceptance without modification of all the terms,<br> conditions and notices contained in these Terms, as may be posted on the Website from time to time.<br> BrandLogo.com at its sole discretion reserves the right not to accept a User from registering on the Website<br> without assigning any reason thereof.<br><br>

<b>2. User Account, Password, and Security:<br><br></b>

You will receive a password and account designation upon completing the Website's registration process.<br> You are responsible for maintaining the confidentiality of the password and<br> account, and are fully responsible for all activities that occur under your password or account.<br> You agree to (a) immediately notify BrandLogo.com of any unauthorized use of your password or account or any other breach of security, and (b)<br> ensure that you exit from your account at the end of each session. BrandLogo.com cannot and will not be liable for any loss or damage arising from your<br> failure to comply with this Section 2.<br><br>

<b>3. Services Offered:<br><br></b>

BrandLogo.com provides a number of Internet-based services through the Web Site (all such services, collectively,<br> the "Service"). One such service enables users to purchase original merchandise <br>such as clothing, footwear and accessories from various fashion and lifestyle brands <br>(collectively, "Products"). The Products can be purchased through the Website through various methods of payments offered. The sale/purchase of<br> Products shall be additionally governed by specific policies of sale, like cancellation policy, return policy, etc. (which are found on the following<br> URL http://www.BrandLogo.com/faqs), and all of which are incorporated here<br> by reference. In addition, these terms and policies may be further supplemented by Product specific<br> conditions, which may be displayed on the webpage of that Product.

<b><br><br>4. Privacy Policy:<br><br></b>

The User hereby consents, expresses and agrees that he has read and fully understands the Privacy Policy of <br>BrandLogo.com. The user further consents that the terms and contents of such Privacy<br> Policy are acceptable to him.<br><br>

<b>5. Limited User:<br><br></b>

The User agrees and undertakes not to reverse engineer, modify, copy, distribute, transmit, display, perform,<br> reproduce, publish, license, create derivative works from, transfer, or sell any<br> information or software obtained from the Website. Limited reproduction and <br>copying of the content of the Website is permitted provided that BrandLogo's name is stated as the source and prior<br> written permission of BrandLogo.com is sought. For the removal of doubt, it is clarified that unlimited or wholesale reproduction, copying of the content for commercial or non-commercial purposes<br> and unwarranted modification of data and information within the content of the Website is not permitted.</p><br><br>
						
	</div>
	<%@ include file="footer.html" %>
	</body>
	</html>