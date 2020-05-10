<%-- 
    Document   : filtrar
    Created on : Nov 18, 2018, 4:33:49 PM
    Author     : apolu
--%>



<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
	<title>ColHeartShop</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	
	<script type="application/x-javascript">
		addEventListener("load", function () {
			setTimeout(hideURLbar, 0);
		}, false);

		function hideURLbar() {
			window.scrollTo(0, 1);
		}
	</script>
	<!-- //custom-theme -->
	<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
	<link rel="stylesheet" href="css/shop.css" type="text/css" media="screen" property="" />
	<link href="css/style7.css" rel="stylesheet" type="text/css" media="all" />
	<!-- Owl-carousel-CSS -->
	<link rel="stylesheet" type="text/css" href="css/jquery-ui1.css">
	<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
	<!-- font-awesome-icons -->
	<link href="css/font-awesome.css" rel="stylesheet">
	<!-- //font-awesome-icons -->
	<link href="//fonts.googleapis.com/css?family=Montserrat:100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800"
	    rel="stylesheet">
	<link href="//fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800" rel="stylesheet">
</head>

<body>
	<!-- banner -->
<div class="banner_top innerpage" id="home">
		<div class="wrapper_top_w3layouts">
			<div class="header_agileits">
				<div class="logo inner_page_log">
					<h1><a class="navbar-brand" href="index.html"><span>ColHeart</span> <i>Shop</i></a></h1>
				</div>
				<div class="overlay overlay-contentpush">
					<button type="button" class="overlay-close"><i class="fa fa-times" aria-hidden="true"></i></button>

					<nav>
						<ul>
							<li><a href="index.html" class="active">Inicio</a></li>
							<li><a href="..\index.html">Sobre Nosotros</a></li>
							
							<li><a href="shop.jsp">Shop Now</a></li>
							
						</ul>
					</nav>
				</div>
				<div class="mobile-nav-button">
					<button id="trigger-overlay" type="button"><i class="fa fa-bars" aria-hidden="true"></i></button>
				</div>
				<!-- cart details -->
				
			</div>
		</div>
		<!-- //cart details -->
		<!-- search -->
		
		<!-- //search -->
		<div class="clearfix"></div>
		<!-- /banner_inner -->
		<div class="services-breadcrumb_w3ls_agileinfo">
			<div class="inner_breadcrumb_agileits_w3">

				<ul class="short">
					<li><a href="index.html">Home</a><i>|</i></li>
					<li>Shop</li>
				</ul>
			</div>
		</div>
		<!-- //banner_inner -->
	</div>

	<!-- //banner -->
	<!-- top Products -->
	<div class="ads-grid_shop">
		<div class="shop_inner_inf">
			<!-- tittle heading -->

			<!-- //tittle heading -->
			<!-- product left -->
			<div class="side-bar col-md-3">
                            
				<div class="search-hotel">
					<h3 class="agileits-sear-head">Search Here..</h3>
					<form action="filtrar.jsp" method="post">
						<input type="search" placeholder="Product name..." name="search" required="">
						<input type="submit" value=" ">
					</form>
				</div>
				<!-- price range -->
				<div class="range">
					<h3 class="agileits-sear-head">Price range</h3>
					<ul class="dropdown-menu6">
						<li>

							<div id="slider-range"></div>
                                                        <input type="text" id="amount"  name="valores" style="border: 0; color: #ffffff; font-weight: normal;" />
						</li>
					</ul>
				</div>
				<!-- //price range -->
				<!--preference -->
				<div class="left-side">
					<h3 class="agileits-sear-head">Bolso</h3>
					<ul>
						<li>
							<input type="checkbox" class="checked">
							<span class="span">Llavero</span>
						</li>
						<li>
							<input type="checkbox" class="checked">
							<span class="span">Vaso</span>
						</li>
						<li>
							<input type="checkbox" class="checked">
							<span class="span">Portavaso</span>
						</li>
						<li>
							<input type="checkbox" class="checked">
							<span class="span"></span>
						</li>
					</ul>
				</div>
				<!-- // preference -->
				<!-- discounts -->
				<div class="left-side">
					<h3 class="agileits-sear-head">Descuento</h3>
					<ul>
						<li>
							<input type="checkbox" class="checked">
							<span class="span">5% o mas</span>
						</li>
						<li>
							<input type="checkbox" class="checked">
							<span class="span">10% o mas</span>
						</li>
						<li>
							<input type="checkbox" class="checked">
							<span class="span">20% o mas</span>
						</li>
						<li>
							<input type="checkbox" class="checked">
							<span class="span">30% o mas</span>
						</li>
						<li>
							<input type="checkbox" class="checked">
							<span class="span">50% o mas</span>
						</li>
						<li>
							<input type="checkbox" class="checked">
							<span class="span">60% o mas</span>
						</li>
					</ul>
				</div>
				<!-- //discounts -->
				<!-- reviews -->
				
				<!-- //reviews -->
				<!-- deals -->
				
				<!-- //deals -->
                               

			</div>
			<!-- //product left -->
                        
                        
                         <%
                                                                                Class.forName("com.mysql.jdbc.Driver");
            java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Proyectofinal", "root", "");
            Statement st=con.createStatement();
            String filtra = request.getParameter("search");
            ResultSet rs= st.executeQuery("select *  from articulo where nombre like '%"+ filtra +"%'");
            
            ArrayList list1 =new  ArrayList();
            ArrayList list2 =new  ArrayList();
            ArrayList list3 =new  ArrayList();
            ArrayList list4 =new  ArrayList();
            ArrayList list5 =new  ArrayList();
            ArrayList list6 =new  ArrayList();
            int i = 0;

while (rs.next()){
                 list1.add(rs.getString("id_articulo"));
                 list2.add(rs.getString("nombre"));
                 list3.add(rs.getString("stock"));
                 list4.add(rs.getString("descripcion"));
                 list5.add(rs.getString("valor"));
                 list6.add(rs.getString("imagen"));
                 
             }
                                                                            
                                                                            
                                                                            
                                                                            
                                                                            
                                                                            %>
                                                                            
                                                                            
                                                                            
			<!-- product right -->
                        
                        
			<div class="left-ads-display col-md-9">
				<div class="wrapper_top_shop">
					
					
					<div class="clearfix"></div>
					<!-- product-sec1 -->
                                        
					<div class="product-sec1">
						<!--/mens-->
                                                 <%
                                                                        
                                                                        while(i<list1.size()){
                                                                            
                                                                        %>
						<div class="col-md-4 product-men">
							<div class="product-shoe-info shoe">
								<div class="men-pro-item">
									<div class="men-thumb-item">
                                                                            <img src="<%out.print(list6.get(i));%>" alt="">
										<div class="men-cart-pro">
											<div class="inner-men-cart-pro">
                                                                                            <form  action="verarticulo.jsp" method="post">
                                                                                                <input type="hidden" value="<%out.print(list1.get(i));%>" name="idarticulo">
                                                                                            <input type="submit"  class="link-product-add-cart" value="Ver" style=" border: 10px; border-radius: 8px;">
                                                                                            </form>
                                                                                        </div>
										</div>
										<span class="product-new-top">New</span>
									</div>
                                                                    
                                                                    
                                                                    
                                                                   
									<div class="item-info-product">
                                                                            
                                                                            
                                                                           
										<h4>
											<a href="single.html"><%out.print(list2.get(i));%> </a>
										</h4>
										<div class="info-product-price">
											<div class="grid_meta">
												<div class="product_price">
													<div class="grid-price ">
														<span class="money "><%out.print(list5.get(i));%> COP</span>
													</div>
												</div>
												
											</div>
											
										</div>
										
									</div>
                                                                       
								</div>
							</div>
						</div>
						
						
						<!-- //mens -->
						<!-- /womens -->
						
						<!-- //womens -->
						<!-- /mens -->
						
						<!-- //mens -->

                                                                                                        <%         
                                                                         i++;       
                                                                          }      
                                                                                %>
						<div class="clearfix"></div>

					</div>
					<!-- //product-sec1 -->
					
					<div class="clearfix"></div>
				</div>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>
	<!-- //top products -->
	
	<!-- /newsletter-->
	
	<!-- //newsletter-->
	<!-- footer -->
	<div class="footer_agileinfo_w3">
		<div class="footer_inner_info_w3ls_agileits">
			<div class="col-md-3 footer-left">
				<h2><a href="index.html"><span>ColHeart</span>Shop</a></h2>
				<p>Impulsando el arte Colombiano</p>
				
			</div>
			<div class="col-md-9 footer-right">
				<div class="sign-grds">
					<div class="col-md-4 sign-gd">
						<h4>Nuestra <span>Estructura</span> </h4>
						<ul>
							<li><a href="index.html">Inicio</a></li>
							<li><a href="..\index.html">Sobre Nosotros</a></li>
						</ul>
					</div>

					
					
					<div class="clearfix"></div>
				</div>
			</div>
			<div class="clearfix"></div>

			<p class="copy-right-w3ls-agileits">&copy 2018 ColHeart Shop. All rights reserved </p>
		</div>
	</div>
	
	<!-- //footer -->
<a href="#home" id="toTop" class="scroll" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>
	<!-- js -->
	<script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
	<!-- //js -->
	<!-- cart-js -->
	<script src="js/minicart.js"></script>
	<script>
		shoe.render();

		shoe.cart.on('shoe_checkout', function (evt) {
			var items, len, i;

			if (this.subtotal() > 0) {
				items = this.items();

				for (i = 0, len = items.length; i < len; i++) {}
			}
		});
	</script>
	<!-- //cart-js -->
	<!-- /nav -->
	<script src="js/modernizr-2.6.2.min.js"></script>
	<script src="js/classie.js"></script>
	<script src="js/demo1.js"></script>
	<!-- //nav -->
	<!--search-bar-->
	<script src="js/search.js"></script>
	<!--//search-bar-->
	<!-- price range (top products) -->
	<script src="js/jquery-ui.js"></script>
	<script>
		//<![CDATA[ 
		$(window).load(function () {
			$("#slider-range").slider({
				range: true,
				min: 0,
				max: 9000,
				values: [50, 6000],
				slide: function (event, ui) {
					$("#amount").val("$" + ui.values[0] + " - $" + ui.values[1]);
				}
			});
			$("#amount").val("$" + $("#slider-range").slider("values", 0) + " - $" + $("#slider-range").slider("values", 1));

		}); //]]>
	</script>
	<!-- //price range (top products) -->

	<!-- start-smoth-scrolling -->
	<script type="text/javascript" src="js/move-top.js"></script>
	<script type="text/javascript" src="js/easing.js"></script>
	<script type="text/javascript">
		jQuery(document).ready(function ($) {
			$(".scroll").click(function (event) {
				event.preventDefault();
				$('html,body').animate({
					scrollTop: $(this.hash).offset().top
				}, 1000);
			});
		});
	</script>
	<!-- //end-smoth-scrolling -->
	<script type="text/javascript" src="js/bootstrap-3.1.1.min.js"></script>


</body>

</html>
