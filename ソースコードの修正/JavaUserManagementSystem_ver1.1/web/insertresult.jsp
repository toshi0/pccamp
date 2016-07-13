<%@page import="javax.servlet.http.HttpSession" %>
<!--タスク１-->
<%@page import="jums.JumsHelper" %>
<%//タスク３%>
<%@page import="jums.UserDataBeans" %>
<%
    HttpSession hs = request.getSession();
     //スコープに保存したインスタンスを取得
    UserDataBeans udb = (UserDataBeans)hs.getAttribute("udb");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JUMS登録結果画面</title>
    </head>
    <body>
        <h1>登録結果</h1><br>
        名前:<%= udb.getName() %><br>
        生年月日:<%= udb.getYear() +"年"+ udb.getMonth() +"月"+ udb.getDay()+"日"%><br>
        種別:<%= udb.getType() %><br>
        電話番号:<%= udb.getTell() %><br>
        自己紹介:<%= udb.getComment() %><br>
        以上の内容で登録しました。<br>
        
        <%//タスク１%>
        <%=JumsHelper.getInstance().home()%>
    </body>
</html>
