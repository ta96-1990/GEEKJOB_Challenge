/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bj;

import java.util.ArrayList;

/**
 *
 * @author honnd
 */
public class BlackJack {
    public static void main(String[] args){
        Dealer master = new Dealer();
        User player = new User();
        //System.out.println(master.cards);
        ArrayList<Integer> deal = master.deal();
        player.setCards(deal);
        //System.out.println(player.myCards);
        System.out.println("Player");
        System.out.println("カードの合計は"+player.open()+"です。");
       
        while(player.checkSum()==false){//falseなら継続する(17未満なら継続する)
            if(player.checkSum()==false){
                ArrayList<Integer> hit = master.hit();
                player.setCards(hit);
                System.out.println("カードの合計が17未満なのでhitしました、カードの合計は"+player.open()+"です。");
            }
            
        }
        if(player.open()<=21){//もし21以下なら(17以上21以下)
                    System.out.println("スタンドします。カードの合計は"+player.open()+"です");
        }else{
                    System.out.println("バストしました。カードの合計は"+player.open()+"です。");
        }
        master.setCards(deal);
        //System.out.println(master.myCards);
        System.out.println("Dealer");
        System.out.println("カードの合計は"+master.open()+"です。");
        
        while(master.checkSum()==false){
            if(master.checkSum()==false){
                ArrayList<Integer> hit = master.hit();
                master.setCards(hit);
                System.out.println("カードの合計が17未満なのでhitしました、カードの合計は"+master.open()+"です。");
            }
        }
        if(master.open()<=21){
                System.out.println("スタンドします。カードの合計は"+master.open()+"です");
        if(player.open()>21){
                System.out.println("Playerがバストしました、Playerの敗北です。");
        }else{
            if(master.open()<player.open()){
                System.out.println("Playerの勝ちです");
            }else if(player.open()<master.open()){
                System.out.println("Dealerの勝ちです。");
            }else{
                System.out.println("引き分けです。");
            }
            
        }
        }else{if(player.open()>21){
                System.out.println("Playerがバストしました、Playerの敗北です。");
        }else{
                System.out.println("Dealerがバストしました。Dealerの敗北です。カードの合計は"+master.open()+"です。");
        }
                
        }
    }
    
}
