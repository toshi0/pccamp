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
        課題:応用編
         <br> 10.クエリストリングを利用して、以下の処理を実現してください。<br>
              簡易素因数分解のロジックを作成します。<br>
              クエリストリングから渡された数値を1ケタの素数で可能な限り分解し、<br>
　            元の値と素因数分解の結果を表示するようにしてください。<br>
              2ケタ以上の素数が含まれた数値の場合は、「元の値　1ケタの素因数　その他」と表記して、<br>
              その他　に含んでください。<br>
        
         
              <%@page import = "java.util.ArrayList" %>
             
        <%
            String kazu = request.getParameter("kazu"); 
            out.println(kazu+"<br>");
            
            int suji = 20;
                
            String message = " ";
            while(suji%2==0) {
                if (suji == 20) {
                //sujiが１の場合の条件文
                out.println("その他");
          } else if (suji>10) {
                //sujiが２の場合の条件文
                out.println("元の値");
          } else if (suji < 10){
                //それ以外の条件文
                out.println("1ケタの素因数");
          }
                /*switch(suji) {
                    case 20 :
                        message = "元の値";
                        break;
                        case 12 :
                        message = "その他";
                        break;
                    case 10 :
                        message = "その他";
                        break;
                    case 5 :
                        message = "1ケタの素因数";
                        break;
                        
                }*/
               // out.println(suji);
                suji=suji/2;
                out.println(suji);
                out.println(message);
            }
                
            
                
           //?kazu=20 
            //int suji[] = {2,3,5};
            
            //ArrayList <Integer> al = new ArrayList <Integer> ();
            
       %>


           


            
        
           
        
              
    </body>
</html>
