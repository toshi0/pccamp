<%-- 
    Document   : challenge01
    Created on : 2016/07/04, 16:12:43
    Author     : yoshikawatoshio
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body><br>1.以下の入力フィールドを持ったHTMLを、Javaで処理する想定で記述してください。<br>
　　　・名前（テキストボックス）、性別（ラジオボタン）、趣味（複数行テキストボックス）<br>
   <form action="challenge02.jsp" method="post">
       名前：<input type="text" name="name">
       <br>
       性別：<input type="radio" name="sex" value="男" /> 男
            <input type="radio" name="sex" value="男" /> 女
       <br>                   <%//縦        横   %>
       <textarea name="textarea" rows="10" cols="50"> 趣味： </textarea>
       <br>
       <input type="submit" value="送信">
   </form>>
    </body>
</html>
