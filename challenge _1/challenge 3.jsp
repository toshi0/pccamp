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
        1:自分のプロフィール(名前、生年月日、自己紹介)を3行に分けて表示するユーザー定義メソッドを作り、<br>
        メソッドを10回呼び出して下さい<br>
        <%!
            String getMyName() {
            return "吉川稔朗";
        }
            String seinen() {
            return "1992/12/3";
        }
            String jikosyoukai() {
            return "Javaを勉強中";
        }
            String name = getMyName();
            String seinen = seinen();
            String jikosyoukai = jikosyoukai();
            
            
            void printName(String name) {
            System.out.println("吉川稔朗");
        }
            
        %> 
        <%
            for(int i=0;i<10;i++) {
               out.println(name+"<br>"+seinen+"<br>"+jikosyoukai+"<br>");
                
            }
            out.println();
            
        %>
    <br>2:引数として数値を受け取り、その値が奇数か偶数か判別＆表示する処理をメソッドとして制作し、<br>
    適当な数値に対して奇数・偶数の判別を行ってください<br>
         <%!
             
             void main(int [] args) {
             int i = 6;
             
         }
             void kazu(int i) {
             
         }
             
             
         %>
    
         <%
             int i = 6;
             if((i % 2 == 0) && (i != 0)) { 
                 out.println("偶数"); 
        } else { 
                 out.println("奇数");
            } 
         %>
         <br>3:引き数が3つのメソッドを定義する。1つ目は適当な数値を、2つ目はデフォルト値が5の数値を、<br>
         最後はデフォルト値がfalse(boolean)のtypeを引き数として定義する。<br>
         1つ目の引き数に2つ目の引き数を掛ける計算をするメソッドを作成し、typeがfalseの時はその値を表示、<br>
         trueのときはさらに2乗して表示する。<br>
         <%!
             String a() {
            return "1";
         }
             String b() {
            return "5";
         }    
             String c() {
            return "type";
         }
             String a = a();
            String b = b();
            String c = c();
         %>
         <%
             int a = 1;
             int b = 5;
             int c = 5;
             int answer = i;
         
             
            if(a * b == c)  { 
                i=c*5;
                 out.println(i); 
        } else { 
                
                 out.println(c);
            }   
         
         %>
        <br>4:課題1で定義したメソッドに追記する形として、戻り値　true(boolean)　を返却するように修正し、<br>
         メソッドの呼び出し側でtrueを受け取れたら「この処理は正しく実行できました」、<br>
         そうでないなら「正しく実行できませんでした」と表示する<br>
        <%!
             void T(String[] args) {
             int A = 9;
             if( MP3(A) ){
                 System.out.println("この処理は正しく実行できました");
                 
             }else{
                 System.out.println("正しく実行できませんでした");
             }
        }
            boolean MP3(int o) {
            boolean result;
            result = ( o % 3 == 0);
            return result;
        }
   

        %>
         <%
        %>
        <br>5:戻り値としてある人物のid(数値),名前,生年月日、住所を返却するメソッドを作成し、<br>
        受け取った後はid以外の値を表示する<br>
        <%! 
            void dai (String[] args) {
            hito("吉川稔朗");
        }
           void hito (String name) {
                System.out.println(name);
} 
        %>
        <%
            out.println(name);
        %>
        
        <br>6:引き数に1つのid(数値)をとり、3人分のプロフィール(項目は課題5参照)を<br>
        あらかじめメソッド内で定義しておく。引き数のid値により戻り値として返却するプロフィールを<br>
        誰のものにするか選択する。それ以降などは課題5と同じ扱いに<br>
        
        <br>7:課題6の3人分のプロフィールのうち1人だけ住所が値nullの状態で定義し、<br>
        ループ処理で全員分のプロフィールをid以外表示する処理を実行する。<br>
        この際、歯抜けになっているデータはcontinueで飛ばす<br>
        <br>8:先にInteger limit=2を定義しておき、課題7の処理のうち<br>
        2人目(limitで定義した値の人数)まででループ処理を抜けるようにする

        
        
        
              
    </body>
</html>
