<%@page import="javax.servlet.http.HttpSession" %>
<%@page import="jums.JumsHelper" %>
<%//タスク３%>
<%@page import="jums.UserDataBeans" %>
<%
      //HttpSessionインスタンスの取得  
    HttpSession hs = request.getSession();
  //HttpSessionから、"beans"という名前で登録されているオブジェクトを取り出す
    UserDataBeans udb = (UserDataBeans)hs.getAttribute("udb");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JUMS登録確認画面</title>
    </head>
    <body>
    <% if(udb.getName().equals("") == false){ %>
        <h1>登録確認</h1>
        名前:   <%= udb.getName()%><br>
        生年月日:<%= udb.getYear()+"年"+udb.getMonth()+"月"+udb.getDay()+"日"%><br>
        種別:   <%= udb.getType()%><br>
        電話番号:<%= udb.getTell()%><br>
        自己紹介:<%= udb.getComment()%><br>
        上記の内容で登録します。よろしいですか？
        <form action="insertresult" method="POST">
            <input type="submit" name="yes" value="はい">
           
   
        </form>
    <% }else{ %>
        <h1>入力が不完全です</h1>
        <%//タスク４
        if(udb.getName().equals("")){
            out.print("名前が未入力<br>");
        }
        %>
    <% } %>
        <form action="insert" method="POST">
            <input type="submit" name="no" value="登録画面に戻る">
             
        </form>
        <%//タスク１%>
        <%=JumsHelper.getInstance().home()%>
    </body>
</html>
