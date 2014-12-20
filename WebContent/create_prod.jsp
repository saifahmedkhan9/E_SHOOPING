<!DOCTYPE HTML>
<html>
	<head>
		<title>Create</title>
		<script type="text/javascript">
function readURL(input) {
        if (input.files && input.files[0]) {
            var reader = new FileReader();

            reader.onload = function (e) {
                $('#blah')
                    .attr('src', e.target.result)
                    .width(150)
                    .height(200);
            };

            reader.readAsDataURL(input.files[0]);
        }
    }
</script>
	<link class="jsbin" href="http://ajax.googleapis.com/ajax/libs/jqueryui/1/themes/base/jquery-ui.css" rel="stylesheet" type="text/css" />
<script class="jsbin" src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
<script class="jsbin" src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.0/jquery-ui.min.js"></script>
<meta charset=utf-8 />
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
	<% 	String user1 = (String)session.getAttribute("umail");
		String admin=(String)session.getAttribute("admin");%>
	<% 	
		//if(user1==null||admin==null)
		//response.sendRedirect("index.jsp");
	%>
		<%@ include file="headera.jsp" %>
			  <!---top-header-search-box--->
						<div class="clearfix"> </div>
			</div>
		</div>
       <div class="register_account">
          	<div class="wrap">
    		   <form action="Create" method="post" name="fr1" onsubmit="return validate()">
    			 <div class="col_1_of_2 span_1_of_2">
		   			   	<div>Display Name<input type="text" name="udname"></div>
		    			<div>Description<input type="text" value="" name="udes" ></div>
		    			<div>Inventory<input type="text" value="" name="uinventory" ></div>
		    			<div>Sku size<input type="text" value="" name="usize" ></div>
		    			
		    	 </div>
		    	  <div class="col_1_of_2 span_1_of_2">	
		    		Image <input type='file' onchange="readURL(this);" name="uimgurl" accept="image/gif, image/jpeg, image/png, image/jpg"/>
		    		<img id="blah" src="#" alt="your image" width="100px" height="70px"/>
		    		<div>Price<br><input type="text" value="" name="uprice"></div>
		          <div>Category ID<input type="text" value="" name="ucat"></div>
		          <div>IMGURL_PDP<input type='file' name="updp" accept="image/gif, image/jpeg, image/png, image/jpg"/>		          
		          
		       </div>
		          </div>
		         &nbsp;&nbsp;<button class="grey">Create</button>
		    </form>
    	  </div> 
        </div>
		<%@ include file="footer.html" %>	
 </body>
 </html>       