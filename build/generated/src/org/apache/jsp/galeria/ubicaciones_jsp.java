package org.apache.jsp.galeria;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.ArrayList;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.DriverManager;

public final class ubicaciones_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("  <head>\n");
      out.write("      <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Ubicacion</title>\n");
      out.write("        <meta charset=\"utf-8\" />\n");
      out.write("\t\t<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\" />\n");
      out.write("\t\t<!--[if lte IE 8]><script src=\"assets/js/ie/html5shiv.js\"></script><![endif]-->\n");
      out.write("\t\t<link rel=\"stylesheet\" href=\"assets/css/main.css\" />\n");
      out.write("                <link rel=\"stylesheet\" href=\"style.css\" />\n");
      out.write("\t\t<noscript><link rel=\"stylesheet\" href=\"assets/css/noscript.css\" /></noscript>\n");
      out.write("\t\t<!--[if lte IE 8]><link rel=\"stylesheet\" href=\"assets/css/ie8.css\" /><![endif]-->\n");
      out.write("\t\t<!--[if lte IE 9]><link rel=\"stylesheet\" href=\"assets/css/ie9.css\" /><![endif]-->\n");
      out.write("    \n");
      out.write("  </head>\n");
      out.write("  <body>\n");
      out.write("      \n");
      out.write("      \n");
      out.write("      ");

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
            
            

            String url1 = "https://www.google.com/maps/embed/v1/view?key=AIzaSyAFYxvo5TP9xd0W98qM0aSSP1KE5iNNcq0&center=" + o + "," + p + "&zoom=18&maptype=satellite";
            
      
      out.write("\n");
      out.write("         \n");
      out.write("      <h1>");
out.print(o);
      out.write("</h1>\n");
      out.write("      <iframe\n");
      out.write("  width=\"600\"\n");
      out.write("  height=\"450\"\n");
      out.write("  frameborder=\"0\" style=\"border:0\"\n");
      out.write("  src=");
out.print(url1);
      out.write(" allowfullscreen>\n");
      out.write("</iframe>\n");
      out.write("  </body>\n");
      out.write("</html>");
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
