
import java.io.*;
import java.util.Date;
import java.text.SimpleDateFormat;
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author honnd
 */
public class java_challenge15_10 {
    public static void main(String[] args) throws IOException{
        File log = new File("c:¥¥tmp¥¥log.txt");
        log.createNewFile();
        Date start = new Date();
        FileWriter fw = new FileWriter(log);
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss ");
        fw.write(sdf.format(start)+"開始");
        String seven = "なななまむぎ なななまごめ なななまたまご";
        System.out.println(seven);
        System.out.println("漢字に変換します。");
        String replace1 = seven.replace("なま","生");
        String replace2 = replace1.replace("なな","七");
        String replace3 = replace2.replace("むぎ","麦");
        String replace4 = replace3.replace("こめ","米");
        String replace5 = replace4.replace("たまご","卵");
        System.out.println(replace5);
        Date end = new Date();
        fw.write(sdf.format(end)+"終了");
        FileReader fr = new FileReader(log);
        BufferedReader br = new BufferedReader(fr);
        fw.close();
        System.out.println(br.readLine());
        System.out.print("処理が終わるまでに"+Math.abs(start.getTime()-end.getTime())+"ミリ秒かかりました");
        
    }
}