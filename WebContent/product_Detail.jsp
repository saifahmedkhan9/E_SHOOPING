<!DOCTYPE HTML>
<html>
	<head>
		<title>Single Page</title>
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
						
					</div>
				</div>
				</div>
				<div class="clearfix"> </div>
				<!-- //products ---->
				<!----product-details--->
				<div class="product-details">
					<div class="container">
					<div class="product-details-row1">
						<div class="product-details-row1-head">
							<h2>${sessionScope.productDetail.prodId}</h2>
							<p>${sessionScope.productDetail.display_Name}</p>
						</div>
						<%String email=(String)session.getAttribute("umail");%>
						<%String order = (String)session.getAttribute("order"); %>
				<%@ page import="java.sql.*,java.util.*" %>
				<% Class.forName("oracle.jdbc.driver.OracleDriver"); %>
				<%
   
  		String prod=request.getParameter("pid");
				
 // if(prod.toLowerCase().contains("converse".toLowerCase()))
   { 
	  String value=request.getParameter("id");
		Connection c = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","project", "project");
		Statement s = c.createStatement();
		String  s1="select * from PRODUCT,SKU  where  PRODUCT.PROD_ID=SKU.PROD_ID AND PRODUCT.PROD_ID='"+prod+"'";
		ResultSet rs=s.executeQuery(s1); 
  %>
  <% while(rs.next()){ 
        %>
        
        <div class="product-details-row1-head">
        <h1><b><%=rs.getString("DISPLAY_NAME") %></b></h1>
		<p><%=rs.getString("DESCRIPTION") %></p>
		</div>
	  <div class="col-md-4 product-details-row1-col1">
		<!----details-product-slider--->
	<!-- Include the Etalage files -->
		<link rel="stylesheet" href="css/etalage.css">
		<script src="js/jquery.etalage.min.js"></script>
	<!-- Include the Etalage files -->
	<script>
			jQuery(document).ready(function($){

				$('#etalage').etalage({
					thumb_image_width: 300,
					thumb_image_height: 400,
					source_image_width: 900,
					source_image_height: 1000,
					show_hint: true,
					click_callback: function(image_anchor, instance_id){
						alert('Callback example:\nYou clicked on an image with the anchor: "'+image_anchor+'"\n(in Etalage instance: "'+instance_id+'")');
					}
				});
				// This is for the dropdown list example:
				$('.dropdownlist').change(function(){
					etalage_show( $(this).find('option:selected').attr('class') );
				});

		});
	</script>
	<!----//details-product-slider--->
	<div class="details-left">
		<div class="details-left-slider">
			<ul id="etalage">
				<li>
					<a href="optionallink.jsp">
						<img class="etalage_thumb_image" src="<%=rs.getString("PDP") %>" />
						<img class="etalage_source_image" src="<%=rs.getString("PDP")%>" />
					</a>
				</li>
				<li>
					<img class="etalage_thumb_image" src="<%=rs.getString("PDP")%>" />
					<img class="etalage_source_image" src="<%=rs.getString("PDP")%>" />
				</li>
				<li>
					<img class="etalage_thumb_image" src="<%=rs.getString("PDP")%>" />
					<img class="etalage_source_image" src="<%=rs.getString("PDP")%>" />
				</li>
				<li>
					<img class="etalage_thumb_image" src="<%=rs.getString("PDP")%>" />
					<img class="etalage_source_image" src="<%=rs.getString("PDP")%>" />
				</li>
				<li>
					<img class="etalage_thumb_image" src="<%=rs.getString("PDP")%>" />
					<img class="etalage_source_image" src="<%=rs.getString("PDP")%>" />
				</li>
				<li>
					<img class="etalage_thumb_image" src="<%=rs.getString("PDP")%>" />
					<img class="etalage_source_image" src="<%=rs.getString("PDP")%>" />
				</li>
				<li>
					<img class="etalage_thumb_image" src="<%=rs.getString("PDP")%>" />
					<img class="etalage_source_image" src="<%=rs.getString("PDP")%>" />
				</li>
			</ul>
		</div>
	</div>
</div>			
					<div class="col-md-8 product-details-row1-col2">
						<div class="product-rating">
							<a class="rate" href="#"><span> </span></a>
							<label><a href="#">Read <b>8</b> Reviews</a></label>
						</div>
						<div class="product-price">
							<div class="product-price-left text-right">
								<h5>Rs <%=rs.getString("PRICE") %>/-</h5>
							</div>
							<div class="product-price-right">
								
							</div>
							<div class="clearfix"> </div>
						</div>
						<div class="product-price-details">
						<form action="Order_Entry" method="post">
							<p class="text-right"><%=rs.getString("DESCRIPTION")%></p>
							<a class="shipping" href="#"><span> </span>Free shipping</a>
							<div class="clearfix"> </div>
							<div class="product-size-qty">
								<div class="pro-size"> 
									<span>Size:</span>
									<select name="sizeSelector">
										<option>6</option>
										<option>7</option>
										<option>8</option>
										<option>9</option>	
									</select>
								</div>
								<div class="pro-qty">
									<span>Qty:</span>
									<select name="quantitySelector">
										<option>1</option>
										<option>2</option>
										<option>3</option>
										<option>4</option>
										<option>5</option>
									</select>
								</div> 
								<div class="clearfix"> </div>
							</div>
							<div class="clearfix"> </div>
							<div class="product-cart-share">
								<div class="add-cart-btn">
								<input type="hidden" value="<%=rs.getString("PROD_ID")%>" name="uprod">
								<input type="hidden" value="<%=(String)session.getAttribute("order")%>" name="uorderid">
								<input type="hidden" value=<%=(String)session.getAttribute("umail")%> name="uemail">
								<input type="hidden" value=<%=rs.getString("SKU_ID")%> name="uskuid">
								<input type="hidden" value="<%=rs.getString("PRICE")%>" name="uprice">
								<input type="button" value="Add to cart" name="submitButton" onclick="submit()"/>
								</div>
								</div>
							</form>
								<ul class="product-share text-right">
									<h3>Share This:</h3>
									<ul>
										<li><a class="share-face" href="#"><span> </span> </a></li>
										<li><a class="share-twitter" href="#"><span> </span> </a></li>
										<li><a class="share-google" href="#"><span> </span> </a></li>
										<li><a class="share-rss" href="#"><span> </span> </a></li>
										<div class="clear"> </div>
									</ul>
								</ul>
							</div>
						</div>
					</div>
						<div class="clearfix"> </div>
				<!--//product-details--->
				</div>
				<!---- product-details ---->
				<div class="product-tabs">
					<!--Horizontal Tab-->
				    <div id="horizontalTab">
				        <ul>
				            <li><a href="#tab-1">Product Overview</a></li>
				            <!-- li><a href="#tab-2">Features</a></li-->
				            <li><a href="#tab-3">Description</a></li>
				        </ul>
				        <div id="tab-1" class="product-complete-info">
				        	<h3>DESCRIPTION:</h3>
				        	<p>${sessionScope.productDetail.description}</p>
				       		<span>DETAILS:</span>
				       		<div class="product-fea">
				       			<p>Product Id : <%=rs.getString("PROD_ID") %></p>
				       			<p>Product Name : <%=rs.getString("DISPLAY_NAME") %></p>
				       			<p>Parent Category Id: <%=rs.getString("CATEGORY_ID") %></p>
				       			<p>Price: Rs <%=rs.getString("PRICE") %>/-</p>
				       		</div>
				        </div>
				        
<%} }%>
				        <!-- div id="tab-2" class="product-complete-info">
				        	<h3>DESCRIPTION:</h3>
				        	<p>With its beautiful premium leather, lace-up oxford styling, recycled rubber outsoles and 9-inch height, this Earthkeepers City Premium style is an undeniably handsome boot. To complement its rustic, commanding outer appearance, we've paid attention to the inside as well - by adding SmartWool® faux shearling to the linings and crafting the footbed using our exclusive anti-fatigue comfort foam technology to absorb shock. Imported.</p>
				       		<p>lace-up oxford styling, recycled rubber outsoles and 9-inch height, this Earthkeepers City Premium style is an undeniably handsome boot. To complement its rustic, commanding outer appearance,</p>
				       		<span>DETAILS:</span>
				       		<div class="product-fea">
				       			<p>Premium burnished full-grain leather and suede upper</p>
				       			<p>Leather is from a tannery rated Silver for its water, energy and waste-management practices</p>
				       			<p>Leather lining and footbed for a premium feel and optimal comfort</p>
				       			<p>SmartWool® faux shearling lining is made with 60% merino wool and 40% PET</p>
				       			<p>Reflective insole board for additional warmth under foot</p>
				       		</div>
				        </div-->
				        <div id="tab-3"  class="product-complete-info">
				        	<h3>DESCRIPTION:</h3>
				        	<p>With its beautiful premium leather, lace-up oxford styling, recycled rubber outsoles and 9-inch height, this Earthkeepers City Premium style is an undeniably handsome boot. To complement its rustic, commanding outer appearance, we've paid attention to the inside as well - by adding SmartWool® faux shearling to the linings and crafting the footbed using our exclusive anti-fatigue comfort foam technology to absorb shock. Imported.</p>
				       		<span>DETAILS:</span>
				       		<div class="product-fea">
				       			<p>100% organic cotton laces</p>
				       			<p>SmartWool® fabric-lined anti-fatigue footbed provides superior, all-day comfort and climate control</p>
				       			<p>Timberland® exclusive Gripstick™ and Green Rubber™ outsole is made with 42% recycled rubber</p>
				       			<p>Premium burnished full-grain leather and suede upper</p>
				       			<p>Leather is from a tannery rated Silver for its water, energy and waste-management practices</p>
				       			<p>Leather lining and footbed for a premium feel and optimal comfort</p>
				       			<p>SmartWool® faux shearling lining is made with 60% merino wool and 40% PET</p>
				       			<p>Reflective insole board for additional warmth under foot</p>
				       			<p>100% organic cotton laces</p>
				       			<p>SmartWool® fabric-lined anti-fatigue footbed provides superior, all-day comfort and climate control</p>
				       			<p>Timberland® exclusive Gripstick™ and Green Rubber™ outsole is made with 42% recycled rubber</p>
				       		</div>
				        </div>
				    </div>
				    <!-- Responsive Tabs JS -->
				    <script src="js/jquery.responsiveTabs.js" type="text/javascript"></script>
				
				    <script type="text/javascript">
				        $(document).ready(function () {
				            $('#horizontalTab').responsiveTabs({
				                rotate: false,
				                startCollapsed: 'accordion',
				                collapsible: 'accordion',
				                setHash: true,
				                disabled: [3,4],
				                activate: function(e, tab) {
				                    $('.info').jsp('Tab <strong>' + tab.id + '</strong> activated!');
				                }
				            });
				
				            $('#start-rotation').on('click', function() {
				                $('#horizontalTab').responsiveTabs('active');
				            });
				            $('#stop-rotation').on('click', function() {
				                $('#horizontalTab').responsiveTabs('stopRotation');
				            });
				            $('#start-rotation').on('click', function() {
				                $('#horizontalTab').responsiveTabs('active');
				            });
				            $('.select-tab').on('click', function() {
				                $('#horizontalTab').responsiveTabs('activate', $(this).val());
				            });
				
				        });
				    </script>
				</div>
				<!-- //product-details ---->
				</div>
				</div>
			<!----content---->
			<div class="clearfix"> </div>
		<%@ include file="footer.html" %>
	</body>
</html>

