
<%@page import="javax.servlet.http.HttpSession" %>

<!--課題１-->
<%@page import="jums.JumsHelper" %>
<!--課題１-->

<!--課題３-->
<%@page import="jums.UserDataBeans" %>
<!--課題３-->

<%
    HttpSession hs = request.getSession();
         //スコープに保存したインスタンスを取得
    UserDataBeans beans = (UserDataBeans)hs.getAttribute("beans");
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
        名前:<%= beans.getName() %><br>
        生年月日:<%= beans.getYear() +"年"+ beans.getMonth() +"月"+ beans.getDay()+"日"%><br>
        種別:<%= beans.getType() %><br>
        電話番号:<%= beans.getTell() %><br>
        自己紹介:<%= beans.getComment() %><br>
        以上の内容で登録しました。<br>
               
        <!--課題１-->
        <%=JumsHelper.getInstance().home()%>
        <!--課題１-->
    </body>
</html>