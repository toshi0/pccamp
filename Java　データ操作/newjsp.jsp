<%-- 
    Document   : newjsp
    Created on : 2016/07/07, 17:08:27
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
      <%  // ５.以下の機能を実装してください。
        //  名前・性別・趣味を入力するページを作成してください。
        //  また、入力された名前・性別・趣味を記憶し、次にアクセスした際に
        //  記録されたデータを初期値として表示してください。
        
        String man="";
        String woman="";
        HttpSession s = request.getSession(true);
        String n = ( String ) s.getAttribute("name");
        String g = ( String ) s.getAttribute("sex");
        String h = ( String ) s.getAttribute("textarea");
        
        if ("男".equals( g )) {
             man = "checked";
        } else if ("女".equals( g )){
            woman = "checked";
        }
    %>
   
   
   
   <form action="index.jsp" method="post">
       名前：<input type="text" name="name" value=" <%= n %> ">
       <br>
       性別：<input type="radio" name="sex" value="男性"<%= man %>>男性
            <input type="radio" name="sex" value="女性"<%= woman %>>女性<br><br>
       <br>                   <%//縦        横   %>
       <textarea name="textarea"><%= h %></textarea>
       <br>
       <input type="submit" value="送信">
   </form>>
    </body>
</html>
