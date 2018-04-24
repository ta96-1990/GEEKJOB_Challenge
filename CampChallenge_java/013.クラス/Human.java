package bj;


import java.util.ArrayList;
import java.util.Random;
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author honnd
 */
public abstract class Human {
    abstract protected Integer open();{
    
}
    ArrayList<Integer> myCards = new ArrayList<>();
    abstract protected boolean checkSum(); {
        //カードの合計値からカードを引くかどうか判断する
    }
    abstract protected void setCards(ArrayList<Integer> data); {
     
      //myCards.add(hand.get.(i)); (実装前の下書き)//iはif文とループ文の組み合わせでhitなら1回dealなら2回にする  
}     //dealとhitで分けるのじゃなく呼び出された先の数で処理内容を分岐させる
        

    
}
class Dealer extends Human {
    ArrayList<Integer> cards = new ArrayList<Integer>();
    public Dealer() {
        for (int i=0;i<4;i++){
            for(int j=1;j<14;j++){
                if(j<=10){
                    this.cards.add(j);
                }else{
                    this.cards.add(10);
                }
            }
}

}
      public ArrayList<Integer> deal(){
         ArrayList<Integer> hand = new ArrayList<>();
         for(int i=0;i<2;i++){
         Random rand = new Random();
         Integer index = rand.nextInt(cards.size());
         hand.add(cards.get(index));
         } 
         return hand;
}
     public ArrayList hit(){
         ArrayList<Integer> hand = new ArrayList<>();
         Random rand = new Random();
         Integer index = rand.nextInt(cards.size());
         hand.add(cards.get(index));
         return hand;
     }

    @Override
    protected Integer open() {
        int mysum = 0;
        for(int i=0;i<myCards.size();i++){
            mysum +=myCards.get(i);
        }
        return mysum;
        //throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    protected void setCards(ArrayList<Integer> data) {//きたArrayListをmyCardsに入れる処理だけを書く
        for(int i=0;i<data.size();i++){
            myCards.add(data.get(i));
        }
        //throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    protected boolean checkSum() {
            int sum =0;
        for(int i=0;i<myCards.size();i++){
            sum += myCards.get(i);
        }
        boolean over17;
        over17 = (sum>=17);
        return over17;
        
        //throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
}
class User extends Human {

    @Override
    protected Integer open() {
        int mysum = 0;
        for(int i=0;i<myCards.size();i++){
            mysum =mysum+myCards.get(i);
        }
        return mysum;
        //throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    protected void setCards(ArrayList<Integer> data) {
        for(int i=0;i<data.size();i++){
            myCards.add(data.get(i));
        }
        //throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    protected boolean checkSum() {
            int sum =0;
        for(int i=0;i<myCards.size();i++){
            sum = sum + myCards.get(i);
        }
        boolean over17;
        over17 = (sum>=17);
        return over17;
        
        //throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
}