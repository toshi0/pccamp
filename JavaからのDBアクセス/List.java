/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Java;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;


//在庫管理システムを作成します。
//まず、DBにユーザー情報管理テーブルと、商品情報登録テーブルを作成してください。
//その上で、下記機能を実現してください。

//①ユーザーのログイン・ログアウト機能
//②商品情報登録機能
//③商品一覧機能
//※各テーブルの構成は各自の想像で作ってみてください。

//商品一覧機能

public class List extends HttpServlet {

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
        PrintWriter out = response.getWriter();
        
        //変数を定義
        Connection db_con = null;
        PreparedStatement db_ps = null;
        ResultSet db_data = null;
        
        try
        {
            //JDBCドライバをロードする
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            //DB接続情報を設定する
            db_con = DriverManager.getConnection("jdbc:mysql://localhost:3306/task", "root", "");
            //sql文を定義する②
            db_ps = db_con.prepareStatement("select * from product");
            out.println("<center>");
            out.print("<h1>— 商品一覧 —</h1>");
            db_data = db_ps.executeQuery();
            while (db_data.next()) {
                out.println("<br>商品名："+ db_data.getString("name") +
                        "<br>価格："+db_data.getInt("price") +"円<br>");
            }
            out.println("<p>");
            out.println("<a href=\"/Database/Logout\">ログアウト</a>");
            out.println("</p>");
            out.println("</center>");
            
            db_data.close();
            db_ps.close();
            db_con.close();
            //例外発生時の処理
        } catch (SQLException e_sql) {
            out.println("接続時にエラーが発生しました："+ e_sql.toString());
        } catch (Exception e) {        
            out.println("接続時にエラーが発生しました："+ e.toString());
        } finally {
            if (db_data != null) {
                try {
                    db_data.close();
                }catch (Exception e_data) {
                    System.out.println(e_data.getMessage());
                }
            }
            if (db_ps != null) {
                try {
                    db_ps.close();
                }catch (Exception e_st) {
                    System.out.println(e_st.getMessage());
                }
            }
            if (db_con != null) {
                try {
                    db_con.close();
                } catch (Exception e_con) {
                    System.out.println(e_con.getMessage());
                }
            }
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