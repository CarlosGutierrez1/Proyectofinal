<%-- 
    Document   : Galeria
    Created on : Nov 10, 2018, 4:06:13 PM
    Author     : apolu
--%>





<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Vector"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="javax.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Galeria</title>
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
         
      
        
        <div class="seccion">
                <div class="form1">
                    <table>
                        <form action="busqueda.jsp" method="post">
                        <td>
                        <td><p class="au">Autores</p></td>
                            <td> 
                                
                                <select id="autoselect" name="autoselect" id="autoselect">
                                    <option value="autor1">--Seleccionar Autor--</option>
                                    <%
                                        
                                       
                                        Class.forName("com.mysql.jdbc.Driver");
                                        java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Proyectofinal", "root", "PEpe20CJ23");
                                        Statement st=con.createStatement();
                                        
                                        int i =0;
                                        ArrayList list = new ArrayList();
                                        ArrayList list4 = new ArrayList();
                                        
                                        ResultSet rs = st.executeQuery("select * from autor");
                                        while(rs.next()){
                                            list4.add(rs.getInt("id_autor"));
                                            list.add(rs.getString("nombre"));
                                            
                                        }
                                        
                                         

                                         while(i< list.size()){
                                             
                                             %>
                                             <option value="<%out.print(list4.get(i));%>" name="opcion5" id="opcion5"><%out.print(list.get(i));%></option>
                                             
                                             <%
                                                 
                                              i++;   
                                         }

                                        %>
                                        </select>
                            </td>
                            </td>
                                                       
                            <td>
                             <td><p class="au2">Fecha Nacimiento</p></td>
                            <td>
                                
                                <select id="fechaselect" name="fechaselect">
                                    <option value="">--Seleccionar fecha--</option>
                                    <%
                                        
                                       
                                        Class.forName("com.mysql.jdbc.Driver");
                                        
                                        
                                        int p =0;
                                        ArrayList list2 = new ArrayList();
                                        
                                        ResultSet rs2 = st.executeQuery("select fechanacimiento from autor");
                                        while(rs2.next()){
                                            list2.add(rs2.getString("fechanacimiento"));
                                        }
                                         

                                         while(p< list2.size()){
                                             
                                             %>
                                             <option value="<%out.print(list2.get(p));%>" name="eloption2"><%out.print(list2.get(p));%></option>
                                             <%
                                                 
                                              p++;   
                                         }
                                        %>
                                        </select>
                                         </td>
                            
                            </td>
                            <td>
                                <input type="submit" class="boto" value="Buscar" >
                            
                                </td>
                                </form>
                           
                        
                    </table>
                    
                    
                    
                    </div>
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

					<!-- Thumb Items -->

						<article class="item thumb" data-width="384">
							<h2>Fernando Botero</h2>
							<a href="images/fulls/1.jpg" class="image"><img src="images/thumbs/1.1.jpg" alt=""></a>
						</article>

						<article class="item thumb" data-width="384">
							<h2>Museo del Oro</h2>
							<a href="images/fulls/2.jpg" class="image"><img src="images/thumbs/2.jpg" alt=""></a>
						</article>

						<article class="item thumb" data-width="384">
							<h2>Museo Nacional</h2>
							<a href="images/fulls/3.jpg" class="image"><img src="images/thumbs/3.jpg" alt=""></a>
						</article>

						<article class="item thumb" data-width="384">
							<h2>Julian Andres Cardona</h2>
							<a href="images/fulls/4.jpg" class="image"><img src="images/thumbs/4.jpg" alt=""></a>
						</article>

						<article class="item thumb" data-width="384">
							<h2>Juanita Acosta Caycedo</h2>
							<a href="images/fulls/5.jpg" class="image"><img src="images/thumbs/5.jpg" alt=""></a>
						</article>

						<article class="item thumb" data-width="384">
							<h2>Diaz Esperanza Maria</h2>
							<a href="images/fulls/6.jpg" class="image"><img src="images/thumbs/6.jpg" alt=""></a>
						</article>

						<article class="item thumb" data-width="384">
							<h2>Mariela Restrepo</h2>
							<a href="images/fulls/7.jpg" class="image"><img src="images/thumbs/7.jpg" alt=""></a>
						</article>

						<article class="item thumb" data-width="384">
							<h2>Jorge Alberto Calero</h2>
							<a href="images/fulls/8.jpg" class="image"><img src="images/thumbs/8.jpg" alt=""></a>
						</article>

					

				</div>
			</div>

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
                        
                        
                     
    </body>
</html>
