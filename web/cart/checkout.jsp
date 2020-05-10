<%-- 
    Document   : checkout
    Created on : Nov 18, 2018, 1:23:36 PM
    Author     : apolu
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
 <head>
	<title>Checkout</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="keywords" content="Downy Shoes Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
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
	<link rel="stylesheet" type="text/css" href="css/checkout.css">
	<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
	<!-- font-awesome-icons -->
	<link href="css/font-awesome.css" rel="stylesheet">
	<!-- //font-awesome-icons -->
	<link href="//fonts.googleapis.com/css?family=Montserrat:100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800"
	    rel="stylesheet">
	<link href="//fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800" rel="stylesheet">
</head>

<body>
     <%
     Class.forName("com.mysql.jdbc.Driver");
            java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Proyectofinal", "root", "");
            Statement st=con.createStatement();
            
            int cantidad = Integer.parseInt(request.getParameter("cantidad"));
            int loquequeda=0;
             String idarticulo = request.getParameter("idarticulo");
            ResultSet rs= st.executeQuery("select *  from articulo where id_articulo="+idarticulo);
            
            
            ArrayList list1 =new  ArrayList();
            ArrayList list2 =new  ArrayList();
            ArrayList list3 =new  ArrayList();
            ArrayList list4 =new  ArrayList();
            ArrayList list5 =new  ArrayList();
            ArrayList list6 =new  ArrayList();
            
         
            
            
           
            
            

while (rs.next()){
                 list1.add(rs.getString("id_articulo"));
                 list2.add(rs.getString("nombre"));
                 list3.add(rs.getString("stock"));
                 list4.add(rs.getString("descripcion"));
                 list5.add(rs.getString("valor"));
                 list6.add(rs.getString("imagen"));
                 
             }

String va1;
int vaa;
int i=0;

             va1= (String)list5.get(0);
             vaa = Integer.parseInt(va1);
             loquequeda=Integer.parseInt((String)list3.get(0))-cantidad;
             
             
    
    
    
    
    
    
    
    %>
    
    
    
    
    
    
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
					<li>Check Out</li>
				</ul>
			</div>
		</div>
		<!-- //banner_inner -->
	</div>

	<!-- //banner -->
	<!-- top Products -->
	<div class="ads-grid_shop">
		<div class="shop_inner_inf">
			<div class="privacy about">
				<h3>Chec<span>kout</span></h3>

				<div class="checkout-right">
					
					<table class="timetable_sub">
						<thead>
							<tr>
								<th>SL No.</th>
								<th>Articulo</th>
								
								<th>Nombre</th>
                                                                <th>Cantidad</th>
								<th>Valor</th>

							</tr>
						</thead>
						<tbody>
							<tr class="rem1">
								<td class="invert">1</td>
                                                                <td class="invert-image"><img src="<%out.print(list6.get(0));%>" alt=" " class="img-responsive"></td>
								
								<td class="invert"><%out.print(list2.get(0));%></td>
                                                                <td> </td>

								<td class="invert"><%out.print(list5.get(0));%> COP</td>
								
							</tr>
							
							

						</tbody>
					</table>
				</div>
				<div class="checkout-left">
					<div class="col-md-4 checkout-left-basket">
						<h4>Total</h4>
						<ul>
                                                    <%
                                                        int valortotal2=0;  
                                                        while(i<cantidad){
                                                            valortotal2=valortotal2+vaa;
                                                            i++;
                                                        }
                                                        %>
							<li>Articulo <i>-</i> <span><%out.print(list5.get(0));%> COP</span></li>
							
							
							<li>Total <i>-</i> <span><%out.print(valortotal2);%> COP</span></li>
						</ul>
					</div>
					<div class="col-md-8 address_form">
						<h4>Ingrese su correo y contraseña</h4>
						<form action="payment.jsp" method="post" class="creditly-card-form agileinfo_form">
                                                    <p>Que tipo de pago desea usar?<p>
                                                    <select name="tipopago">
                                                        <option value="1" >Efectivo</option>
                                                        <option value="2" >Tarjeta Credito</option>
                                                        <option value="3" >Paypal</option>
                                                        
                                                    </select>
                                                    <input type="text" placeholder="Ingrese su Correo" name="usuario">
                                                    <input type="password"placeholder="contraseña" name="contraa2">
                                                    <input type="hidden" value="<%out.print(valortotal2);%>" name="valortotal">
                                                    <input type="hidden" value="<%out.print(list1.get(0));%>" name="idarticuloo">
                                                    <input type="hidden" value="20181122" name="fecha">
                                                    <input type="hidden" value="<%out.print(cantidad);%>" name="cantidadd" > 
                                                    <input type="hidden" value="<%out.print(loquequeda);%>" name="loquequeda">
                                                    <div class="checkout-right-basket">
                                                        <a><input type="submit" value="Hacer pago" style=" background-color: rgba(215, 44, 44, 0); color:  #FFF; border: 20px; border-radius: 10px;"></a>
						</div>
							
						</form>
						
					</div>

					<div class="clearfix"> </div>


					<div class="clearfix"></div>
				</div>
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
					<ul class="social-nav model-3d-0 footer-social social two">
						<li>
							<a href="#" class="facebook">
								<div class="front"><i class="fa fa-facebook" aria-hidden="true"></i></div>
								<div class="back"><i class="fa fa-facebook" aria-hidden="true"></i></div>
							</a>
						</li>
						<li>
							<a href="#" class="twitter">
								<div class="front"><i class="fa fa-twitter" aria-hidden="true"></i></div>
								<div class="back"><i class="fa fa-twitter" aria-hidden="true"></i></div>
							</a>
						</li>
						<li>
							<a href="#" class="instagram">
								<div class="front"><i class="fa fa-instagram" aria-hidden="true"></i></div>
								<div class="back"><i class="fa fa-instagram" aria-hidden="true"></i></div>
							</a>
						</li>
						<li>
							<a href="#" class="pinterest">
								<div class="front"><i class="fa fa-linkedin" aria-hidden="true"></i></div>
								<div class="back"><i class="fa fa-linkedin" aria-hidden="true"></i></div>
							</a>
						</li>
					</ul>
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

				<p class="copy-right-w3ls-agileits">&copy 2018 ColHeartShop. All rights reserved </p>
			</div>
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
	<!--quantity-->
	<script>
		$('.value-plus').on('click', function () {
			var divUpd = $(this).parent().find('.value'),
				newVal = parseInt(divUpd.text(), 10) + 1;
			divUpd.text(newVal);
		});

		$('.value-minus').on('click', function () {
			var divUpd = $(this).parent().find('.value'),
				newVal = parseInt(divUpd.text(), 10) - 1;
			if (newVal >= 1) divUpd.text(newVal);
		});
	</script>
	<!--quantity-->
	<script>
		$(document).ready(function (c) {
			$('.close1').on('click', function (c) {
				$('.rem1').fadeOut('slow', function (c) {
					$('.rem1').remove();
				});
			});
		});
	</script>
	<script>
		$(document).ready(function (c) {
			$('.close2').on('click', function (c) {
				$('.rem2').fadeOut('slow', function (c) {
					$('.rem2').remove();
				});
			});
		});
	</script>
	<script>
		$(document).ready(function (c) {
			$('.close3').on('click', function (c) {
				$('.rem3').fadeOut('slow', function (c) {
					$('.rem3').remove();
				});
			});
		});
	</script>

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
