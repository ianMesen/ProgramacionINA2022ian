Proceso SumaMatriz
	Definir i1,j1,i,j,matrizA,matrizB,matrizC Como Entero;
	Definir nombre Como Caracter;
	Definir suma,aux,acu Como Real;
	i <- 0; j <- 0; suma <- 0; i1 <- 0; j1 <- 0; acu <- 0; aux <- 0;
	Escribir 'Cuanto es el limite de sus filas ';
	Leer i;
	Escribir 'Cuanto es el limite de sus columnas';
	Leer j;
	Dimension matrizA[i,j];
	Dimension matrizB[i,j];
	Dimension matrizC[i,j];
	Para i1<-0 Hasta i-1 Hacer
		Para j1<-0 Hasta j-1 Hacer
			matrizA[i1,j1]<-azar(1000);
			matrizB[i1,j1]<-azar(1000);
			matrizC[i1,j1]<-0;
		FinPara
	FinPara
	Para i1<-0 Hasta i-1 Hacer
		Para j1<-0 Hasta j-1 Hacer
			matrizC[i1,j1]<-matrizA[i1,j1]+matrizB[i1,j1];
		FinPara
	FinPara
	Escribir 'La suma de las dos matriz es: ';
	Para i1<-0 Hasta i-1 Hacer
		Para j1<-0 Hasta j-1 Hacer
			Escribir matrizC[i1,j1],' ', Sin Saltar;
		FinPara
		Escribir '';
	FinPara
FinProceso
