package org.apache.jsp.galeria;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.ArrayList;
import java.sql.Statement;
import java.sql.ResultSet;
import java.sql.DriverManager;

public final class busqueda_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("        <meta charset=\"utf-8\" />\n");
      out.write("\t\t<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\" />\n");
      out.write("\t\t<!--[if lte IE 8]><script src=\"assets/js/ie/html5shiv.js\"></script><![endif]-->\n");
      out.write("\t\t<link rel=\"stylesheet\" href=\"assets/css/main.css\" />\n");
      out.write("                <link rel=\"stylesheet\" href=\"style.css\" />\n");
      out.write("\t\t<noscript><link rel=\"stylesheet\" href=\"assets/css/noscript.css\" /></noscript>\n");
      out.write("\t\t<!--[if lte IE 8]><link rel=\"stylesheet\" href=\"assets/css/ie8.css\" /><![endif]-->\n");
      out.write("\t\t<!--[if lte IE 9]><link rel=\"stylesheet\" href=\"assets/css/ie9.css\" /><![endif]-->\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        \n");
      out.write("        ");

        int nombre = Integer.parseInt(request.getParameter("autoselect"));
             
             Class.forName("com.mysql.jdbc.Driver");
             java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Proyectofinal", "root", "PEpe20CJ23");
             Statement s3=con.createStatement();
             ResultSet rs3= s3.executeQuery("select A.id_autor, O.imagen from autor A inner join Obra o on A.id_autor=O.idautor where A.id_autor=" + nombre);
             
             

             int l =0;
             int n = 0;
             int u = 0;
                                        ArrayList list3 = new ArrayList();
                                        ArrayList list4 = new ArrayList();
                                        ArrayList list5 = new ArrayList();
                                        
                                        while(rs3.next()){
                                            list3.add(rs3.getString("imagen"));
                                            
                                        }
                                        
                                        
      out.write("\n");
      out.write("                                        <div id=\"wrapper\">\n");
      out.write("\n");
      out.write("\t\t\t<div id=\"main\">\n");
      out.write("\t\t\t\t<div id=\"reel\">\n");
      out.write("\n");
      out.write("\t\t\t\t\t<!-- Header Item -->\n");
      out.write("\n");
      out.write("\t\t\t\t\t\t<div id=\"header\" class=\"item\" data-width=\"500\">\n");
      out.write("\t\t\t\t\t\t\t<div class=\"inner\">\n");
      out.write("\t\t\t\t\t\t\t\t<h1>ColHearth</h1>\n");
      out.write("\t\t\t\t\t\t\t\t<p></p>\n");
      out.write("                                \n");
      out.write("\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t</div>\n");
      out.write("                                        \n");
      out.write("                                        <div class=\"comentarios\">\n");
      out.write("                                        ");

                                        
                                        while(n<list3.size()){
      out.write("\n");
      out.write("                                            <article class=\"item thumb\" data-width=\"384\">\n");
      out.write("\t\t\t\t\t\t\t<h2>Fernando Botero</h2>\n");
      out.write("\t\t\t\t\t\t\t<a href=\"");
out.print(list3.get(n));
      out.write("\" class=\"image\"><img src=\"");
out.print(list3.get(n));
      out.write("\" alt=\"\"></a>\n");
      out.write("\t\t\t\t\t\t</article>\n");
      out.write("                                            \n");
      out.write("                                            ");

                                                n++;
                                        }
                                        
                                        
                                       
                                        
                                        
                                        
                                        
                                        
                                        
                                        
      out.write("\n");
      out.write("                                        </div>\n");
      out.write("                                        </div>\n");
      out.write("\t\t\t</div>\n");
      out.write("                                        \n");
      out.write("                                        <h1>");
out.print(list3.get(0));
      out.write("<h1>\n");
      out.write("                                                <div id=\"footer\">\n");
      out.write("\t\t\t\t<div class=\"left\">\n");
      out.write("\t\t\t\t\t<p>Esto es <strong>ColHeart</strong> y esta es nuestra galeria de obras.<br/>Por favor clic en cada imagen.</p>\n");
      out.write("                    <p1><a href=\"../index.html\">Volver a la Pagina anterior</a></p1>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t\t<div class=\"right\">\n");
      out.write("\t\t\t\t\t<ul class=\"contact\">\n");
      out.write("\t\t\t\t\t\t<li><a href=\"#\" class=\"icon fa-twitter\"><span class=\"label\">Twitter</span></a></li>\n");
      out.write("\t\t\t\t\t\t<li><a href=\"#\" class=\"icon fa-instagram\"><span class=\"label\">Instagram</span></a></li>\n");
      out.write("\t\t\t\t\t\t<li><a href=\"#\" class=\"icon fa-facebook\"><span class=\"label\">Facebook</span></a></li>\n");
      out.write("\t\t\t\t\t\t<li><a href=\"#\" class=\"icon fa-dribbble\"><span class=\"label\">Dribbble</span></a></li>\n");
      out.write("\t\t\t\t\t\t<li><a href=\"#\" class=\"icon fa-pinterest\"><span class=\"label\">Pinterest</span></a></li>\n");
      out.write("\t\t\t\t\t\t<li><a href=\"#\" class=\"icon fa-envelope\"><span class=\"label\">Email</span></a></li>\n");
      out.write("\t\t\t\t\t</ul>\n");
      out.write("\t\t\t\t\t<ul class=\"copyright\">\n");
      out.write("\t\t\t\t\t\t<li>&copy; Universidad de la Sabana</li>\n");
      out.write("\t\t\t\t\t</ul>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t</div>\n");
      out.write("\n");
      out.write("\t\t</div>\n");
      out.write("\n");
      out.write("\t\t<!-- Scripts -->\n");
      out.write("\t\t\t<script src=\"assets/js/jquery.min.js\"></script>\n");
      out.write("\t\t\t<script src=\"assets/js/jquery.poptrox.min.js\"></script>\n");
      out.write("\t\t\t<script src=\"assets/js/skel.min.js\"></script>\n");
      out.write("\t\t\t<script src=\"assets/js/skel-viewport.min.js\"></script>\n");
      out.write("\t\t\t<script src=\"assets/js/util.js\"></script>\n");
      out.write("\t\t\t<!--[if lte IE 8]><script src=\"assets/js/ie/respond.min.js\"></script><![endif]-->\n");
      out.write("\t\t\t<script src=\"assets/js/main.js\"></script>\n");
      out.write("                                       \n");
      out.write("                                       \n");
      out.write("                           \n");
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
