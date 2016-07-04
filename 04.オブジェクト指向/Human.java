/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Black_Jack;

import java.util.ArrayList;
//import java.util.Random;
//import java.util.Scanner;


/**
 *
 * @author yoshikawatoshio
 */
/*１．Humanという抽象クラスを作成し、以下を実装してください。
　　・openというabstractな公開メソッドを用意してください。
　　・setCardというArrayListを引数とした、abstractな公開メソッドを用意してください。
　　・checkSumというabstractな公開メソッドを用意してください。
　　・myCardsというArrayListの変数を用意してください。*/

abstract class Human {
    abstract public int open(); //抽象メソッド
    abstract public void setCard(ArrayList<Integer>setcard);//抽象メソッド
    abstract public void checkSum();//抽象メソッド
    ArrayList<Integer> myCards = new ArrayList<>(); 
}




    
    

    
    
/*２．
    






