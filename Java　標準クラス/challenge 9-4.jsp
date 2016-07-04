<%-- 
    Document   : challenge 9-4
    Created on : 2016/07/04, 10:51:43
    Author     : yoshikawatoshio
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.util.*,java.text.*,java.io.*" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1></h1>
        ４．2015年1月1日 0時0分0秒と2015年12月31日 23時59分59秒の差（ミリ秒）を表示してください。<br>
        <%
            Calendar cal = Calendar.getInstance();
            cal.set(2015,1,1,00,00,00);
            Date calpast = cal.getTime();
            out.println("2015年1月1日0時0分0秒のタイムスタンプは："+ calpast.getTime() +"<br>");
            
            Calendar cal2 = Calendar.getInstance();
            cal2.set(2015,12,31,23,59,59);
            Date calpast2 = cal2.getTime();
            out.println("2015年12月31日23時59分59秒のタイムスタンプは："+ calpast2.getTime() +"<br><br>");
        
           out.print(calpast2.getTime()-calpast.getTime() +"ミリ秒差");
        %>
        <br>５．自分の氏名について、バイト数と文字数を取得して、表示してください。<br>
        <%
            String moji = "吉川稔朗";
            out.print(moji.length()+"<br>");
            out.println(moji.getBytes().length);
        
        %>
        <br>６．自分のメールアドレスの「@」以降の文字を取得して、表示してください。<br>
        <%
            String bubun = "pccamp1040@gmail.com";
            out.println(bubun.substring(10));
        %>
　<br>７．以下の文章の「I」⇒「い」に、「U」⇒「う」に入れ替える処理を作成し、<br>
　　結果を表示してください。<br>
  「きょUはぴIえIちぴIのくみこみかんすUのがくしゅUをしてIます」<br>
  <%
     String chikan ="きょUはぴIえIちぴIのくみこみかんすUのがくしゅUをしてIます";
     String tikan =chikan.replace("I","い");
     out.println(tikan.replace("U","う"));

  %>
  <br>８．ファイルに自己紹介を書き出し、保存してください。<br>
 <% //同じ階層にあるファイルをオープン
//String test = "Macintosh HD:\\ユーザー\\yoshikawatoshio\\NetBeansProjects\\SampleA\\web\\challenge\\test.txt";
File file = new File(application.getRealPath("test.txt"));
FileWriter test = new FileWriter(file);
BufferedWriter text = new BufferedWriter(test);
//読み込みモードでオブジェクト生成
//FileReader fr = new FileReader(txt);
text.write("吉川 稔朗");
text.newLine();
text.write("1992/12/03");
text.newLine();
text.write("Javaを勉強中");

//読み込み用にバッファリング(高速化)
//BufferedReader br = new BufferedReader(fr);

//一行読み込みして表示
//out.print(br.readLine());

//ファイルクローズ
text.close();

  %>
  
　
 <%
     
    
 %>

    </body>
</html>
