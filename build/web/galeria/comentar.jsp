<%-- 
    Document   : comentar
    Created on : Nov 11, 2018, 6:30:23 PM
    Author     : apolu
--%>

<%@page import="java.sql.ResultSet"%>
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
            String nombre = request.getParameter("elnombre");
            String comentario = request.getParameter("elcomentario");
            int calificacion = Integer.parseInt(request.getParameter("lacalificacion"));
            String idobra = request.getParameter("idobra");
            Class.forName("com.mysql.jdbc.Driver");
            java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Proyectofinal", "root", "PEpe20CJ23");
            Statement st=con.createStatement();
            ResultSet rs= st.executeQuery("select nombre, id_usuario from usuario");
            if(rs.next()){
                if(rs.getString(1).equals(nombre)){
                    st.executeUpdate("insert into calificacion(calificacion, fechacalificado, comentario, idusuario, idobra) values('"+calificacion+"' "+ ","+" 20000202"+"," +"'"+comentario+"'" +"," +rs.getString(2)+","+idobra+")");
                    %>
                    <script>
                     window.alert("Registrado con exito!!");
                    setTimeout("window.history.go(-1)",50);
                    </script>
                    <%
                }else{
%>
                  <script>
                     window.alert("usuario no encontrado!!");
                    setTimeout("window.history.go(-1)",50);
                    </script><%

}
            }else
        
        
        
        
        
        
        %>
    </body>
</html>
