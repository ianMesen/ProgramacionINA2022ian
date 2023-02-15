/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package clase5;

import static java.lang.System.out;
import java.util.Scanner;
import javax.xml.transform.OutputKeys;



/**
 *
 * @author ianlo
 */
public class Diagonales {
    public Diagonales(){
    }
    public void main(){
        int matriz[][];
        int tam=0;
        boolean band=true;
        
        Scanner scan=new Scanner(System.in);
       
        System.out.println("Digite el tamano de la matriz");
        tam= scan.nextInt();
        
        //instanciacion
        matriz=new int [tam][tam];
        
        
        //entrada datos
        for (int i = 0; i < tam; i++) {
            for (int j = 0; j < tam; j++) {
                System.out.println("Digite un numero para la posicion filas "+i+" columna: "+j);
                matriz[i][j]=scan.nextInt();
            }
        }
        
        
        //proceso
        for (int i = 0; i < tam; i++) {
            for (int j = 0; j < tam; j++) {
                
                //diagonal
                if (i==j) {
                    if (matriz[i][j]==0) {
                        band=false;
                        break;
                    }
                    
                //otro elemento que no es diagonal
                }else{
                    if (matriz[i][j]!=0 ) {
                        band=false; 
                        break;
                    }
                }   
            }
            if (band==false) {
                break;
            }
        }
        if (band) {
            System.out.println("La matriz es diagonal");
        }else{
            System.out.println("LA matriz no es diagonal");
        }
        
    }
}
