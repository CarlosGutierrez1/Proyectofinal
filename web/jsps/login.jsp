<%-- 
    Document   : login
    Created on : Nov 10, 2018, 3:15:30 PM
    Author     : apolu
--%>

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
        String email = request.getParameter("ema2");
        session.putValue("userid", email);
        String contra = request.getParameter("contra2");
        Class.forName("com.mysql.jdbc.Driver");
        java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Proyectofinal", "root", "PEpe20CJ23");
        Statement st=con.createStatement();
        ResultSet rs= st.executeQuery("select * from usuario where email='"+email+"'");
        if(rs.next()){
            if(rs.getString(6).equals(contra)){
                if(email.equals("admin1") && contra.equals("admin1")){
                    %>
                <script>
                    window.alert("Bienvenido admin!!");
                    setTimeout("window.location.href='admin.jsp'",50);
                    </script>
                    <%
                }else{


                %>
                <script>
                    window.alert("Bienvenido!!");
                    setTimeout("window.location.href='../cart/shop.jsp'",50);
                    </script>
                    <%
                        }
            }else{
                %>
                <script>
                   window.alert("Contraseña incorrecta!!");
                   setTimeout("window.history.go(-1)",60);
                </script>
                <%
                
}
        }else
        
        
        
        %>
    </body>
</html>
