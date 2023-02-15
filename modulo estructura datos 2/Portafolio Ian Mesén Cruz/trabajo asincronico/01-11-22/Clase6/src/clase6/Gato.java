/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package clase6;

import java.util.Scanner;

/**
 *
 * @author ianlo
 */
public class Gato {

    public Gato() {
    }

    public void main() {

        String matriz2[][] = new String[3][3];
        String matriz[][] = new String[3][3], jugador = "o";
        boolean ganador = false, band = false;
        Scanner scan = new Scanner(System.in);
        int eleccion = 0, fila = 0, columna = 0, cont = 0;

        //inicializo matriz
        for (int i = 0; i < 3; i++) {
            for (int j = 0; j < 3; j++) {
                matriz[i][j] = "*";

            }
        }


        do {
            cont++;
            //se muestra la matriz
            for (int i = 0; i < 3; i++) {
                for (int j = 0; j < 3; j++) {
                    //verifico si espacio ya esta ocupado
                    if (matriz[i][j] == "*") {
                        System.out.print(" ");
                    } else {
                        System.out.print(" ");
                    }

                    System.out.print("|" + matriz[i][j] + "|");
                }
                System.out.println("");
            }

            if (jugador == "x") {
                jugador = "o";
            } else {
                jugador = "x";
            }
            do {

                do {
                    //se verifica su esta fuera de rango la fila o columna
                    if (fila > 2 || fila < 0 || columna > 2 || columna < 0) {
                        System.out.println("La posicion es incorrecta ingresela de nuevo");
                    }
                    //se solicita la lina y columna
                    System.out.println("digite la fila 0-2");
                    fila = scan.nextInt();
                    System.out.println("Digite la columna 0-2 ");
                    columna = scan.nextInt();
                } while (fila > 2 || fila < 0 || columna > 2 || columna < 0);

                //valido si esta vacia
            } while (matriz[fila][columna] != "*");

            //pongo la x. o.
            matriz[fila][columna] = jugador;
            //

            //validar empate
            if (cont >= 9) {
                ganador = true;
            }

            //Se valida el gane 
            for (int i = 0; i < 3; i++) {
                for (int j = 0; j < 3; j++) {
                    //verifico filas
                    if (matriz[0][0] == jugador && matriz[0][1] == jugador && matriz[0][2] == jugador) {
                        ganador = true;
                    } else if (matriz[1][0] == jugador && matriz[1][1] == jugador && matriz[1][2] == jugador) {
                        ganador = true;
                    } else if (matriz[2][0] == jugador && matriz[2][1] == jugador && matriz[2][2] == jugador) {
                        ganador = true;
                        //verifico columnas
                    } else if (matriz[0][0] == jugador && matriz[1][0] == jugador && matriz[2][0] == jugador) {
                        ganador = true;
                    } else if (matriz[0][1] == jugador && matriz[1][1] == jugador && matriz[2][1] == jugador) {
                        ganador = true;
                    } else if (matriz[0][2] == jugador && matriz[1][2] == jugador && matriz[2][2] == jugador) {
                        ganador = true;
                        //verifico diagonal Principal
                    } else if (matriz[0][0] == jugador && matriz[1][1] == jugador && matriz[2][2] == jugador) {
                        ganador = true;
                        //verifico diagonal inversa
                    } else if (matriz[0][2] == jugador && matriz[1][1] == jugador && matriz[2][0] == jugador) {
                        ganador = true;
                    }

                }
            }

        } while (!ganador);

        //se verifica si quedaron en empate 
        if (cont >= 9) {
            System.out.println("Quedaron en empate");

        } else {
            //se verifica el ganador 
            System.out.println("Ganano el jugador " + jugador);
        }
        //Se muestra la matriz en su ultima jugada
        for (int i = 0; i < 3; i++) {
            for (int j = 0; j < 3; j++) {

                System.out.print("|" + matriz[i][j] + "|");
            }
            System.out.println("");
        }
    }

}
