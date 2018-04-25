/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author honnd
 */
public class java_challenge15_6 {
    public static void main(String[] args){
        String address ="example@example.co.jpl";
        System.out.println(address.substring(8).length());//ごり押し感...
        System.out.println(address.length()-1-address.indexOf("@"));//こっちのほうがいい気がする全体数取得して@の位置数を
        
    }
    
}
