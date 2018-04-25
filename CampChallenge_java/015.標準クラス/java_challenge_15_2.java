/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
import java.util.Calendar;

/**
 *
 * @author honnd
 */
public class java_challenge_15_2 {
    public static void main(String[] args){
        Calendar calendrier = Calendar.getInstance();
        System.out.print(calendrier.get(Calendar.YEAR)+"年");
        System.out.print(calendrier.get(Calendar.MONTH)+1+"月");
        System.out.print(calendrier.get(Calendar.DAY_OF_MONTH)+"日");
        System.out.print(calendrier.get(Calendar.HOUR_OF_DAY)+"時");
        System.out.print(calendrier.get(Calendar.MINUTE)+"分");
        System.out.print(calendrier.get(Calendar.SECOND)+"秒");
    }
}
