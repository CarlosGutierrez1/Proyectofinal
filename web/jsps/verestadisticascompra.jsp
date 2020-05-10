<%-- 
    Document   : verestadisticascompra
    Created on : Nov 21, 2018, 1:26:02 PM
    Author     : apolu
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="org.jfree.chart.JFreeChart"%>
<%@page import="org.jfree.chart.ChartUtilities"%>
<%@page import="java.io.OutputStream"%>
<%@page import="org.jfree.chart.ChartFactory"%>
<%@page import="org.jfree.data.general.DefaultPieDataset"%>
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
            Statement st=con.createStatement();
            
            
             
             DefaultPieDataset data2 = new DefaultPieDataset();
            
            ResultSet rs2 = st.executeQuery("select a.nombre, count(c.idarticulo) from articulo a inner join compra c on c.idarticulo = a.id_articulo group by a.id_articulo having a.id_articulo in (select a.id_articulo from articulo a ) limit 4");
            while(rs2.next()){
                data2.setValue(rs2.getString(1),rs2.getInt(2));
            }
           
            
            
            
            
            JFreeChart grafico2 = ChartFactory.createPieChart("Tipo de pago usados",data2,true,true,true);
            response.setContentType("image/JPEG");
            
            OutputStream sa2 = response.getOutputStream();
            
            ChartUtilities.writeChartAsJPEG(sa2,grafico2,500,500);
            %>
    </body>
</html>
