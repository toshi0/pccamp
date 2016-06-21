<%--
    Document   : 1day
    Created on : 2016/06/07, 13:56:23
    Author     : yoshikawatoshio
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1></h1>
        課題:基礎編
         <br> 1.「hello world.」を表示してください。<br>
        <%
            out.println("Hello world.");
        %>
         <br>  2.「groove」「-」「gear」の3つの文字列を連結して表示してください。<br>
        <%
            out.println("groove"+"-"+"gear");
        %>
        <br>  3.自分の自己紹介を作成してみてください<br>
        <%
            out.println("氏名:");
            final String name= "吉川 稔朗";
            out.println(name+"<br>");
            out.print("年齢:");
            int age= 23;
            out.println(age+"<br>");
            out.println("身長:169cm");
            
        %>
        <br>  4.定数と変数を宣言し、それぞれに数値を入れて四則演算を行ってください<br>
              5.四則演算の結果をそれぞれ表示してください<br>
        <%
            int a = 6;
            final int b = 2;
            int tasi = a+b;  //足し算
            int hiki = a-b;  //引き算
            int kake = a*b;  //掛け算
            int wari = a/b;  //割り算
            int amari = a%b;  //剰余
            out.println(tasi+"<br>");
            out.println(hiki+"<br>");
            out.println(kake+"<br>");
            out.println(wari+"<br>");
            out.println(amari+"<br>");
        %>
            6.変数を宣言し、その変数の中身によって以下の表示を行ってください<br>
              ⇒値が 1 なら「１です！」<br>
              ⇒値が 2 なら「プログラミングキャンプ！<br>
              ⇒それ以外なら「その他です！」<br>
        <%
            int num = 1;
            if (num == 1) {
                //numが１の場合の条件文
                out.println("1です！");
          } else if (num==2) {
                //numが２の場合の条件文
                out.println("プログラミングキャンプ！");
          } else {
                //それ以外の条件文
                out.println("その他です！");
          }
        %> 
        
              
    </body>
</html>
