/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package jums;

import com.fasterxml.jackson.databind.JsonNode;
import java.io.IOException;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


/**
 *
 * @author yoshikawatoshio
 */
public class Myhistory extends HttpServlet {

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
            
            //セッションからユーザー情報を取得
            UserData ud = (UserData)hs.getAttribute("userdata");
            
            //DTOオブジェクトにマッピング。DB専用のパラメータに変換
            UserDataDTO udd = new UserDataDTO();
            ud.UD2DTOMapping(udd);
            
            //DBからuserIDを使って購入情報を検索
            ArrayList<UserDataDTO> uddList = UserDataDAO.getInstance().SearchByUserID(udd);

            //値を得る為にShoppingDataのリストを生成
            ArrayList<ShoppingData> sdList =  new ArrayList<ShoppingData>();
            
            //指定のuserIDの購入履歴数分、データを取得
            for(int i = 0; i < uddList.size(); i++) {
                //DTOからitemCodeを取得しHttp接続して結果を得る
                String result = Json.SearchCode(uddList.get(i).getItemCode());

                //文字列からJSONへの変換
                JsonNode node = Json.getJsonNode(result);

                //商品情報をShoppingDataへ格納
                ShoppingData sd = Json.ItemDetail(node, i);
                
                sdList.add(sd);
            }
            
            hs.setAttribute("history", sdList);
            System.out.println("Session updated!!");
            
            //ログを記録
            Log.getInstance().logtext("myhistoryへ遷移");
            
        request.getRequestDispatcher("/myhistory.jsp").forward(request, response);
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
