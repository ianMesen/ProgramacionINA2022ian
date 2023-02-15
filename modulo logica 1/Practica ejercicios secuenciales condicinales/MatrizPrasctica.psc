Proceso MatrizPrasctica
	Definir matriz,cant,i,j Como Entero;
	i <- 0; j <- 0;
	Dimension matriz[3,3];
	Para i<-0 Hasta 2 Hacer
		Para j<-0 Hasta 2 Hacer
			matriz[i,j]=0;
			Escribir 'Digite el numero que desea guardar en la posicion:',i+1;
			Leer matriz[i,j];
		FinPara
	FinPara
	Para i<-0 Hasta 2 Hacer
		Para j<-0 Hasta 2 Hacer
			Escribir sin saltar " ",matriz[i,j];
		FinPara
	FinPara
FinProceso
