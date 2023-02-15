Proceso matrizDiagonal
	Definir i,j,matrizA,matrizB Como Entero;
	Definir suma,aux,acu Como Entero;
	definir bandera como logico;
	i <- 0; j <- 0; suma <- 0; acu <- 0; aux <- 0;
	Dimension matrizA[12,12];
	Dimension matrizB[12,12];
	bandera = verdadero;
	Para i<-0 Hasta 11 Hacer
		Para j<-0 Hasta 11 Hacer
			matrizA[i,j]<-azar(100);
			matrizB[i,j]<-azar(100);
		FinPara
	FinPara
	Para i<-0 Hasta 11 Hacer
		Para j<-0 Hasta 11 Hacer
			Escribir matrizA[i,j],' ', Sin Saltar;
		FinPara
		Escribir '';
	FinPara
	Escribir 'AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA';
	Escribir 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa';
	Para i<-0 Hasta 11 Hacer
		Para j<-0 Hasta 11 Hacer
			Escribir matrizB[i,j],' ', Sin Saltar;
		FinPara
		Escribir '';
	FinPara
	Para i<-0 Hasta 11 Hacer
		Si matrizA[i,i]<>matrizB[i,i] Entonces
			bandera = falso;
		FinSi
	FinPara
	Si bandera Entonces
		Escribir 'Las diagonales principales de la matrizA y la matrizB son iguales';
	SiNo
		Escribir 'Las diagonales principales de la matrizA y la matrizB no son iguales';
	FinSi
FinProceso
