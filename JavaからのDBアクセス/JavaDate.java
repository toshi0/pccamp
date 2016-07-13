/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Java;

import java.util.Date;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author yoshikawatoshio
 */
public class JavaDate extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */

            // 受け取るパラメータの文字コード
            request.setCharacterEncoding("UTF-8");
            // データの受け取り
            String n = request.getParameter("txtName");
            String r = request.getParameter("rdoSex");
            String m = request.getParameter("mulText");
            String s = request.getParameter("btnSubmit");

            //セッションによるログイン時刻の表示
            Date time = new Date();
            HttpSession hs = request.getSession(true);
            out.print("最後のログインは、" + hs.getAttribute("LastLogin"));
            out.println("現在の時刻は、" + time);
            hs.setAttribute("LastLogin", time.toString());
            
            //セッションによる前回入力内容の記録
            hs.setAttribute("名前", n);
            hs.setAttribute("性別", r);
            hs.setAttribute("趣味", m);
            
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet JavaData</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet JavaData at " + request.getContextPath() + "</h1>");
            out.println("あなたの名前は<BR>" + n + "<BR>性別は<BR>" + r + "<BR>趣味は<BR>" + m + "<BR>");
            out.println("</body>");
            out.println("</html>");
            
            /*
            // サーブレットコンテキストを取得します。
            ServletContext servletContext = getServletContext();
            // リクエストディスパッチャーを取得します。
            RequestDispatcher requestDispatcher = servletContext.getRequestDispatcher("/index.jsp");
            // 指定したJSPへと転送します。
            requestDispatcher.forward(request, response);
            */
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
