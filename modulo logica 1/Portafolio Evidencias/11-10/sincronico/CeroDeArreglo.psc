Proceso CeroDeArreglo
	Definir matriz,num,i,j,acu Como Entero;
	i <- 0; j <- 0; acu <- 0;
	Dimension matriz[4,4];
	Para i<-0 Hasta 3 Hacer
		Para j<-0 Hasta 3 Hacer
			matriz[i,j]<-azar(10);
			Escribir matriz[i,j] Sin Saltar;
			Si matriz[i,j]=0 Entonces
				acu <- acu+1;
			FinSi
		FinPara
		Escribir '';
	FinPara
	Escribir 'La cantidad de 0 que hay en su matriz es de: ',acu;
FinProceso
