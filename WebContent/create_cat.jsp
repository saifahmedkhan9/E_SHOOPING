<!DOCTYPE HTML>
<html>
	<head>
		<title>Create Category</title>
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
		<!----//End-top-nav-script---->
	</head>
	<body>
		<%@ include file="headera.jsp" %>
			  <!---top-header-search-box--->
						<div class="clearfix"> </div>
			</div>
		</div><br>
		
    		   <form action="Create_Categ" method="post" name="fr1" onsubmit="return validate()">
					          <div class="contact-form">
								<div class="contact-to">
			                     	<input type="text" class="text" value="Category ID..."  name="ucat_id" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Category ID...';}">
								 	<input type="text" class="text" value="Display Name..." name="udname" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Display Name...';}">
								</div>
								<div class="text2">
				                   <textarea value="Description..." name="udesc" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Description...';}">Description...</textarea>
				                </div>
				               <span><input type="submit" class="" value="Send"></span>
				                <div class="clearfix"></div>
				                </div>
				                </form>
		
    	  <br><br>
		<%@ include file="footer.html" %>	
 </body>
 </html>       