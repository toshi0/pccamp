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
         <br> 1.swich文を利用して、以下の処理を実現してください。<br>
              ・値が1なら「one」、値が2なら「two」、それ以外は「想定外」と表示する処理<br>
        <%
            int num = 1 ; 
            String message = " ";
            switch(num) {
                case 1:
                    message = "one" ;
                    break;
                case 2:
                    message = "two" ;
                    break;
                default:
                    message = "想定外" ;
                    break;
            }
            out.println(message);
        %>
         <br>  2.swich文を利用して、以下の処理を実現してください。<br>
         <br> ・値が"A"なら「英語」、値が"あ"なら「日本語」、それ以外は何も表示しない処理<br>
        <%
            //String moji = "A" ;
            char moji = 'B';
            String hyouji = " ";
            switch(moji) {
                case 'A':
                    hyouji = "「英語」" ;
                    break;
                case 'あ':
                    hyouji = "「日本語」" ;
                    break;
                default:
                    break;
            }
            out.println(hyouji);
        %> 
        
        <br>  3.for文を利用して、8を20回掛ける処理を実現してください。<br>
        <%
            
            int answer = 1;
            for(int i=0;i<20;i++) {
          
            answer = answer*8;
                
            }
            out.println(answer);
            
            
            
        %>
        <br>  4.for文を利用して、"A"を30個連結する処理を実現してください。<br>
        <%
            for(int i=0;i<30;i++) {
               out.println("A");
                
            }
            
        %>
        <br>  5.for文を利用して、0から100を全部足す処理を実現してください。<br>
        <%
            int suji = 0;
            for(int i=1;i<=100;i++) {
             suji = suji+i;   
        }
            out.println(suji);
        %> 
        <br>  6.while文を利用して、以下の処理を実現してください。<br>
　　　　       1000を2で割り続け、100より小さくなったらループを抜ける処理<br>
           <%
               int n=1000;
               
               while (n>100){
                   n=n/2;
                out.println(n);   
               }
               
           %>
        <br>7.．以下の順番で、要素が格納された配列を作成してください。<br>
　　　　     "10", "100", "soeda", "hayashi", "-20", "118", "END"<br>
         8.７で作成した配列の"soeda"を"33"に変更してください。<br>
         <%@ page import="java.util.ArrayList"%>
         <%
             ArrayList<String> al =new ArrayList<String>();
             
            al.add("10");
            al.add("100");
            al.add("soede");
            al.add("hayashi");
            al.add("-20");
            al.add("118");
            al.add("END");
         
            out.print(al.get(0)+"<br>");
            al.set(3, "33");
            out.println(al.get(3));
         %>
         <br>９．以下の順で、連想配列を作成してください。<br>
　　　　"1"に"AAA", "hello"に"world", "soeda"に"33", "20"に"20"<br>
    <%@page import="java.util.HashMap" %>
    <%
        HashMap<String, String> hMap =new HashMap<String,String>();
        
        hMap.put("1","AAA");
        hMap.put("hello","world");
        hMap.put("soeda", "33");
        hMap.put("20","20");
        
        out.println(hMap.get("soeda"));
        
        
       
    
    %>


           


            
        
           
        
              
    </body>
</html>
