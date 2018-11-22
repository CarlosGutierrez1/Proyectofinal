<%-- 
    Document   : ubicaciones
    Created on : Nov 11, 2018, 7:52:27 PM
    Author     : apolu
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html>
  <head>
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ubicacion</title>
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
          String idobra = request.getParameter("nomm2");
          String idubicacion = request.getParameter("laubicacion");
          Class.forName("com.mysql.jdbc.Driver");
             java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Proyectofinal", "root", "PEpe20CJ23");
             Statement s3=con.createStatement();
             ResultSet rs3= s3.executeQuery("select U.latitud, U.longitud from ubicacion u inner join Obra o on o.idubicacion=u.id_ubicacion where u.id_ubicacion ="+idubicacion+" and o.id_obra="+idobra);
             ArrayList list1 = new ArrayList();
             ArrayList list2 = new ArrayList();
             while(rs3.next()){
                 list1.add(rs3.getString("latitud"));
                 list2.add(rs3.getString("longitud"));
             }
            int u=0;
            int i=0;
            String o=(String)list1.get(0);
            String p = (String)list2.get(0);
            String k = "s";
            String kk = "ssss";
            String d = k+k;
            
            

            String url1 = "https://www.google.com/maps/embed/v1/view?key="AQUI VA LA KEY "&center="+o+","+p+"&zoom=18&maptype=satellite";
            
      %>
         <h1><%out.print(url1);%></h1>
      <div class="mapita">
          
          
          
      <iframe
          class="mapa"
  
  frameborder="0" style="border:0"
  src=<%out.print(url1);%> allowfullscreen>
</iframe>

</div>
<a href="Galeria.jsp"class="vol"><-- Volver a la galeria</a>
  </body>
</html>
