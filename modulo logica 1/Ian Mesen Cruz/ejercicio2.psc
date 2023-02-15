Proceso ejercicio2
	Definir matriz,i,j,num,tama Como Entero;
	i <- 0; j <- 0;
	// solicito tamano de la matriz 
	Escribir 'Digite el tamano de su matriz caudrada';
	Leer tama;
	Dimension matriz[tama,tama];
	// inicializo matriz en 0
	Para i<-0 Hasta tama-1 Hacer
		Para j<-0 Hasta tama-1 Hacer
			matriz[i,j]<-0;
		FinPara
	FinPara
	// utilizo azar para llenar la diagonal principal
	num <- azar(20);
	Para i<-0 Hasta tama-1 Hacer
		Para j<-0 Hasta tama-1 Hacer
			Si num==matriz[i,i] Entonces
				matriz[i,i]<-num;
			FinSi
		FinPara
		matriz[i,i]<-num;
	FinPara
	// se muestra la matriz con elementos 0 exepto la diagonal pricipal
	Escribir 'La matriz de elementos 0 exepto la diagonal principal ';
	Para i<-0 Hasta tama-1 Hacer
		Para j<-0 Hasta tama-1 Hacer
			Escribir matriz[i,j],' ' Sin Saltar;
		FinPara
		Escribir '';
	FinPara
FinProceso
