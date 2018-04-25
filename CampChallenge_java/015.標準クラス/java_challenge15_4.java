/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
import java.util.Date;
/**
 *
 * @author honnd
 */
public class java_challenge15_4 {
    public static void main(String[] args){
        Date day1 = new Date(2015,1,1,10,0,0);
        Date day2 = new Date(2015,12,31,23,59,59);
        System.out.print(day2.getTime()-day1.getTime());
    }
    
}
