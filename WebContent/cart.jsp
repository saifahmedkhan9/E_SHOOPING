<%String order = (String)session.getAttribute("order"); 

 String user1 = (String)session.getAttribute("umail"); 
 %>
 <!DOCTYPE HTML>
<html>
<head>
<title>Products</title>
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
		$(".scroll").click(function(event) {
			event.preventDefault();
			$('html,body').animate({
				scrollTop : $(this.hash).offset().top
			}, 1000);
		});
	});
</script>
<!---- start-smoth-scrolling---->
<meta name="viewport" content="width=device-width, initial-scale=1">
<script type="application/x-javascript">
	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } 
</script>
</script>
<!----webfonts--->
<link
	href='http://fonts.googleapis.com/css?family=Lato:100,300,400,700,900,100italic,300italic,400italic,700italic,900italic'
	rel='stylesheet' type='text/css'>
<!---//webfonts--->
<!----start-top-nav-script---->
<script>
	$(function() {
		var pull = $('#pull');
		menu = $('nav ul');
		menuHeight = menu.height();
		$(pull).on('click', function(e) {
			e.preventDefault();
			menu.slideToggle();
		});
		$(window).resize(function() {
			var w = $(window).width();
			if (w > 320 && menu.is(':hidden')) {
				menu.removeAttr('style');
			}
		});
	});
</script>
<!----//End-top-nav-script---->
</head>
<body>
	<%@ include file="header.jsp"%>
	<!--//top-header-nav---->
	<!----content---->
	<div class="content">
		<div class="container">
			<!--- products ---->
			<div class="products"></div>
			<div class="clearfix"></div>
			<!-- //products ---->
				<%@ page import="java.sql.*,java.util.*" %>
				<% Class.forName("oracle.jdbc.driver.OracleDriver"); %>
				<% 
				String prod=request.getParameter("uprod");
				 String value=request.getParameter("id");
				 
					Connection c = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","project", "project");
					Statement s = c.createStatement();
					String  s1="select * from PRODUCT,ITEM,SKU,ORDER_DETAILS  where  ITEM.ORDER_ID=ORDER_DETAILS.ORDER_ID AND ITEM.SKU_ID=SKU.SKU_ID AND SKU.PROD_ID=PRODUCT.PROD_ID AND ORDER_DETAILS.EMAIL_ID='"+user1+"'";
					ResultSet rs=s.executeQuery(s1); 
					int tot=0,price,qty,mul=1;
			  %>
			  <% while(rs.next()){ 
			        %>		
				<div class="special-products-grids">
					<div class="s-products-head">
					<div class="s-products-head-left">
									
					</div>
					
					<div class="s-products-head-right">
						<span> </span>
					</div>
					<div class="clearfix"></div>
				</div>
					
						<div class="col-md-3 special-products-grid text-center">
							<a class="product-here" href="#"><img src="<%=rs.getString("IMAGEURL") %>" title="<%=rs.getString("Prod_ID")%>" /></a>
						</div>
							<h4>Name: <%=rs.getString("display_Name")%> <br /></h4>
							Item id: <%=rs.getString("ITEM_ID")%> <br />
							Quantity: <%=rs.getString("QUANTITY")%> <br />
							Unit Price:<%=rs.getString("PRICE")%> <br />
							<%price=(Integer.parseInt(rs.getString("PRICE"))); 
							qty=(Integer.parseInt(rs.getString("QUANTITY")));
							mul=price*qty;
							%>
							<%tot=tot+mul;%>
				<div class="clearfix"></div>
				</div>
	
				<!---//special-products-grids---->
			</div>
		</div>
		<%} %>
		<p align="center">
		<a class="product-here" href="#">TOTAL:<%out.println(tot);%></a>
		<a class="product-btn" href=<%="\"orderplace.jsp?total="+tot+"\"" %>>Place Order</a>
		</p>
		<%@ include file="footer.html"%>
</body>
</html>
