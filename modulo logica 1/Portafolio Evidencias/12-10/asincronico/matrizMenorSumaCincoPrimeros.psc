Proceso matrizMenorSumaCincoPrimeros
	Definir i,j,matriz Como Entero;
	Definir suma,aux,acu Como Entero;
	i <- 0; j <- 0; suma <- 0; acu <- 0; aux <- 0;
	Dimension matriz[15,12];
	Para i<-0 Hasta 14 Hacer
		Para j<-0 Hasta 11 Hacer
			Escribir 'digite el ',j+1,' numero de la matriz';
			Leer matriz[i,j];
		FinPara
	FinPara
	Para i<-0 Hasta 14 Hacer
		Para j<-0 Hasta 12 Hacer
			Si matriz[i,j]<aux Entonces
				aux <- matriz[i,j];
			FinSi
		FinPara
	FinPara
	Escribir 'el numero menor es: ',aux;
	Para i<-0 Hasta 4 Hacer
		Para j<-0 Hasta 11 Hacer
			suma <- suma+matriz[i,j];
		FinPara
	FinPara
	Escribir 'La suma de los primeros 5 numeros de la fila es: ',suma;
	Para i<-0 Hasta 14 Hacer
		Para j<-4 Hasta 8 Hacer
			Si matriz[i,j]<0 Entonces
				acu <- acu+1;
			FinSi
		FinPara
	FinPara
	Escribir 'La cantidad de numeros menores a 0 en la columna de 5 a 9 son: ',acu;
FinProceso
