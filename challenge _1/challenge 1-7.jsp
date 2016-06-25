<%--
    Document   : challenge 2-9
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
        <br>  7.クエリストリングを利用して、以下の処理を実現してください。<br>
              スーパーのレジでレシートを作る仕組みを作成します。<br>
              クエリストリングで総額・個数・商品種別を受け取って処理します。<br>
        <%
            String total = request.getParameter("total");    
            String stock = request.getParameter("stock");    
            String type  = request.getParameter("type");
        
            out.println(total+"<br>");
            out.println(stock+"<br>");
            out.println(type+"<br>");
            
             
        %>
        <br>①商品種別は、３つ。１：雑貨、２：生鮮食品、３：その他<br>
              まずは、この商品種別を表示してください。<br>
             <%
               

                 int num = 1;
            if (num == 1) {
                //numが１の場合の条件文
                out.println("1:雑貨");
          } else if (num==2) {
                //numが２の場合の条件文
                out.println("2:生鮮食品");
          } else {
                //それ以外の条件文
                out.println("その他");
          }
                 
                 int syouhin = 1;
                  String sina = "";
                  switch (syouhin) {
                      case 1:
                          sina = "1:雑貨" ;
                          break;
                      case 2:
                          sina = "2:生鮮食品" ;
                          break;
                      case 3:
                          sina= "3:その他" ;
                          break;
                  }
                  out.println(sina+"<br>");
                 
                 String zakka = request.getParameter("zakka");
                 String seisen_syokuhin = request.getParameter("seisen_syokuhin");
                 String other = request.getParameter("other");
                 out.println(zakka+"<br>"+seisen_syokuhin+"<br>"+other+"<br>");
                out.println("１：雑貨<br>");
                out.println("２：生鮮食品<br>");
                out.println("３：その他<br>");
             %> 
        <br>②総額と個数から１個当たりの値段を算出してください。<br>
　　           総額と１個当たりの値段を表示してください。<br>
             <%
                 String sougaku = request.getParameter("12000"); 
                 String kosuu = request.getParameter("12");
                 int war = 12000/12;
                 out.println(sougaku+"<br>"+kosuu+"<br>"+war+"<br>");
                 int aa = 12000;
                 int bb = 12;
                 int wari = aa/bb;
                 out.println("総額"+aa+"円"+"<br>");
                 out.println("個数"+bb+"個"+"<br>");
                 out.println("1個当たりの値段"+wari+"円"+"<br>");
             %>

　       <br>③3000円以上購入で4%、5000円以上購入で5%のポイントが付きます。<br>
　　           購入額に応じたポイントの表示を行ってください。<br>

              <%
                String points = request.getParameter("8.5%"); 
                out.println(points+"<br>");

                  int point = 12000;
                  String moji = "";
                  switch (point) {
                      case 3000:
                          moji = "4%" ;
                          break;
                      case 5000:
                          moji = "5%" ;
                          break;
                      case 7000:
                          moji = "6%" ;
                          break;
                      case 9000:
                          moji = "7%" ;
                          break;
                      case 11000:
                          moji = "8%" ;
                          break;
                      case 12000:
                          moji = "8.5%";
                          break;
                  }
                  out.println(moji);
                  
 //?total=total&stock=stock&type=type&zakka=zakka&seisen_syokuhin=seisen_syokuhin&other=other&12000=12000&12=12&8.5%=8.5%

              
        %>

              
    </body>
</html>
