<%-- 
    Document   : payment
    Created on : Nov 18, 2018, 2:47:15 PM
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
        <title>JSP Page</title>
    </head>
    <body>
        <%
            Class.forName("com.mysql.jdbc.Driver");
            java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Proyectofinal", "root", "");
            java.sql.Connection con2 = DriverManager.getConnection("jdbc:mysql://localhost:3306/Proyectofinal", "root", "");
            java.sql.Connection con3 = DriverManager.getConnection("jdbc:mysql://localhost:3306/Proyectofinal", "root", "");
            Statement st=con.createStatement();
            String usuario = request.getParameter("usuario");
            session.putValue("userid", usuario);
            String contraseña = request.getParameter("contraa2");
            
            ResultSet rs= st.executeQuery("select * from usuario where email='"+usuario+"'");
        
            if(rs.next()){
            if(rs.getString(6).equals(contraseña)){
                    
                Statement st2 = con2.createStatement();
                
                String idusuario = rs.getString(1);
                String idarticulo = request.getParameter("idarticuloo");
                int i=st.executeUpdate("insert into compra(idarticulo, idusuario) "
                + "values (" + idarticulo + " ,  "+idusuario+")");
                Statement st3 = con3.createStatement();
                String cantidad = request.getParameter("cantidadd");
                String fecha = request.getParameter("fecha");
                String loquequea = request.getParameter("loquequeda");
                int valortotal = Integer.parseInt(request.getParameter("valortotal"));
                ResultSet rs4 = st.executeQuery("select id_compra from compra where idarticulo="+idarticulo+" and idusuario="+idusuario);
                ArrayList list = new ArrayList();
                while(rs4.next()){
                    list.add(rs4.getString(1));
                }
                String idcompra = (String)list.get(0);
                
                String tipopago = request.getParameter("tipopago");
                
                int u = st.executeUpdate("insert into factura (cantidad, fechacompra, valortotal, idcompra, idpago) values "+ 
                        "(" + cantidad +" , "+ fecha + " , "+valortotal + " , " + idcompra + " , "+ tipopago + ")");
                
                
                if(Integer.parseInt(loquequea)<=0){
                    loquequea = "0";
                }else{
                    
                }
                
                st.executeUpdate("update articulo set stock="+loquequea+" where id_articulo="+idarticulo);
                
                
                
                
                %>
                <script>
                    window.alert("Bienvenido!!");
                    window.alert("Compra realizada con exito!!!");
                    setTimeout("window.location.href='shop.jsp'",50);
                    </script>
                    <%
            }else{
                %>
                <script>
                   window.alert("Contraseña incorrecta!!" + <%out.print(contraseña);%>);
                   setTimeout("window.history.go(-1)",60);
                </script>
                <%
                
}
        }else
        
        
        
        
        
        
        
        
        %>
    </body>
</html>
