/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Main.java to edit this template
 */
package clase1;

/**
 *
 * @author ianlo
 */
public class Clase1 {

    /**
     * @param args the command line arguments
     */
    //indentacion
    public static void main(String[] args) {
        // TODO code application logic here
        int ian=1;
        String palabra="Hola";
          int numero=0;
        short numero2=0;
        long numero3=0;                
        double numero4=7.8;
        boolean bandera=true;
        byte numeroPequeno=0;
        int tama=10;
        int conta=0;
         //instacialos = new= objero nuevo en memoria
        //vector
        int vector[];
        vector=new int[tama];
        String vectorNom[]=new String[10];
        //matriz
        int matriz[][]=new int [2][2];
        String matrizNom[][]=new String[5][5];
        //se muestra mensaje en pantalla
        System.out.println("Hola Mundo.....");
        //se llama la funcion
        caminar();
        //verifico lo que contiene el if si es verdadero se llama a otra funcion
        if (ian!=0 && numero2==0) {
            tercero();
        }
        //ciclo do while
        do{
            System.out.println("num"+conta);
            conta++;
        }while (conta<5);//cuando esto sea verdadero
        conta=0;
        //ciclo while
        while(conta<5){
            System.out.println("While"+conta);
            conta++;
        }   
        //ciclo for
        for (int i=0; i<10; i++){
            System.out.println("for "+i);
        }
        
    }
    
    
    public static void caminar() {
        System.out.println("hola cas");
    }
    
    public static void tercero() {
        System.out.println("Segundo");
        
    }
}
