/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Java;


import java.sql.*;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author yoshikawatoshio
 */
public class java_DB02 extends HttpServlet {

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

        Connection db_con = null;                                                                    
        PreparedStatement db_st = null;
        ResultSet db_data = null;
        
        try {
            //課題2:前回の課題1で作成したテーブルに自由なメンバー情報を格納する処理を構築してください
            //JDBCドライバをロードする
            Class.forName("com.mysql.jdbc.Driver").newInstance();   
            //DB接続情報を設定する
            db_con = DriverManager.getConnection("jdbc:mysql://localhost:3306/challenge_db", "root", "");    
            //sql文を定義する
            db_st = db_con.prepareStatement("insert into profiles values( ?, ?, ?, ?, ? )");
             //実行するパラメータの設定
            db_st.setInt(1,6);
            db_st.setString(2,"アマデウス");
            db_st.setString(3,"090-0000-8888");
            db_st.setInt(4,18);
            db_st.setString(5,"2015-12-24");
            
            db_st.executeUpdate();
            
            db_st.close();
            db_con.close();    
             //例外発生時の処理
            } catch ( SQLException e_sql ) {
                out.println("接続時にエラーが発生しました："+ e_sql.toString() );
            } catch ( Exception e ) {
                out.println("接続時にエラーが発生しました：" + e.toString() );
            }finally{
            if ( db_con != null ) {
                try {
                    db_con.close();
                } catch ( Exception e_con ) {
                    System.out.println( e_con.getMessage() );
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
