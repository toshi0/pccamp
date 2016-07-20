

<%@page import="jums.JumsHelper, jums.UserDataBeans"  %>
<%
    JumsHelper jh = JumsHelper.getInstance();
    HttpSession hs = request.getSession();
    UserDataBeans udb = (UserDataBeans) request.getAttribute("udb");  
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JUMS更新結果画面</title>
    </head>
    <body>
        <h1>登録結果</h1><br>
        ＩＤ：<%= udb.getUserID() %><br>
        名前:<%= udb.getName() %><br>                                                            
        生年月日:<%= udb.getYear() +"年"+ udb.getMonth() +"月"+ udb.getDay() +"日"%><br> 
        種別:<%= jh.exTypenum(udb.getType()) %><br> 
        電話番号:<%= udb.getTell() %><br>         
        自己紹介:<%= udb.getComment() %><br>      
        以上の内容で登録しました。<br>
         <form action="ResultDetail" method="POST">
        <%--アクセスルートチェック--%>
        <input type="hidden" name="ac"  value="<%= hs.getAttribute("ac")%>">
        <input type="submit" name="resultdetail" value="詳細画面へ戻る">
        </form>
        
     <%--トップページに戻る--%>   
    <%=jh.home()%>
    </body>
</html>