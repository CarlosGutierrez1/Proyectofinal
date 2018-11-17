<%-- 
    Document   : registrar
    Created on : Nov 10, 2018, 1:06:33 PM
    Author     : apolu
--%>

<%@page import="conn.ConeccionMySQL"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
    </head>
    <body>
    <%@page import="java.sql.*"%>
    <%@page import="javax.sql.*"%>
    <%
        String nom=request.getParameter("nom");
        String ape=request.getParameter("ape");
        String fech=request.getParameter("fech");
        String ema=request.getParameter("ema");
        String contra=request.getParameter("contra");
        session.putValue("ema",ema);
        /*ConeccionMySQL connMySQL = new ConeccionMySQL();
        Statement s = null;
        Connection conn = connMySQL.setConeccion();
        s = conn.createStatement();
        s.executeUpdate("insert into usuario(nombre, apellido, fechanacimiento, email, contraseña) "
                + "values ('" + nom + "','"+ape+"','"+fech+"','"+ema+"','"+contra+"')");        */
        
        
        
        Class.forName("com.mysql.jdbc.Driver");
        java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Proyectofinal", "root", "PEpe20CJ23");
        Statement st=con.createStatement();
        ResultSet rs;
        int i=st.executeUpdate("insert into usuario(nombre, apellido, fechanacimiento, email, contraseña) "
                + "values ('" + nom + "','"+ape+"','"+fech+"','"+ema+"','"+contra+"')");
       
       
        %>
        <script>
            window.alert("Registrado con exito!!");
            setTimeout("window.history.go(-1)",50);
            </script>
    </body>
</html>
