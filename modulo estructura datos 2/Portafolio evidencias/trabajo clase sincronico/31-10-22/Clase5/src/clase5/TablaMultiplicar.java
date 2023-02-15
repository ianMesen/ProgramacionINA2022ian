/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package clase5;

/**
 *
 * @author ianlo
 */
public class TablaMultiplicar {
    public TablaMultiplicar(){
    }
    public void main(){
        
        int matriz[][] = new int [10][10],cont=0;
       
        
        //rellono matriz
        for (int i = 0; i < 10; i++) {
            matriz[0][i]= cont;
            matriz[i][0]= cont;
            cont++;
        }
       
        //proceso suma datos matriz
        for (int i = 1; i < 10; i++) {
            for (int j = 1; j < 10; j++) {
                matriz[i][j]= matriz[i][0]*matriz[0][j];
            }
        }
        

        //muestro matriz
        for (int i = 0; i < 10; i++) {
            for (int j = 0; j < 10; j++) {
                System.out.print(" "+matriz[i][j]);
            }
            System.out.println("");
        }
       

        
    }
}
