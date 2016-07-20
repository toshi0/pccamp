package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import jums.JumsHelper;
import jums.UserDataDTO;
import java.util.ArrayList;

public final class searchresult_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write('\n');

    HttpSession hs = request.getSession();
    JumsHelper jh = JumsHelper.getInstance();
    ArrayList<UserDataDTO> rd = (ArrayList<UserDataDTO>)request.getAttribute("resultData");

      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JUMS検索結果画面</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <h1>検索結果</h1>\n");
      out.write("        <table border=1>\n");
      out.write("            <tr>\n");
      out.write("                <th>名前</th>\n");
      out.write("                <th>生年</th>\n");
      out.write("                <th>種別</th>\n");
      out.write("                <th>登録日時</th>\n");
      out.write("            </tr>\n");
      out.write("            ");
//検索結果が複数ある場合
      out.write("\n");
      out.write("            ");
 for(int i = 0; i < rd.size(); i++) { 
      out.write("\n");
      out.write("            <tr>\n");
      out.write("                  <td>");
      out.print( rd.get(i).getUserID() );
      out.write("</td>\n");
      out.write("                <td><a href=\"ResultDetail?id=");
      out.print( rd.get(i).getUserID());
      out.write('"');
      out.write('>');
      out.print( rd.get(i).getUserID());
      out.write("</a></td>\n");
      out.write("                <td>");
      out.print( rd.get(i).rd.getBirthday());
      out.write("</td>\n");
      out.write("                <td>");
      out.print( jh.exTypenum( rd.get(i).getType());
      out.write("</td>\n");
      out.write("                <td>");
      out.print( rd.get(i).getNewDate());
      out.write("</td>\n");
      out.write("            </tr>\n");
      out.write("            ");
 } 
      out.write("\n");
      out.write("        </table>\n");
      out.write("    </body>\n");
      out.write("    ");
//トップページに戻る
      out.write("\n");
      out.write("    ");
      out.print(jh.home());
      out.write("\n");
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
