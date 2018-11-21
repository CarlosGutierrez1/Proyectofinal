<%-- 
    Document   : verestadisticas
    Created on : Nov 21, 2018, 12:34:17 PM
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
            java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Proyectofinal", "root", "PEpe20CJ23");
            Statement st=con.createStatement();
            
            ResultSet rs= st.executeQuery("select p.tipo_pago, count(f.id_factura) from factura f inner join pago p on f.idpago=p.id_tipopago group by p.id_tipopago having p.id_tipopago in (select p.id_tipopago from pago p)");
             DefaultPieDataset data = new DefaultPieDataset();
             DefaultPieDataset data2 = new DefaultPieDataset();
            while(rs.next()){
                data.setValue(rs.getString(1),rs.getInt(2));
            }
            ResultSet rs2 = st.executeQuery("select a.nombre, count(c.idarticulo) from articulo a inner join compra c on c.idarticulo = a.id_articulo group by a.id_articulo having a.id_articulo in (select a.id_articulo from articulo a ) limit 4");
            while(rs2.next()){
                data2.setValue(rs2.getString(1),rs2.getInt(2));
            }
           
            
            
            
            JFreeChart grafico = ChartFactory.createPieChart("Tipo de pago usados",data,true,true,true);
            JFreeChart grafico2 = ChartFactory.createPieChart("Tipo de pago usados",data2,true,true,true);
            response.setContentType("image/JPEG");
            OutputStream sa = response.getOutputStream();
            OutputStream sa2 = response.getOutputStream();
            ChartUtilities.writeChartAsJPEG(sa,grafico,480,480);
            /*ChartUtilities.writeChartAsJPEG(sa2,grafico2,600,600);*/
            
            
        
        
        
        
        
        
        
        
        %>
    </body>
</html>
