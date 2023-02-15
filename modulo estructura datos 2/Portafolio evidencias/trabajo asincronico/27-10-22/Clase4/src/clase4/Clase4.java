/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Main.java to edit this template
 */
package clase4;

import java.util.Scanner;

/**
 *
 * @author ianlo
 */
public class Clase4 {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        int fallo=0,acierto=0,aux=0;
        boolean band=false;
        String num="",letra="";
        String palabra[]= new String[10];
        Scanner scan=new Scanner(System.in);
        
        
        for (int i = 0; i < 10; i++) {
            System.out.println("Digite las palabras que desea guardar");
            palabra[i]=scan.next();
      
        }
        
        
        int rand = (int)(Math.random() * 10) + 1;
        System.out.println(rand);
        num=palabra[rand];
        
      
        String juego[]= new String[num.length()];
        String busqueda[]= new String[num.length()];
        
        
        for (int i = 0; i < num.length() ; i++) {
            juego[i]=num.substring(i, i+1);
            busqueda[i]="";
            System.out.print(" "+juego[i]);
            
              
        }
        System.out.println(" ");
         System.out.print(num);
        //empieza la verificacion de letras con el ciclo do while
        do {
            aux=0;
            //ciclo para mostrar los giones bajo
            for (int i = 0; i < num.length(); i++) {
               System.out.print("_ ");
            }
            
            //Pregunto la letra
            System.out.println("");
            System.out.println("Digite la letra");
            letra=scan.next();
                
            //for de condiciones para ver si encuentra la letra
            for (int i = 0; i < num.length(); i++) {
                if (juego[i].equals(letra) ) {
                    busqueda[i]=letra;
                    acierto=acierto+1;
                }else{
                    aux=aux+1;  
                }   
            }
              System.out.println("aux"+aux);
            //if para verificar si hay fallos
            if (aux>=num.length()) {
                fallo=fallo+1;
            }
            
            //termina for el for para mostrar letra
            for (int i = 0; i < num.length(); i++) {
               System.out.print(busqueda[i]+" ");
            }
            System.out.println("");
            System.out.println("acierto"+acierto);
            System.out.println("Fallos"+fallo);
            
            if (fallo>=7) {
                band=true;  
            }
            
            if (acierto>=num.length()) {
                band=true; 
            }
            
        } while (band=true);
        
        
        
                
        if (fallo>=7) {
            System.out.println("Ahorcado");
        }else{
            System.out.println("Ganador");
        }
            
        
     
        
        
//        int rand =(int)(Math.random()*20)+1
//        (palabra.subString(1,2))
//        num=palabra[]
//         
    }
    
}



