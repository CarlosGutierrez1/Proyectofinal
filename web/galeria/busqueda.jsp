<%-- 
    Document   : busqueda
    Created on : Nov 10, 2018, 6:47:02 PM
    Author     : apolu
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<!--[if lte IE 8]><script src="assets/js/ie/html5shiv.js"></script><![endif]-->
		<link rel="stylesheet" href="assets/css/main.css" />
                <link rel="stylesheet" href="style.css" />
		<noscript><link rel="stylesheet" href="assets/css/noscript.css" /></noscript>
		<!--[if lte IE 8]><link rel="stylesheet" href="assets/css/ie8.css" /><![endif]-->
		<!--[if lte IE 9]><link rel="stylesheet" href="assets/css/ie9.css" /><![endif]-->
    </head>
    <body>
        
        
        
        <%
        int id = Integer.parseInt(request.getParameter("autoselect"));
             
             Class.forName("com.mysql.jdbc.Driver");
             java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Proyectofinal", "root", "");
             Statement s3=con.createStatement();
             ResultSet rs3= s3.executeQuery("select A.nombre, O.imagen, o.id_obra, o.idubicacion from autor A inner join Obra o on A.id_autor=O.idautor where A.id_autor=" + id);
             
             

             int l =0;
             int n = 0;
             int u = 0;
                                        ArrayList list3 = new ArrayList();
                                        ArrayList list4 = new ArrayList();
                                        ArrayList list5 = new ArrayList();
                                        ArrayList list6 = new ArrayList();
                                        
                                        while(rs3.next()){
                                            list3.add(rs3.getString("imagen"));
                                            list4.add(rs3.getString("nombre"));
                                            list5.add(rs3.getString("id_obra"));
                                            list6.add(rs3.getString("idubicacion"));
                                            
                                        }
                                        
                                        
                                        %>
                                        <div class="comentarios" id="comentarios">
                                                    <div class="cerrar"><a onclick="javascript:cerrar()" >Cerrar</a></div>
        </div>
                                        <div id="wrapper">

			<div id="main">
				<div id="reel">

					<!-- Header Item -->

						<div id="header" class="item" data-width="500">
							<div class="inner">
								<h1>ColHearth</h1>
								<p></p>
                                
							</div>
						</div>
                                        
                                        
                                        <%
                                        
                                        while(n<list3.size()){%>
                                            
                                            <article class="item thumb" data-width="384">
                                                <form action="comentarios.jsp" method="post">
                                                <input type="hidden" value="<%out.print(list5.get(n));%>" class="nomm" id="nomm" name="nomm">
                                                <input type="submit" class="botonima" id="botonima" value="Comentarios" >
                                                </form>
                                                <form action="ubicaciones.jsp" method="post">
                                                    <input type="hidden" value="<%out.print(list5.get(n));%>" class="nomm" id="nomm" name="nomm2">
                                                    <input type="hiddem" value="<%out.print(list6.get(n));%>" name="laubicacion">
                                                    <input type="submit" class="botonubi" id="botonubi" value="Ubicacion">
                                                    </form>
                                                
							<h2><%out.print(list4.get(n));%></h2>
                                                        <a href="<%out.print(list3.get(n));%>" class="image"><img src="<%out.print(list3.get(n));%>" alt=""></a>
                                                        
                                                        
						</article>
                                            
                                            <%
                                                n++;
                                        }
                                        
                                        
                                       
                                        
                                        
                                        
                                        
                                        
                                        
                                        %>
                                        
                                        </div>
			</div>
                                        
                                        
                                        <h1><%out.print(list3.get(0));%><h1>
                                                <div id="footer">
				<div class="left">
					<p>Esto es <strong>ColHeart</strong> y esta es nuestra galeria de obras.<br/>Por favor clic en cada imagen.</p>
                    <p1><a href="../index.html">Volver a la Pagina anterior</a></p1>
				</div>
				<div class="right">
					<ul class="contact">
						<li><a href="#" class="icon fa-twitter"><span class="label">Twitter</span></a></li>
						<li><a href="#" class="icon fa-instagram"><span class="label">Instagram</span></a></li>
						<li><a href="#" class="icon fa-facebook"><span class="label">Facebook</span></a></li>
						<li><a href="#" class="icon fa-dribbble"><span class="label">Dribbble</span></a></li>
						<li><a href="#" class="icon fa-pinterest"><span class="label">Pinterest</span></a></li>
						<li><a href="#" class="icon fa-envelope"><span class="label">Email</span></a></li>
					</ul>
					<ul class="copyright">
						<li>&copy; Universidad de la Sabana</li>
					</ul>
				</div>
			</div>

		</div>
                                                

		<!-- Scripts -->
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/jquery.poptrox.min.js"></script>
			<script src="assets/js/skel.min.js"></script>
			<script src="assets/js/skel-viewport.min.js"></script>
			<script src="assets/js/util.js"></script>
			<!--[if lte IE 8]><script src="assets/js/ie/respond.min.js"></script><![endif]-->
			<script src="assets/js/main.js"></script>
                        
                        <script >
  function mostrar(){

    document.getElementById("comentarios").style.display="block";
  }
  function cerrar(){
    document.getElementById("comentarios").style.display="none";
  }
                   </script>                    
                                       
                           
    </body>
</html>
