package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import jums.JumsHelper;
import jums.UserData;

public final class top_jsp extends org.apache.jasper.runtime.HttpJspBase
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

    HttpSession hs = request.getSession();
    JumsHelper jh = JumsHelper.getInstance();
    UserData ud = (UserData)hs.getAttribute("userdata");
    
    //検索キーワードの入力チェック
    boolean keyword = false;
    if(request.getAttribute("empty") != null) {
        keyword = true;
    }

      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"ja\">\n");
      out.write("<head>\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("    <title>Kagoyumeトップページ</title>\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("    <h1>カゴユメ!</h1>\n");
      out.write("  \n");
      out.write("    ");
if(hs.getAttribute("userdata") == null) {
      out.write("\n");
      out.write("        ");
      out.write("\n");
      out.write("        ");
      out.print(jh.login());
      out.write("<br>\n");
      out.write("        ");
      out.print(jh.register());
      out.write("\n");
      out.write("    ");
 }else { 
      out.write("\n");
      out.write("    ");
      out.write("\n");
      out.write("        <p>ようこそ <a href=\"MyData\">");
      out.print(ud.getName());
      out.write("</a> さん</p>\n");
      out.write("        ");
      out.print(jh.logout());
      out.write("<br>\n");
      out.write("        ");
      out.print(jh.cart());
      out.write("\n");
      out.write("    ");
 } 
      out.write("\n");
      out.write("    <HR>\n");
      out.write("    <br>\n");
      out.write("    <form action=\"Search\" method=\"GET\">\n");
      out.write("        キーワード検索：<input type=\"text\" name=\"query\">\n");
      out.write("        <input type=\"submit\" name=\"btnSubmit\" value=\"検索\">\n");
      out.write("    </form>\n");
      out.write("</body>\n");
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
