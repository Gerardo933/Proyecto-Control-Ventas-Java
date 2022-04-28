package org.apache.jsp.WEB_002dINF.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class altaClientes_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("           <link href=\"https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css\" rel=\"stylesheet\" integrity=\"sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6\" crossorigin=\"anonymous\">\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div class=\"container mt-4 col-lg-4\"> \n");
      out.write("            <div class=\"card border-info\">\n");
      out.write("                <div class=\"card-header bg-info\">\n");
      out.write("                    <h3>Registrar Cliente</h3>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"card-body\">\n");
      out.write("                    <form method=\"POST\">\n");
      out.write("                     \n");
      out.write("                        <label>Nombre:</label>\n");
      out.write("                        <input type=\"text\" name=\"nombre\" class=\"form-control\">\n");
      out.write("                        \n");
      out.write("                        <label>Apaterno:</label>\n");
      out.write("                        <input type=\"text\" name=\"apaterno\" class=\"form-control\">\n");
      out.write("                        \n");
      out.write("                        <label>Amaterno:</label>\n");
      out.write("                        <input type=\"text\" name=\"amaterno\" class=\"form-control\">\n");
      out.write("                        \n");
      out.write("                        <label>RFC:</label>\n");
      out.write("                        <input type=\"text\" name=\"rfc\" class=\"form-control\">\n");
      out.write("                        \n");
      out.write("                        <label>Fecha de Nacimiento:</label>\n");
      out.write("                        <input type=\"text\" name=\"fechanacimiento\" class=\"form-control\"><br>\n");
      out.write("                        \n");
      out.write("                        <label>Sexo:</label>\n");
      out.write("                        <input type=\"text\" name=\"sexo\" class=\"form-control\"><br>\n");
      out.write("                        \n");
      out.write("                        <label>Celular:</label>\n");
      out.write("                        <input type=\"number\" name=\"celular\" class=\"form-control\"><br>\n");
      out.write("                        \n");
      out.write("                        <label>Direccion:</label>\n");
      out.write("                        <input type=\"text\" name=\"direccion\" class=\"form-control\"><br>\n");
      out.write("                        \n");
      out.write("                        <button type=\"submit\" class=\"btn-success\">Agregar</button>\n");
      out.write("                    </form>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </body>\n");
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
