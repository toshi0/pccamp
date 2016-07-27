/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package jums;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author yoshikawatoshio
 */
public class BuyComplete extends HttpServlet {

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
        
        //セッションスタート
        HttpSession hs = request.getSession();
        try {
            //リクエストパラメータの文字コードをUTF-8に変更
            request.setCharacterEncoding("UTF-8");
            
            //フォームから取得したIDと総購入金額の値をUserDataへ格納
            UserData ud = new UserData();
            ud.setUserID(request.getParameter("id"));
            ud.setTotal(request.getParameter("total"));
            
            //DTOオブジェクトにマッピング。DB専用のパラメータに変換
            UserDataDTO totalprice = new UserDataDTO();
            ud.UD2DTOMapping(totalprice);
            
            //DBへデータの挿入
            UserDataDAO.getInstance().UserTotal(totalprice);
            
            
            //セッションからデータを取得
            List<ShoppingData> sdList = (ArrayList)hs.getAttribute("cart"); //商品情報
                        
            //購入した商品数分、DBへ挿入
            for(int i = 0; i<sdList.size(); i++) {
                UserDataDTO udd = new UserDataDTO();

                //UserDataのuserIDをDTOへセット
                udd.setUserID(ud.getUserID());

                //商品情報のitemCodeをDTOへセット
                udd.setItemCode(sdList.get(i).getCode());
                
                //フォームから得た配達方法のtypeをDTOへセット
                udd.setType(Integer.parseInt(request.getParameter("type")));
                
                //DBへデータの挿入
                UserDataDAO.getInstance().BuyInsert(udd);
            }
            
            //成功したのでセッションの値を削除
            hs.invalidate();
            
            //ログを記録
            Log.getInstance().logtext("buycompleteへ遷移");
            
        request.getRequestDispatcher("/buycomplete.jsp").forward(request, response);
        }catch(Exception e){
            //何らかの理由で失敗したらエラーページにエラー文を渡して表示。想定は不正なアクセスとDBエラー
            request.setAttribute("error", e.getMessage());
            request.getRequestDispatcher("/error.jsp").forward(request, response);
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
