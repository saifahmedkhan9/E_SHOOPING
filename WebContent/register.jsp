<!DOCTYPE HTML>
<html>
	<head>
		<title>Register</title>
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
		<script type="text/javascript">
		function validate()
		{
			var name=document.fr1.umail.value;
			var atpos = name.indexOf("@");
		    var dotpos = name.lastIndexOf(".");
		    if (atpos< 1 || dotpos<atpos+2 || dotpos+2>=name.length) {
		        alert("Not a valid e-mail address");
		        return false;
		    }
		    if(name.length==0)
			{
				alert("Please Enter Email_Id");
				return false;
			}
			var fname=document.fr1.ufname.value;
			var pass=document.fr1.upass.value;
			var cpass=document.fr1.ucpass.value;
			var address=document.fr1.uaddress.value;
			var zip=document.fr1.uzip.value;
			var city=document.fr1.ucity.value;
			var dob=document.fr1.udate.value;
			var pno=document.fr1.unumber.value;
			if(address.length==0||zip.length==0||city.length==0||fname.length==0||pno.length==0||dob.length==0)
			{
				alert("PLEASE ENTER SUFFICIENT DETAILS..");
				return false;
			}
			if(pass!=cpass|| pass.length==0)
			{
					if(pass.length==0)
					{
						alert("Enter Password");
						return false;
					}	
					else
						
					{
						alert("Password not matching");
						return false;
					}
				
			}
		}
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
			  <!---top-header-search-box--->
						<div class="clearfix"> </div>
			</div>
		</div>
       <div class="register_account">
          	<div class="wrap">
    		   <form action="Register" method="post" name="fr1" onsubmit="return validate()">
    			 <div class="col_1_of_2 span_1_of_2">
		   			 <div>Email<font color="red">*</font><input type="text" name="umail"></div>
		   			 
		    			<div>First Name<font color="red">*</font><input type="text" name="ufname"></div>
		    			<div>Last Name<input type="text" value="" name="ulname" ></div>
		    			<div class="comments-area">
							<p>
								Password<font color="red">*</font><input type="password" name="upass">
							</p>
							<p>
								Confirm Password<font color="red">*</font><input type="password" name="ucpass">
							</p>
							 
					   </div>
		    	 </div>
		    	  <div class="col_1_of_2 span_1_of_2">	
		    		<div>Address<font color="red">*</font><input type="text" value="" name="uaddress"></div>
		    		<div>Zip<font color="red">*</font><br><input type="text" value="" name="uzip"></div>
		          <div>City<font color="red">*</font><br><input type="text" value="" name="ucity"></div>
		             <div class="comments-area">
		             <div>Date Of Birth (dd-mm-yy)<font color="red">*</font><input type="text" value="" name="udate"></div>
		             Phone Number<font color="red">*</font><input type="text" value="" name="unumber">
		             </div>
		          </div>
		         &nbsp;&nbsp;&nbsp;<button class="grey">Submit</button>
		         <p class="terms"><font color="red">*:</font> Fields Are Mandatory<br>By clicking 'Create Account' you agree to the <a href="terms.jsp">Terms &amp; Conditions</a>.</p>
		         <div class="clear"></div>
		    </form>
    	  </div> 
        </div>
		<%@ include file="footer.html" %>	
 </body>
 </html>       