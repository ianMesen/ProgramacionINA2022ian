Proceso ejercicio3
	Definir matriz,i,j,aux,num,vector,tama,cont Como Entero;
	Definir band Como Logico;
	i <- 0; j <- 0; aux <- 0; cont <- 0;
	// se solicita el tamano de la matriz y se verifica si es menor o igual a 10
	Repetir
		Escribir 'Digite el tamano de su matriz magica, (debe ser cuadrada) ';
		Leer tama;
	Hasta Que tama<=10
	Dimension matriz[tama,tama];
	Dimension vector[8];
	// solicito los numeros que se van a guardar en la matriz
	Para i<-0 Hasta tama-1 Hacer
		Para j<-0 Hasta tama-1 Hacer
			Escribir 'Digite el numero que desea alamacenar ';
			Leer matriz[i,j];
		FinPara
	FinPara
	// Se inicializa el vector en 0 
	Para i<-0 Hasta 7 Hacer
		vector[i] <- 0;
	FinPara
	// Se muestra la matriz que ingreso
	Para i<-0 Hasta tama-1 Hacer
		Para j<-0 Hasta tama-1 Hacer
			Escribir matriz[i,j],' ' Sin Saltar;
		FinPara
		Escribir '';
	FinPara
	// Se verifica las filas
	Para i<-0 Hasta tama-1 Hacer
		Para j<-0 Hasta tama-1 Hacer
			vector[i] <- vector[i]+matriz[i,j];
		FinPara
		aux <- aux+1;
	FinPara
	// se verifica las columnas
	Para j<-0 Hasta tama-1 Hacer
		Para i<-0 Hasta tama-1 Hacer
			vector[i+aux]<-vector[i+aux]+matriz[j,i];
		FinPara
	FinPara
	aux <- aux*2;
	// se verifica las diagonal principal
	Para i<-0 Hasta tama-1 Hacer
		Para j<-0 Hasta tama-1 Hacer
			Si i==j Entonces
				vector[aux] <- vector[aux]+matriz[i,j];
			FinSi
		FinPara
	FinPara
	// se verifica la diagonal inversa
	Para i<-0 Hasta tama-1 Hacer
		Para j<-tama-1 Hasta 0 Hacer
			Si i==j Entonces
				vector[aux+1]<-vector[aux+1]+matriz[i,j];
			FinSi
		FinPara
	FinPara
	// verifica si es una matriz magica
	Para i<-0 Hasta 7 Hacer
		band <- falso;
		Para j<-0 Hasta 7 Hacer
			Si vector[i]==vector[j] Entonces
				band <- verdadero;
			SiNo
				i <- i+1;
			FinSi
		FinPara
		Si band Entonces
			cont <- cont+1;
		FinSi
		Escribir cont;
	FinPara
	Si band Entonces
		Escribir 'Es una matriz magica';
		Para i<-0 Hasta 7 Hacer
			Escribir vector[i],' ', Sin Saltar;
		FinPara
	SiNo
		Escribir 'No es una matriz magica';
	FinSi
FinProceso
