package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.List;
import jums.ShoppingData;
import java.util.ArrayList;
import jums.UserData;
import jums.JumsHelper;

public final class cart_jsp extends org.apache.jasper.runtime.HttpJspBase
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

    HttpSession hs = request.getSession();
    JumsHelper jh = JumsHelper.getInstance();
    List<ShoppingData> sdList= (ArrayList)hs.getAttribute("cart");
    
    //ログインのチェック
    boolean loginChk = false;
    UserData ud = (UserData)hs.getAttribute("userdata");
    if(ud != null) {
        loginChk =true;
    }
    
    //合計金額の初期値
    int total = 0;

      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>カートページ</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        ");
if(loginChk) {
      out.write("\n");
      out.write("        ");
      out.write("\n");
      out.write("        <p>ようこそ <a href=\"MyData\">");
      out.print(ud.getName());
      out.write("</a> さん</p>\n");
      out.write("        ");
      out.print(jh.logout());
      out.write("<br>\n");
      out.write("        ");
      out.print(jh.cart());
      out.write("<br>\n");
      out.write("    ");
 }else { 
      out.write("\n");
      out.write("        ");
      out.write("\n");
      out.write("        ");
      out.print(jh.login());
      out.write("<br>\n");
      out.write("        ");
      out.print(jh.register());
      out.write("<br>\n");
      out.write("    ");
 } 
      out.write("\n");
      out.write("    <HR>\n");
      out.write("        <h1>カート</h1>\n");
      out.write("        <form action=\"BuyConfirm\" method=\"POST\">\n");
      out.write("        <table border=\"1\">\n");
      out.write("            <tr>\n");
      out.write("                <th>サムネイル</th>\n");
      out.write("                <th>商品名</th>\n");
      out.write("                <th>価格</th>\n");
      out.write("            </tr>\n");
      out.write("            ");
 for (int i = 0; i < sdList.size(); i++) { 
      out.write("\n");
      out.write("            <tr>\n");
      out.write("                <th><img src=");
      out.print( sdList.get(i).getImage() );
      out.write("/></th>\n");
      out.write("                <th><a href=\"Item?code=");
      out.print( sdList.get(i).getCode() );
      out.write('"');
      out.write('>');
      out.print(sdList.get(i).getItemName() );
      out.write("</a></th>\n");
      out.write("                <th>");
      out.print( sdList.get(i).getPrice() );
      out.write(" 円</th>\n");
      out.write("                <th><a href=\"Cart?delete=");
      out.print(i);
      out.write("\">削除</a></th>\n");
      out.write("            </tr>\n");
      out.write("                ");
 total += sdList.get(i).getPrice(); 
      out.write("\n");
      out.write("            ");
 } 
      out.write("\n");
      out.write("        </table>\n");
      out.write("            <h3>合計金額： ");
      out.print( total );
      out.write("円</h3>\n");
      out.write("            <input type=\"submit\" name=\"submit\" value=\"購入する\">\n");
      out.write("        </form>\n");
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
