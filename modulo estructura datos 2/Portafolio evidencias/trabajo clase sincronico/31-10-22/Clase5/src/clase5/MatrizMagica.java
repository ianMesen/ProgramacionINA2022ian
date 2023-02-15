/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package clase5;

import java.util.Scanner;

/**
 *
 * @author ianlo
 */
public class MatrizMagica {
    public MatrizMagica(){
    }
    public void main(){
        
        int matriz[][],tam=0,vector[],tamVector,aux=0;
        int sumaFila=0, sumaCol=0,sumaDia=0,sumaInv=0,cont=0;
      
        
        Scanner scan=new Scanner(System.in);
        
        
        System.out.println("Digite el tamano de su matriz");
        tam= scan.nextInt();
        
        matriz=new int [tam][tam];
        
        //ingreso datos de matriz
        for (int i = 0; i < tam; i++) {
            for (int j = 0; j < tam; j++) {
                System.out.println("Digite un numero para la posicion filas "+i+" columna: "+j);
                matriz[i][j]=scan.nextInt();
            }
        }
        
        
        //hago el tamano del vector
        vector=new int [((tam*2)+2)];
      
        
        
        //lleno vector con 0
        for (int i = 0; i < tam; i++) {
            vector[i]=0;
        }
        
        //proceso
         for (int i = 0; i < tam; i++) {
            sumaFila=0;
            sumaCol=0;
            for (int j = aux; j < tam; j++) {
                sumaCol+=matriz[i][j];
                sumaFila+=matriz[j][i];
                if (i==j) {
                    sumaDia+=matriz[j][i];
                }
            }
            sumaInv+=matriz[i][(tam-1)-i];
            vector[i]=sumaFila;
            vector[tam+i]=sumaCol;
        }
        vector[(tam*2)]=sumaDia;
        vector[(tam*2)+1]=sumaInv;
       
       
        //condicion para validar si es magica
        for (int i = 0; i < tam; i++) {
            for (int j = 0; j < tam; j++) {
                if (vector[i]==vector[j]) {
                   cont++;
                }else{
                    break;
                }
            }
        }
        
        
        if (cont>=tam) {
             System.out.println("La matriz es magica");
             for (int i = 0; i < tam; i++) {
                 System.out.print(vector[i]+" ");
            }
        }else{
            System.out.println("La matriz no es magica");
        }
        
    }
}
