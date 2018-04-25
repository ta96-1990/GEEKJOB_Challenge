
import java.text.SimpleDateFormat;
import java.util.Date;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author honnd
 */
public class java_challenge15_3 {
    public static void main (String[] args){
        Date day = new Date(2016-1900,11,4,10,0,0);//JSTだとなぜか3916と表示されるため1900引く
        System.out.println(day);
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        System.out.print(sdf.format(day));
    }
    
}
