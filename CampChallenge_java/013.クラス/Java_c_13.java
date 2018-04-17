/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author honnd
 */
public class Java_c_13 {
    public String name;
    public int num;
    
    public void set(String n,int i){
        this.name = n;
        this.num = i;
    }
    
    public static void main(String[] args){
        Java_c_13 data = new Java_c_13();
        data.name ="honda";
        data.num = 18;
        System.out.println(data.name);
        System.out.println(data.num);
    }
}
