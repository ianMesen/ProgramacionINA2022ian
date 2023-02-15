/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Main.java to edit this template
 */
package clase2;

import java.util.Scanner;

/**
 *
 * @author ianlo
 */
public class Clase2 {
    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        int num1=0, num2=0,eleccion=0;
        double result=0;
        //Para solicitar dato
        Scanner scan=new Scanner(System.in);
        //solicitar datos
        System.out.println("Digite el primer numero");
        //la variable donde se va a guardar
        num1=scan.nextInt();
        
        System.out.println("Digite el numero 2");
        num2=scan.nextInt();
        
        do {
            System.out.println("Digite que operacion desea realizar");
            System.out.println("1. suma 2.resta. 3.Multiplicacion 4.division");
            eleccion=scan.nextInt();
            
        } while (eleccion>4 || eleccion<0);
        switch(eleccion){
            case 1:
                result=num1+num2;
                break;
            case 2:
                 result=num1-num2;
                break;
            case 3:
                 result=num1*num2;
                break;
            case 4:
                 result=num1/num2;
                break;
                        
        } 
        System.out.println("El resultado es: "+result);
    }
    
}
