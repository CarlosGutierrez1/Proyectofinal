package org.apache.jsp.galeria;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.DriverManager;

public final class comentar_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        \n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        ");

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
                    st.executeUpdate("insert into calificacion(calificacion, fechacalificado, comentario, idusuario, idobra) values('"+calificacion+"' "+" 20000202"+ "'"+comentario+"'"  +rs.getString(2)+idobra+")");
                    
      out.write("\n");
      out.write("                    <script>\n");
      out.write("                     window.alert(\"Registrado con exito!!\");\n");
      out.write("                    setTimeout(\"window.history.go(-1)\",50);\n");
      out.write("                    </script>\n");
      out.write("                    ");

                }else{

      out.write("\n");
      out.write("                  <script>\n");
      out.write("                     window.alert(\"usuario no encontrado!!\");\n");
      out.write("                    setTimeout(\"window.history.go(-1)\",50);\n");
      out.write("                    </script>");


}
            }else
        
        
        
        
        
        
        
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
