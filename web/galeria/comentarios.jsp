<%-- 
    Document   : comentarios
    Created on : Nov 11, 2018, 4:51:55 PM
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
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Comentarios</title>
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
            String imagen = request.getParameter("nomm");
            Class.forName("com.mysql.jdbc.Driver");
             java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Proyectofinal", "root", "PEpe20CJ23");
             Statement s3=con.createStatement();
             ResultSet rs3= s3.executeQuery("select C.comentario, U.nombre, C.calificacion from calificacion c inner join usuario u on c.idusuario=u.id_usuario "
                     + "inner join obra o on c.idobra=o.id_obra where o.id_obra= " + imagen );
             
             ArrayList list1 = new ArrayList();
             ArrayList list2 = new ArrayList();
             ArrayList list3 = new ArrayList();
             int n=0;
             int l=0;
             int i=0;
             while (rs3.next()){
                 list1.add(rs3.getString("comentario"));
                 list2.add(rs3.getString("nombre"));
                 list3.add(rs3.getString("calificacion"));
                 
             }
              
        %>
        
        <div class="coment">
            <div class="cajita">
                <table class="tablita" id="tablita">
                    <tr class="untr">
                        <th>Usuario</th>
                        <th>Comentario</th>
                        <th>Calificacion</th>
                        </tr>
                        
                            <%
                                while(n<list2.size()){%>
                                 <tr>
                                <td class="pri"><%out.print(list2.get(n));%></td>
                                 <td class="pri"><%out.print(list1.get(n));%></td>
                                <td class="pri"><%out.print(list3.get(n));%></td>
                                </tr>
                               
                                    <%
                                        n++;
                                }
                                
                                
                                
                                
                                
                                %>
                                
                                
                                
                                
                            
                    </table>
                </div>
                                <form action="comentar.jsp" method="post" class="comenta">
                                <input type="text" placeholder="Nombre" name="elnombre">
                                <input type="text" placeholder="Ingrese el comentario" name="elcomentario">
                                <input type="text" placeholder="Calificacion 1-5" name="lacalificacion" >
                                <input type="hidden" value="<%out.print(imagen);%>" name="idobra">
                                <input type="submit"  class="bo" value="Escribir comentario">
                                </form>
            </div>
                                
                                <a class="vol" href="Galeria.jsp"><--- volver a la Galeria</a>
        
    </body>
</html>
