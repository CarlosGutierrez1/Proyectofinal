<%-- 
    Document   : añadir
    Created on : Nov 20, 2018, 5:35:51 PM
    Author     : apolu
--%>

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
    </head>
    <body>
        <%
            Class.forName("com.mysql.jdbc.Driver");
            java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Proyectofinal", "root", "PEpe20CJ23");
            Statement st=con.createStatement();
            String nombre = request.getParameter("nombre");
            String stock = request.getParameter("stock");
            String descripcion = request.getParameter("descripcion");
            String valor = request.getParameter("valor");
            String imagen = request.getParameter("imagen");
            int u = st.executeUpdate("insert into articulo (nombre, stock, descripcion, valor, imagen) values('"+nombre+"' ,"+ stock+ ", '" + descripcion + "' ," + valor + ", '" + imagen +"' )" );
            if(u!=0){
                %>
                <script>
                    window.alert("Añadido con exito!!");
                    setTimeout("window.location.href='admin.jsp'",50);
                    </script>
                    <%
            }else{
                    %>
                    <script>
                    window.alert("No se ha podido añadir!!");
                    setTimeout("window.location.href='admin.jsp'",50);
                    </script>
                    <%
                    
}
            
            

        
        
        
        
        
       %> 
    </body>
</html>
