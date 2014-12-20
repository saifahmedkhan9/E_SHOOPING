<!DOCTYPE HTML>
<html>
	<head>
		<title>Customer Login</title>
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
		<script type="text/javascript">
		function validate()
		{
			var name=document.fr1.umail.value;
			var pass=document.fr1.upass.value;
			 if(name.length==0)
				{
					alert("Please Enter Email_Id");
					return false;
				}
			 if(pass.length==0)
				{
					alert("Please Enter Password");
					return false;
				}
		}
		</script>
		<!----//End-top-nav-script---->
	</head>
	<body>
		<%@ include file="header.jsp" %>
				<div class="col_1_of_login span_1_of_login">
				  <div class="login-title">
	           		<h4 class="title">Registered Customers</h4>
					 <div class="comments-area">
						<form action="Login" method="post" name="fr1" onsubmit="return validate()">
							<p>
								<label>Email Id</label>
								<span>*</span>
								<input type="text" name="umail">
							</p>
							<p>
								<label>Password</label>
								<span>*</span>
								<input type="password" name="upass">
							</p>
							 <p id="login-form-remember">
								<label><a href="#">Forget Your Password ? </a></label>
							 </p>
							 <p>
								<input type="submit" value="Login">
							</p>
						</form>
					</div>
			      </div>
				</div>
				<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
        <%@ include file="footer.html" %>
</body>
</html>