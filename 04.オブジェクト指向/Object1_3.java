/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet.camp;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/* class戦真館（名前、年齢）
（柊 四四八、18歳）

課題3．以下の機能を持つクラスを作成してください。
・パブリックな2つの変数
・2つの変数に値を設定するパブリックなメソッド
・2つの変数の中身をprintするパブリックなメソッド*/

/**
 *
 * @author yoshikawatoshio
 */
public class Object1_3 extends HttpServlet {
    public String name;
    public int     age;
    
    class Human extends Object1_3 { 
    public void setHuman(String n, Integer a) {
        this.name = n;
        this.age = a;
    }
    public String showName() {
        return name;
    }
    public Integer showAge() {
        return age;
    
        /*Human human = new Human();
        human.name = "柊 四四八";
        human.age  = 18;
    System.out.println("名前" +human.name);*/
    
  }
    
    }

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
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Object1_3</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Object1_3 at " + request.getContextPath() + "</h1>");
            
            Human human = new Human();
            human.setHuman( "柊 四四八",18);
        
            System.out.println("名前" +human.showName());
            System.out.println("名前" +human.showAge());
            
            out.println("</body>");
            out.println("</html>");
        }finally{
        System.out.close();
            
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
