package org.apache.jsp.jsps;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class admin_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <link href=\"styles.css\" rel=\"stylesheet\" type=\"text/css\" media=\"all\"/>\n");
      out.write("        <title>Bienvenido administrador!</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div class=\"contenedor1\">\n");
      out.write("            <h1 class=\"elh1\">Bienvenido adminisrador!</h1>\n");
      out.write("        </div>\n");
      out.write("        <div class=\"contenedor2\">\n");
      out.write("        <h4 class=\"elh4\">En esta seccion podra elegir en agregar nuevos articulos a la tienda o revisar las estadisticas de la tienda de articulos. </h4>\n");
      out.write("        </div\n");
      out.write("        \n");
      out.write("        \n");
      out.write("        <div class=\"seciontabla1\">\n");
      out.write("            <table class=\"tabla1\">\n");
      out.write("                <tr>\n");
      out.write("                    <th></th>\n");
      out.write("                    <th></th>\n");
      out.write("                    </tr>\n");
      out.write("                </table>\n");
      out.write("        </div>\n");
      out.write("        <div class=\"añadir\">\n");
      out.write("            <h2 class=\"elh3\">Añadir un nuevo articulo</h2>\n");
      out.write("            <form action=\"añadir.jsp\" method=\"post\">\n");
      out.write("                <input type=\"text\" value=\"Nombre del articulo\" name=\"nombre\" class=\"entrada1\">\n");
      out.write("                  <input type=\"text\" value=\"Stock disponible\" name=\"stock\" class=\"entrada2\">\n");
      out.write("                  <input type=\"text\" value=\"Descripcion del articulo\" name=\"descripcion\" class=\"entrada3\">\n");
      out.write("                  <input type=\"text\" value=\"Valor del articulo (sin punto, ni coma)\" name=\"valor\" class=\"entrada4\">\n");
      out.write("                  <input type=\"text\" value=\"Ingrese la ruta de la imagen (..//cart//images//image.jpg)\" name=\"imagen\" class=\"entrada5\">\n");
      out.write("                  <input type=\"submit\" onClick=\"alert('añadiendo')\" value=\"Añadir\" class=\"boton1\">\n");
      out.write("              </form>\n");
      out.write("        </class>\n");
      out.write("        <!--<img src=\"../cart/images/ab.jpg\"> -->\n");
      out.write("        <div class=\"estadistica\">\n");
      out.write("            <form  method=\"get\" action=\"verestadisticas.jsp\">\n");
      out.write("            <input type=\"submit\"  value=\"ver las estadisticas del sitio web\" class=\"boton2\">\n");
      out.write("            </form>\n");
      out.write("        </div>\n");
      out.write("        <p class=\"volv\"><a href=\"../index.html\" style=\"text-decoration: none;\" class=\"volv\"><--Volver</a></p>\n");
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
