
<!--課題１-->
<%@page import="jums.JumsHelper" %>
<!--課題１-->

<!--課題３-->
<%@page import="jums.UserDataBeans" %>
<!--課題３-->

<!--//課題５-->
<%@page import="javax.servlet.http.HttpSession" %>
<%
  //HttpSessionインスタンスの取得  
    HttpSession hs = request.getSession();
  //HttpSessionから、"beans"という名前で登録されているオブジェクトを取り出す
    UserDataBeans beans = (UserDataBeans)hs.getAttribute("beans");
%>
<!--//課題５-->

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JUMS登録確認画面</title>
    </head>
    <body>
    <% //課題４
        if(beans.getName().equals("") == false &&  //以下省略形
          !beans.getYear().equals("") && 
          !beans.getMonth().equals("") && 
          !beans.getDay().equals("") &&
          !beans.getTell().equals("") && 
          !beans.getComment().equals("")){
       //課題４     
    %>
        <h1>登録確認</h1>
        名前:   <%= beans.getName()%><br>
        生年月日:<%= beans.getYear()+"年"+beans.getMonth()+"月"+beans.getDay()+"日"%><br>
        種別:   <%= beans.getType()%><br>
        電話番号:<%= beans.getTell()%><br>
        自己紹介:<%= beans.getComment()%><br>
        上記の内容で登録します。よろしいですか？
        <form action="insertresult" method="POST">
            <input type="submit" name="yes" value="はい">
            <input type="hidden" name="ac" value="<%= hs.getAttribute("ac") %>">
        </form>
    <% }else{ %>
        <h1>入力が不完全です</h1>
        <p>以下の内容が未入力です</p>
        
    <%//課題４
        if(beans.getName().equals("")){
            out.print("名前<br>");
        }
        if(beans.getYear().equals("") || beans.getMonth().equals("") || beans.getDay().equals("")){
            out.print("生年月日<br>");
        }
        if(beans.getType() == null){
            out.print("種別<br>");
        }
        if(beans.getTell().equals("")){
            out.print("電話番号<br>");
        }
        if(beans.getComment().equals("")){
            out.print("自己紹介<br>");
        }
    %>
    <% } %>
        <form action="insert" method="POST">
            <input type="submit" name="no" value="登録画面に戻る"> 
        
         <!--課題５-->
            <input type="hidden" name="ac" value="<%= hs.getAttribute("ac") %>">
         <!--課題５-->
       
        </form>
        <br>
        <%=JumsHelper.getInstance().home()%><!--課題１-->
        
    </body>
</html>