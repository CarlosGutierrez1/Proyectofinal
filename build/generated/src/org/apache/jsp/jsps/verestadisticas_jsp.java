package org.apache.jsp.jsps;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.DriverManager;
import org.jfree.chart.JFreeChart;
import org.jfree.chart.ChartUtilities;
import java.io.OutputStream;
import org.jfree.chart.ChartFactory;
import org.jfree.data.general.DefaultPieDataset;

public final class verestadisticas_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <h1>Hello World!</h1>\n");
      out.write("        \n");
      out.write("        \n");
      out.write("        ");

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
            ChartUtilities.writeChartAsJPEG(sa,grafico,250,250);
            ChartUtilities.writeChartAsJPEG(sa,grafico2,250,250);
            
            
        
        
        
        
        
        
        
        
        
      out.write("\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
