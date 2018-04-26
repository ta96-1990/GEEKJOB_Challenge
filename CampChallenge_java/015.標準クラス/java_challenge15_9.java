/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;

/**
 *
 * @author honnd
 */
public class java_challenge15_9 {
    public static void main(String[] args) throws IOException{
        File pr = new File("c:¥¥tmp¥¥pr.txt");
        pr.createNewFile();
        FileWriter fw = new FileWriter(pr);
        fw.write("自己紹介の記述されたテキストファイルを作成してください。ファイルの作成は，File クラスなどを利用することによって行ってください。");
        FileReader fr = new FileReader(pr);
        BufferedReader br = new BufferedReader(fr);
        fw.close();
        System.out.print(br.readLine());
        
    
}
